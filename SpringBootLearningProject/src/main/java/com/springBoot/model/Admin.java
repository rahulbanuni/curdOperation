package com.springBoot.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

@Entity
public class Admin
{
   @Id
   @GeneratedValue(strategy = GenerationType.AUTO)
   private int id;
   private String firstName;
   private String lastName;
   private String email;
   private String password;

}
