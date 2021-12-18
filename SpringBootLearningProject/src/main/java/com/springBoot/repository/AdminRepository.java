package com.springBoot.repository;

import com.springBoot.model.Admin;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminRepository extends CrudRepository<Admin,Integer> {
    public Admin findByEmail(String email);
}
