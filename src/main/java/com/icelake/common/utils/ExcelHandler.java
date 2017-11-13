package com.icelake.common.utils;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/**
 * <br>Title: ExcelHandler
 * <br>Description: Excel操作类
 * <br>Author:李一鸣(li-yiming@neusoft.com)
 * <br>Date:2013-6-9
 */
public class ExcelHandler {

    private BufferedInputStream in;

    private POIFSFileSystem fs;

    private HSSFWorkbook wb;

    private int ignoreRows = 0;

    /**
     * <br>Description: 构造方法1
     * <br>Author:李一鸣(li-yiming@neusoft.com)
     * <br>Date:2013-6-9
     * @param _file 指定Excel文件
     * @throws FileNotFoundException
     * @throws IOException
     */
    public ExcelHandler(String _file) throws IllegalArgumentException, FileNotFoundException, IOException {
        in = new BufferedInputStream(new FileInputStream(_file));
        fs = new POIFSFileSystem(in);
        wb = new HSSFWorkbook(fs);
    }

    /**
     * <br>Description: 构造方法2
     * <br>Author:李一鸣(li-yiming@neusoft.com)
     * <br>Date:2013-6-9
     * @param _file 指定Excel文件
     * @param _ignoreRows 读取时忽略的行数（标题和表头所占的行数）
     * @throws FileNotFoundException
     * @throws IOException
     */
    public ExcelHandler(String _file, int _ignoreRows) throws IllegalArgumentException,
            FileNotFoundException, IOException {
        in = new BufferedInputStream(new FileInputStream(_file));
        fs = new POIFSFileSystem(in);
        wb = new HSSFWorkbook(fs);
        ignoreRows = _ignoreRows;
    }

    /**
     * <br>Description: 获取Excel中Sheet的数量
     * <br>Author:李一鸣(li-yiming@neusoft.com)
     * <br>Date:2013-6-9
     * @return
     */
    public int getNumberOfSheets() {
        return wb.getNumberOfSheets();
    }

    /**
     * <br>Description: 获取指定sheet中的数据行数
     * <br>Author:李一鸣(li-yiming@neusoft.com)
     * <br>Date:2013-6-9
     * @param sheetIndex
     * @return
     */
    public int getRowCountOfSheet(int _sheetNum) {
        int _sheetIndex = _sheetNum - 1;
        return wb.getSheetAt(_sheetIndex).getLastRowNum() - ignoreRows + 1;
    }

    /**
     * <br>Description: 获取Excel中所有数据的行数
     * <br>Author:李一鸣(li-yiming@neusoft.com)
     * <br>Date:2013-6-14
     * @return
     */
    public int getRowCountOfAllSheets() {
        int totalRowCount = 0;
        for (int i = 0; i < this.getNumberOfSheets(); i++) {
            totalRowCount += this.getRowCountOfSheet(i + 1);
        }
        return totalRowCount;
    }

    /**
     * <br>Description: 关闭数据流
     * <br>Author:李一鸣(li-yiming@neusoft.com)
     * <br>Date:2013-6-9
     * @throws IOException
     */
    public void close() throws IOException {
        in.close();
    }

    /**
     * <br>Description: 获取sheet中的数据
     * <br>Author:李一鸣(li-yiming@neusoft.com)
     * <br>Date:2013-6-9
     * @param _sheetNum 读取第几个sheet页的数据
     * @param _startRow 从第几行开始读取
     * @param _rowsCount 一共读取几行
     * @return
     * @throws IOException
     */
    @SuppressWarnings("deprecation")
    public String[][] getDataOfSheet(int _sheetNum, int _startRow, int _rowsCount) throws IOException {

        int _sheetIndex = _sheetNum - 1;
        int _startRowIndex = _startRow + ignoreRows - 1;

        List<String[]> result = new ArrayList<String[]>();
        int rowSize = 0;
        HSSFSheet st = wb.getSheetAt(_sheetIndex);
        HSSFCell cell = null;
        int rowsCount = _startRowIndex + _rowsCount < st.getLastRowNum() ? _startRowIndex + _rowsCount : st
                .getLastRowNum() + 1;
        for (int rowIndex = _startRowIndex; rowIndex < rowsCount; rowIndex++) {
            HSSFRow row = st.getRow(rowIndex);
            if (row == null) {
                continue;
            }

            int tempRowSize = row.getLastCellNum() + 1;
            if (tempRowSize > rowSize) {
                rowSize = tempRowSize;
            }

            String[] values = new String[rowSize];
            Arrays.fill(values, "");
            boolean hasValue = false;
            for (short columnIndex = 0; columnIndex < row.getLastCellNum(); columnIndex++) {
                String value = "";
                cell = row.getCell(columnIndex);
                if (cell != null) {

                    // 注意：一定要设成这个，否则可能会出现乱码
                    //cell.setEncoding(HSSFCell.ENCODING_UTF_16);

                    switch (cell.getCellType()) {
                    case HSSFCell.CELL_TYPE_STRING:
                        value = cell.getStringCellValue();
                        break;
                    case HSSFCell.CELL_TYPE_NUMERIC:
                        if (HSSFDateUtil.isCellDateFormatted(cell)) {
                            Date date = cell.getDateCellValue();
                            if (date != null) {
                                value = new SimpleDateFormat("yyyy-MM-dd").format(date);
                            } else {
                                value = "";
                            }
                        } else {
                            value = new DecimalFormat("0").format(cell.getNumericCellValue());
                        }
                        break;
                    case HSSFCell.CELL_TYPE_FORMULA:
                        //导入时如果为公式生成的数据则无值
                        if (!cell.getStringCellValue().equals("")) {
                            value = cell.getStringCellValue();
                        } else {
                            value = cell.getNumericCellValue() + "";
                        }
                        break;
                    case HSSFCell.CELL_TYPE_BLANK:
                        break;
                    case HSSFCell.CELL_TYPE_ERROR:
                        value = "";
                        break;
                    case HSSFCell.CELL_TYPE_BOOLEAN:
                        value = (cell.getBooleanCellValue() == true ? "Y" : "N");
                        break;
                    default:
                        value = "";
                    }
                }
                //如果首列即没有值，直接跳到下一列（按需选择）
                //                if (columnIndex == 0 && value.trim().equals("")) {
                //                    break;
                //                }
                values[columnIndex] = StringUtil.rightTrim(value);
                hasValue = true;
            }
            if (hasValue) {
                result.add(values);
            }
        }
        this.close();
        String[][] returnArray = new String[result.size()][rowSize];
        for (int i = 0; i < returnArray.length; i++) {
            returnArray[i] = (String[]) result.get(i);
        }
        return returnArray;
    }
}
