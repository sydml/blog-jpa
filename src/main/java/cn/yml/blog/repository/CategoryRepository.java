package cn.yml.blog.repository;

import cn.yml.blog.domain.Category;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;


/**
 * @author Liuym
 * @date 2018/12/15 0015
 */
public interface CategoryRepository extends JpaPartitionRepository<Category, Long> {

    @Transactional(timeout = 20)
    @Modifying
    @Query(value = "update category c set c.number = c.number + :number where c.id = :id", nativeQuery = true)
    void updateNumberById(@Param("id") Long id, @Param("number") Integer number);

}
