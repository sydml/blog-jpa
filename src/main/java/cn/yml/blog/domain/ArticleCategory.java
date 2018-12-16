package cn.yml.blog.domain;

import cn.yml.blog.common.domain.AbstractDomain;

import javax.persistence.*;

/**
 * @author Liuym
 * @date 2018/12/15 0015
 */
@Entity
@Table(name="article_category_rel")
public class ArticleCategory extends AbstractDomain {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name="category_Id")
    private Long categoryId;

    @Column(name="article_Id")
    private Long articleId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
    }

    public Long getArticleId() {
        return articleId;
    }

    public void setArticleId(Long articleId) {
        this.articleId = articleId;
    }

}
