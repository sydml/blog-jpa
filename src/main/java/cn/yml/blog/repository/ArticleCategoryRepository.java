package cn.yml.blog.repository;

import cn.yml.blog.domain.ArticleCategory;

import java.util.List;

/**
 * @author Liuym
 * @date 2018/12/15 0015
 */
public interface ArticleCategoryRepository extends JpaPartitionRepository<ArticleCategory, Long> {
    /**
     * 一片文章只能有一个分类，通过文章外键应该只能找到一篇文章分类，多个应该报错，此处希望用注解解决多个抛出异常提醒
     * @param articleId
     * @return
     */
    ArticleCategory findByArticleId(Long articleId);

    List<ArticleCategory> findByCategoryId(Long categoryId);

    void deleteByCategoryId(Long categoryId);
}
