package cn.yml.blog.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;
@Entity
@Table(name="tbl_article_comment")
public class ArticleComment implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name="article_Id")
    private Long articleId;

    @Column(name="comment_Id")
    private Long commentId;

    @Column(name="create_by")
    private LocalDateTime createBy;

    @Column(name="is_effective")
    private Boolean isEffective=true;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getArticleId() {
        return articleId;
    }

    public void setArticleId(Long articleId) {
        this.articleId = articleId;
    }

    public Long getCommentId() {
        return commentId;
    }

    public void setCommentId(Long commentId) {
        this.commentId = commentId;
    }

    public LocalDateTime getCreateBy() {
        return createBy;
    }

    public void setCreateBy(LocalDateTime createBy) {
        this.createBy = createBy;
    }

    public Boolean getIsEffective() {
        return isEffective;
    }

    public void setIsEffective(Boolean isEffective) {
        this.isEffective = isEffective;
    }
}