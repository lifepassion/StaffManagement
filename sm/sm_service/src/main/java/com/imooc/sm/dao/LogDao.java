package com.imooc.sm.dao;

import com.imooc.sm.entity.Log;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * (Log)表数据库访问层
 *
 * @author life
 * @since 2020-05-17 20:15:54
 */
@Repository("logDao")
public interface LogDao {
    /**
     * 通过日志类型作为筛选条件查询
     *
     * @param type 日志类型
     * @return 日志列表
     */
    List<Log> selectByType(String type);

    /**
     * 新增数据
     *
     * @param log 日历对象
     */
    void insert(Log log);

}