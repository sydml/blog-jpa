package cn.yml.blog.service;

import cn.yml.blog.domain.SysLog;
import cn.yml.blog.domain.SysView;

import java.util.List;

/**
 * 日志/访问统计等系统相关Service
 */
public interface SysService {
    void addLog(SysLog sysLog);

    void addView(SysView sysView);

    Long getLogCount();

    Long getViewCount();

    List<SysLog> listAllLog();

    List<SysView> listAllView();
}
