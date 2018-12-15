package cn.yml.blog.repository;

import cn.yml.blog.domain.Comment;
import org.springframework.data.jpa.repository.Query;

/**
 * @author Liuym
 * @date 2018/12/15 0015
 */
public interface CommentRepository extends JpaPartitionRepository<Comment, Long> {

    @Query(value = "select max(id) from tbl_comment", nativeQuery = true)
    Long findLastId();
}
