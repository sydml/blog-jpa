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

    @Column(name="create_time")
    private LocalDateTime createTime;

    @Column(name="modify_time")
    private LocalDateTime modifyTime;

    public LocalDateTime getCreateTime() {
        return createTime;
    }

    public void setCreateTime(LocalDateTime createTime) {
        this.createTime = createTime;
    }

    public LocalDateTime getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(LocalDateTime modifyTime) {
        this.modifyTime = modifyTime;
    }
}
