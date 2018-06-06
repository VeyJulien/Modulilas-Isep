package database;

public class Template {
	int viewId;
	String viewName;
	int IsActive;

	public int getViewId() {
		return viewId;
	}

	public void setViewId(int viewId) {
		this.viewId = viewId;
	}

	public String getViewName() {
		return viewName;
	}

	public void setViewName(String viewName) {
		this.viewName = viewName;
	}

	public int getIsActive() {
		return IsActive;
	}

	public void setIsActive(int isActive) {
		IsActive = isActive;
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
