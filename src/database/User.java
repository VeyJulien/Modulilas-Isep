package database;

public class User {
	private String mail;
	private String firstName;
	private String lastName;
	private int status;
	
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public String displayStatus()
	{
		if(status == 1)
		{
			return "DEBASE";
		}
		else
		{
			return "UPGRADE";
		}
	}
	
	public String displayGradeName()
	{
		if(status == 1)
		{
			return "Admin";
		}
		else
		{
			return "Professeur";
		}
	}

}
