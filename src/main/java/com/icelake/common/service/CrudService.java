package com.icelake.common.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.Page;
import com.icelake.common.persistence.CrudDAO;
import com.icelake.common.persistence.DataEntity;

/**
 * <br>Title: CrudService
 * <br>Description: Service支持类
 * <br>Author:李一鸣(liyiming.neu@neusoft.com)
 * <br>Date:2017年11月12日
 */
@Transactional(readOnly = true)
public abstract class CrudService<D extends CrudDAO<T>, T extends DataEntity<T>> extends BaseService {

    /**
     * 持久层对象
     */
    @Autowired
    protected D dao;

    /**
     * 获取单条数据
     * @param id
     * @return
     */
    public T get(String id) {
        return dao.selectByPrimaryKey(id);
    }

    /**
     * 查询列表数据
     * @param entity
     * @return
     */
    public List<T> findList(T entity) {
        return dao.selectByCustomConditions(entity);
    }

    /**
     * 查询分页数据
     * @param page 分页对象
     * @param entity
     * @return
     */
    public Page<T> findPage(Page<T> page, T entity) {
        //TODO 分页查询
        //        entity.setPage(page);
        //        page.setList(dao.findList(entity));
        return page;
    }

    /**
     * 保存数据（插入或更新）
     * @param entity
     */
    @Transactional(readOnly = false)
    public void save(T entity) {
        //TODO 自动判断插入或修改
        //        if (entity.getIsNewRecord()) {
        //            entity.preInsert();
        //            dao.insert(entity);
        //        } else {
        //            entity.preUpdate();
        //            dao.update(entity);
        //        }
    }

    /**
     * 删除数据
     * @param entity
     */
    @Transactional(readOnly = false)
    public void delete(T entity) {
        dao.deleteByCustomConditions(entity);
    }
}
