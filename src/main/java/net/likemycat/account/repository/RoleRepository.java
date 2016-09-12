/**
 * 
 */
package net.likemycat.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import net.likemycat.account.model.Role;

/**
 * @author oleksandr.volkovskyi
 *
 */
public interface RoleRepository extends JpaRepository<Role, Long>{
	
}
