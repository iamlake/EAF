package com.icelake.common.persistence;

import java.util.List;

import com.icelake.modules.sys.techcomp.codelist.entity.Codelist;

/**
 * <br>Title: CrudDAO
 * <br>Description: CRUD支持类
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年11月12日
 */
public interface CrudDAO<T> extends BaseDAO {
    /**
     * 获取单条数据
     * @param id
     * @return
     */
    public T selectByPrimaryKey(String id);

    /**
     * 查询数据列表，如果需要分页，请设置分页对象，如：entity.setPage(new Page<T>());
     * @param entity
     * @return
     */
    public List<T> selectByCustomConditions(T entity);

    /**
     * 插入数据
     * @param entity
     * @see public int insertSelective(T entity)
     * @return
     */
    @Deprecated
    public int insert(T entity);

    /**
     * 插入数据
     * @param entity
     * @return
     */
    public int insertSelective(T entity);

    /**
     * 更新数据
     * @param entity
     * @see public int updateByPrimaryKeySelective(T entity)
     * @return
     */
    @Deprecated
    public int updateByPrimaryKey(Codelist record);

    /**
     * 更新数据
     * @param entity
     * @return
     */
    public int updateByPrimaryKeySelective(T entity);

    /**
     * 删除数据（一般为逻辑删除，更新activeFlag字段为-1）
     * @param id
     * @see public int delete(T entity)
     * @return
     */
    @Deprecated
    public int deleteByPrimaryKey(String id);

    /**
     * 删除数据（一般为逻辑删除，更新activeFlag字段为-1）
     * @param entity
     * @return
     */
    public int deleteByCustomConditions(T entity);

}
