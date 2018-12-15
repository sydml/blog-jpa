package cn.yml.blog.common.domain;

import cn.yml.blog.listener.AuditingListener;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.MappedSuperclass;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author Liuym
 * @date 2018/12/15 0015
 */
@MappedSuperclass
@EntityListeners(AuditingListener.class)
public class AbstractDomain implements Serializable {

    @Column(name="create_by")
    private LocalDateTime createBy;

    @Column(name="modified_by")
    private LocalDateTime modifiedBy;

    public LocalDateTime getCreateBy() {
        return createBy;
    }

    public void setCreateBy(LocalDateTime createBy) {
        this.createBy = createBy;
    }

    public LocalDateTime getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(LocalDateTime modifiedBy) {
        this.modifiedBy = modifiedBy;
    }
}
