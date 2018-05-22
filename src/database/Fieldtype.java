package database;

public class Fieldtype {
	
	private int fieldTypeId;
	private String title;
	private String description;
	private int format;
	private int formStep;
	
	public int getFieldTypeId() {
		return fieldTypeId;
	}
	public void setFieldTypeId(int fieldTypeId) {
		this.fieldTypeId = fieldTypeId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getFormat() {
		return format;
	}
	public void setFormat(int format) {
		this.format = format;
	}
	public int getFormStep() {
		return formStep;
	}
	public void setFormStep(int formStep) {
		this.formStep = formStep;
	}
	
	public String activateField(int format){
		String activeButton = "";
		if ( format == 1 ){
			activeButton = "<i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-align-justify icon_selection_type  icon_selection_type_active\"></i><i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-underline icon_selection_type\"></i><br><i type=\"button\" onclick=\"switch_button(this)\" class=\"far fa-check-square icon_selection_type\"></i><i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-plus-circle icon_selection_type\"></i>";
		}else if( format == 2 ){
			activeButton = "<i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-align-justify icon_selection_type\"></i><i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-underline icon_selection_type icon_selection_type_active\"></i><br><i type=\"button\" onclick=\"switch_button(this)\" class=\"far fa-check-square icon_selection_type\"></i><i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-plus-circle icon_selection_type\"></i>";
		}else if( format == 3){
			activeButton = "<i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-align-justify icon_selection_type\"></i><i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-underline icon_selection_type\"></i><br><i type=\"button\" onclick=\"switch_button(this)\" class=\"far fa-check-square icon_selection_type icon_selection_type_active\"></i><i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-plus-circle icon_selection_type\"></i>";
		}else if( format == 4 ){
			activeButton = "<i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-align-justify icon_selection_type\"></i><i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-underline icon_selection_type\"></i><br><i type=\"button\" onclick=\"switch_button(this)\" class=\"far fa-check-square icon_selection_type\"></i><i type=\"button\" onclick=\"switch_button(this)\" class=\"fas fa-plus-circle icon_selection_type icon_selection_type_active\"></i>";
		}
		return activeButton;
	}
}
