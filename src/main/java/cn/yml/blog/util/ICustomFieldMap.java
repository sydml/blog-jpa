package cn.yml.blog.util;

import java.util.Map;

/**
 * 结合orika 转换实体外键关联对象字段
 *
 * @author Liuym
 * @date 2018/12/15 0015
 */
public interface ICustomFieldMap {

    /* 获得转换关系 */
    Map<String, String> getFieldMap();
}
