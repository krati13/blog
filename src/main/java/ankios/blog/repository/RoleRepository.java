package ankios.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import ankios.blog.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

    Role findByName(String name);
}
