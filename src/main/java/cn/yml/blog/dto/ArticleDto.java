package cn.yml.blog.dto;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.time.LocalDateTime;

/**
 * 文章信息类
 * 说明：关联了tbl_article_info/tbl_article_content/tbl_article_category/tbl_category_info/
 * tbl_article_picture五张表的基础字段
 *
 * @author:wmyskxz
 * @create:2018-06-19-下午 14:13
 */
public class ArticleDto {

    // tbl_article_info基础字段
    private Long id;
    private String title;
    private String summary;
    private Boolean isTop;
    private Integer traffic;
    private LocalDateTime createBy;

    // tbl_article_content基础字段
    private Long articleContentId;
    private String content;

    // tbl_category_info基础字段
    private Long categoryId;
    private String categoryName;
    private Integer categoryNumber;

    // tbl_article_category基础字段
    private Long articleCategoryId;

    // tbl_article_picture基础字段
    private Long articlePictureId;
    private String pictureUrl;

    public LocalDateTime getCreateBy() {
        return createBy;
    }

    public void setCreateBy(LocalDateTime createBy) {
        this.createBy = createBy;
    }

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public Boolean getTop() {
        return isTop;
    }

    public void setTop(Boolean top) {
        isTop = top;
    }

    public Integer getTraffic() {
        return traffic;
    }

    public void setTraffic(Integer traffic) {
        this.traffic = traffic;
    }

    public Long getArticleContentId() {
        return articleContentId;
    }

    public void setArticleContentId(Long articleContentId) {
        this.articleContentId = articleContentId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public Integer getCategoryNumber() {
        return categoryNumber;
    }

    public void setCategoryNumber(Integer categoryNumber) {
        this.categoryNumber = categoryNumber;
    }

    public Long getArticlePictureId() {
        return articlePictureId;
    }

    public void setArticlePictureId(Long articlePictureId) {
        this.articlePictureId = articlePictureId;
    }

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl;
    }

    public Long getArticleCategoryId() {
        return articleCategoryId;
    }

    public void setArticleCategoryId(Long articleCategoryId) {
        this.articleCategoryId = articleCategoryId;
    }
}
