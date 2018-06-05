package database;

public class Template {
	
	String Name;
	int IsActive;

	public int getIsActive() {
		return IsActive;
	}

	public void setIsActive(int isActive) {
		IsActive = isActive;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}
	
	public String DisplayActive()
	{
		if(this.IsActive == 1)
		{
			return "activate_template";
		}
		else
		{
			return "";
		}
	}
	
	public String DisplayIcon()
	{
		if(this.IsActive == 1)
		{
			return "#f45765";
		}
		else
		{
			return "black";
		}
	}

}
