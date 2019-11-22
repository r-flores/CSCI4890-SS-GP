package datamodel;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @since J2SE-1.8
 CREATE TABLE solutionsData (
 id INT NOT NULL AUTO_INCREMENT,
 userName VARCHAR(30) NOT NULL,
 date DATE NOT NULL,
 DC INT NOT NULL,
 AC INT NOT NULL,
 PRIMARY KEY (id));
 */

@Entity
@Table(name = "solutionsData")

public class solutions {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	
	@Column(userName = "userName")
	private String userName;
	
	@Column(date = "date")
	private String date;
	
	@Column(DC = "DC")
	private Integer DC;
	
	@Column(AC = "AC")
	private Integer AC;
	
	public solutions() {
	}
	
	public solutions(Integer id, String userName, String date, Integer DC, Integer AC) {
		this.id = id;
		this.userName = userName;
		this.date = date;
		this.DC = DC;
		this.AC = AC;
	}
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
	
	public Integer getDC() {
		return DC;
	}
	
	public void setDC(Integer DC) {
		this.DC = DC;
	}
	
	public Integer getAC() {
		return AC;
	}
	
	public void setAC(Integer AC) {
		this.AC = AC;
	}
}
	

