package database;

public class ViewFieldType {
	private int viewFieldTypeId;
	private int viewId;
	private int fieldTypeId;
	private int isActive;
	
	public int getViewFieldTypeId() {
		return viewFieldTypeId;
	}
	public void setViewFieldTypeId(int viewFieldTypeId) {
		this.viewFieldTypeId = viewFieldTypeId;
	}
	public int getViewId() {
		return viewId;
	}
	public void setViewId(int viewId) {
		this.viewId = viewId;
	}
	public int getFieldTypeId() {
		return fieldTypeId;
	}
	public void setFieldTypeId(int fieldTypeId) {
		this.fieldTypeId = fieldTypeId;
	}
	public int getIsActive() {
		return isActive;
	}
	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}
	
	public String active(){
		int isActive = this.isActive;
		String button = "";
		if (isActive == 1){
			button = "<td>Visible</td><td style=\"text-align: right;\"><label class=\"switch_vue\" style=\"margin-top: 6px;\"><input type=\"checkbox\" checked><span class=\"slider round\"></span></label></td>";
		}else{
			button = "<td>Non Visible</td><td style=\"text-align: right;\"><label class=\"switch_vue\" style=\"margin-top: 6px;\"><input type=\"checkbox\"><span class=\"slider round\"></span></label></td>";
		}
		return button;
	}
}
