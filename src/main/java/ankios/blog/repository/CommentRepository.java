package ankios.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import ankios.blog.model.Comment;

public interface CommentRepository extends JpaRepository<Comment, Long> {
}
