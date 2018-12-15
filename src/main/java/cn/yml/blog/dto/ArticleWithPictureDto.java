package cn.yml.blog.dto;

/**
 * 带题图信息的文章基础信息分装类
 *
 * @author:wmyskxz
 * @create:2018-06-19-下午 14:53
 */
public class ArticleWithPictureDto {
    // tbl_article_info基础字段
    private Long id;
    private String title;
    private String summary;
    private Boolean isTop;
    private Integer traffic;

    // tbl_article_picture基础字段
    private Long articlePictureId;
    private String pictureUrl;

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
}
