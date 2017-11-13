package com.icelake.common.persistence;

import java.util.List;

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
    public T get(String id);

    /**
     * 获取单条数据
     * @param entity
     * @return
     */
    public T get(T entity);

    /**
     * 查询数据列表，如果需要分页，请设置分页对象，如：entity.setPage(new Page<T>());
     * @param entity
     * @return
     */
    public List<T> findList(T entity);

    /**
     * 查询所有数据列表
     * @param entity
     * @return
     */
    public List<T> findAllList(T entity);

    /**
     * 查询所有数据列表
     * @see public List<T> findAllList(T entity)
     * @return
     */
    @Deprecated
    public List<T> findAllList();

    /**
     * 插入数据
     * @param entity
     * @return
     */
    public int insert(T entity);

    /**
     * 更新数据
     * @param entity
     * @return
     */
    public int update(T entity);

    /**
     * 删除数据（一般为逻辑删除，更新activeFlag字段为-1）
     * @param id
     * @see public int delete(T entity)
     * @return
     */
    @Deprecated
    public int delete(String id);

    /**
     * 删除数据（一般为逻辑删除，更新activeFlag字段为-1）
     * @param entity
     * @return
     */
    public int delete(T entity);

}
