package cn.yml.blog.domain;

import cn.yml.blog.common.domain.AbstractDomain;

import javax.persistence.*;

@Entity
@Table(name="article_picture")
public class ArticlePicture extends AbstractDomain{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name="article_Id")
    private Long articleId;

    @Column(name="picture_url")
    private String pictureUrl;

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

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl == null ? null : pictureUrl.trim();
    }
}