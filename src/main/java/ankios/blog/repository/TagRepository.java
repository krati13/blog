package ankios.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import ankios.blog.model.Tag;

public interface TagRepository extends JpaRepository<Tag, Long> {

    Tag findByNameIgnoreCase(String name);
}
