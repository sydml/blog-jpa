package cn.yml.blog.service;

import cn.yml.blog.domain.Category;
import cn.yml.blog.dto.ArticleCategoryDto;
import cn.yml.blog.domain.ArticleCategory;

import java.util.List;

/**
 * 分类Service
 */
public interface CategoryService {
    void addCategory(Category category);

    void deleteCategoryById(Long id);

    void updateCategory(Category category);

    void updateArticleCategory(ArticleCategory articleCategory);

    Category getOneById(Long id);

    List<Category> listAllCategory();

    ArticleCategoryDto getCategoryByArticleId(Long id);
}
