package cn.yml.blog.repository;

import cn.yml.blog.domain.ArticleContent;

/**
 * @author Liuym
 * @date 2018/12/15 0015
 */
public interface ArticleContentRepository extends JpaPartitionRepository<ArticleContent, Long> {
    ArticleContent findByArticleId(Long articleId);
}
