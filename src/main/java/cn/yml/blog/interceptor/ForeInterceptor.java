package cn.yml.blog.interceptor;

import cn.yml.blog.domain.SysLog;
import cn.yml.blog.domain.SysView;
import cn.yml.blog.service.SysService;
import cn.yml.blog.util.BrowserUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;
import java.time.LocalDateTime;

/**
 * 前台拦截器
 * 说明：用于对访问数量进行统计
 *
 * @author:Liuym
 * @create:2018-06-20-下午 20:12
 */
public class ForeInterceptor implements HandlerInterceptor {

    @Autowired
    private SysService sysService;

    private static ThreadLocal<SysLog> sysLogThreadLocal = new ThreadLocal<>();

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        // 访问者的IP
        String ip = request.getRemoteAddr();
        // 访问地址
        String url = request.getRequestURL().toString();
        //得到用户的浏览器名
        String userBrowser = BrowserUtil.getOsAndBrowserInfo(request);

        // 给SysLog增加字段
        SysLog sysLog = new SysLog();
        SysView sysView = new SysView();
        sysLog.setIp(StringUtils.isEmpty(ip) ? "0.0.0.0" : ip);
        sysLog.setOperateBy(StringUtils.isEmpty(userBrowser) ? "获取浏览器名失败" : userBrowser);
        sysLog.setOperateUrl(StringUtils.isEmpty(url) ? "获取URL失败" : url);
        sysLogThreadLocal.set(sysLog);
        // 增加访问量
        sysView.setIp(StringUtils.isEmpty(ip) ? "0.0.0.0" : ip);
        sysView.setCreateTime(LocalDateTime.now());
        sysService.addView(sysView);

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

        SysLog sysLog = sysLogThreadLocal.get();
        if (handler instanceof HandlerMethod) {
            HandlerMethod handlerMethod = (HandlerMethod) handler;
            Method method = handlerMethod.getMethod();
            // 保存日志信息
            sysLog.setRemark(method.getName());
            sysLog.setCreateTime(LocalDateTime.now());
            sysService.addLog(sysLog);
        } else {
            String uri = request.getRequestURI();
            sysLog.setRemark(uri);
            sysLog.setCreateTime(LocalDateTime.now());
            sysService.addLog(sysLog);
        }
        sysLogThreadLocal.remove();

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
