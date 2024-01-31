package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="feedback_table")
public class Feedback implements Serializable
{
   /**
   * 
   */
  private static final long serialVersionUID = 1L;
@Id  // primary key
   @GeneratedValue(strategy = GenerationType.IDENTITY)  // auto_increment
   private int id;
   @Column(length = 30,nullable = false)
   private String name;
   @Column(length = 300,nullable = false)
   private String message;
   @Column(length = 30,nullable = false)
   private String rating;
   @Column(length = 30,nullable = false)
   private String email;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
public String getRating() {
	return rating;
}
public void setRating(String rating) {
	this.rating = rating;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public static long getSerialversionuid() {
	return serialVersionUID;
}
   

}