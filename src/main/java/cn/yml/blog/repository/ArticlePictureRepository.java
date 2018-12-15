package cn.yml.blog.repository;

import cn.yml.blog.domain.ArticlePicture;

/**
 * @author Liuym
 * @date 2018/12/15 0015
 */
public interface ArticlePictureRepository extends JpaPartitionRepository<ArticlePicture, Long> {

    /**
     * 目前一篇文章只有一张文章题图
     * @param articleId
     * @return
     */
    ArticlePicture findByArticleId(Long articleId);
}
