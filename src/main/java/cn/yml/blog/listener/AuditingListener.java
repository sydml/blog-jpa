package cn.yml.blog.listener;

import cn.yml.blog.common.domain.AbstractDomain;
import org.springframework.context.annotation.Configuration;

import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import java.time.LocalDateTime;

/**
 * @author Liuym
 * @date 2018/12/15 0015
 */
@Configuration
public class AuditingListener {
    @PrePersist
    public void touchForCreate(Object target) {

        if (target instanceof AbstractDomain) {
            AbstractDomain model = (AbstractDomain) target;
            LocalDateTime now = LocalDateTime.now();
            model.setCreateBy(now);
            model.setModifiedBy(now);
        }
    }

    @PreUpdate
    public void touchForUpdate(Object target) {
        if (target instanceof AbstractDomain) {
            AbstractDomain model = (AbstractDomain) target;
            model.setModifiedBy(LocalDateTime.now());
        }
    }
}
