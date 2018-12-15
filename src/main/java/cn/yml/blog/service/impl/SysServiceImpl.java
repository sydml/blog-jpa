package cn.yml.blog.service.impl;

import cn.yml.blog.domain.SysLog;
import cn.yml.blog.domain.SysView;
import cn.yml.blog.repository.SysLogRepository;
import cn.yml.blog.repository.SysViewRepository;
import cn.yml.blog.service.SysService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * SysService实现类
 *
 * @author:wmyskxz
 * @create:2018-06-20-下午 20:17
 */
@Component
public class SysServiceImpl implements SysService {

    @Autowired
    private SysLogRepository sysLogRepository;

    @Autowired
    private SysViewRepository sysViewRepository;

    /**
     * 增加一条日志信息
     *
     * @param sysLog
     */
    @Override
    public void addLog(SysLog sysLog) {
        sysLogRepository.save(sysLog);
    }

    /**
     * 增加一条访问量
     *
     * @param sysView
     */
    @Override
    public void addView(SysView sysView) {
        sysViewRepository.save(sysView);
    }

    /**
     * 获取日志的总数量
     *
     * @return 日志的总数量
     */
    @Override
    public Long getLogCount() {
        return sysLogRepository.count();
    }

    /**
     * 返回当前网站的访问量
     *
     * @return
     */
    @Override
    public Long getViewCount() {
        return sysViewRepository.count();
    }

    /**
     * 返回所有的日志信息
     *
     * @return
     */
    @Override
    public List<SysLog> listAllLog() {
        return sysLogRepository.findAll();
    }

    /**
     * 返回所有的访问信息
     *
     * @return
     */
    @Override
    public List<SysView> listAllView() {
        return sysViewRepository.findAll();
    }
}
