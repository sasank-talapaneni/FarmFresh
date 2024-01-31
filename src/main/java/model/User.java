package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="userreg_table")
public class User implements Serializable
{
   /**
   * 
   */
  private static final long serialVersionUID = 1L;
@Id  // primary key
   @GeneratedValue(strategy = GenerationType.IDENTITY)  // auto_increment
   private int id;
   @Column(length = 30,nullable = false)
   private String firstname;
   @Column(length = 10,nullable = false)
   private String gender;
   @Column(length = 30,nullable = false)
   private String city;
   @Column(length = 30,nullable = false,unique = true)
   private String email;
   @Column(length = 30,nullable = false)
   private String password;
   @Column(length = 10,nullable = false,unique = true)
   private String contactno;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return firstname;
}
public void setName(String firstname) {
	this.firstname = firstname;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getContactno() {
	return contactno;
}
public void setContactno(String contactno) {
	this.contactno = contactno;
}
}