package com.cars;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

@PersistenceCapable
public class ToStoreLogin {
@Persistent
private String email;
@Persistent
private String date;
@Persistent
private String issue;
@PrimaryKey
@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
private Long id;

public String getemail() {
return email;
}
public void setemail(String email) {
this.email = email;
}
public String getdate() {
return date;
}
public void setdate(String date) {
this.date = date;
}
public String getissue() {
return issue;
}
public void setissue(String issue) {
this.issue = issue;
}
}