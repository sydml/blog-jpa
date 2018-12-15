package cn.yml.blog.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author Liuym
 * @date 2018/12/15 0015
 */
@Entity
@Table(name="sys_view")
public class SysView implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String ip;

    @Column(name="create_by")
    private LocalDateTime createBy;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip == null ? null : ip.trim();
    }

    public LocalDateTime getCreateBy() {
        return createBy;
    }

    public void setCreateBy(LocalDateTime createBy) {
        this.createBy = createBy;
    }
}
