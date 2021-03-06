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
	
	public String activateField(int format, int number){
		String activeButton = "";
		if ( format == 1 ){
			activeButton = "<i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"fas fa-align-justify icon_selection_type  icon_selection_type_active\"></i><i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"fas fa-underline icon_selection_type\"></i><br><i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"far fa-check-square icon_selection_type\"></i><i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"fas fa-plus-circle icon_selection_type\"></i><input id=\"format" + number + "\" type=\"hidden\" value=\"" + format + "\" name=\"format" + number + "\" >";
		}else if( format == 2 ){
			activeButton = "<i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"fas fa-align-justify icon_selection_type\"></i><i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"fas fa-underline icon_selection_type icon_selection_type_active\"></i><br><i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"far fa-check-square icon_selection_type\"></i><i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"fas fa-plus-circle icon_selection_type\"></i><input id=\"format" + number + "\" type=\"hidden\" value=\"" + format + "\" name=\"format" + number + "\" >";
		}else if( format == 3){
			activeButton = "<i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"fas fa-align-justify icon_selection_type\"></i><i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"fas fa-underline icon_selection_type\"></i><br><i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"far fa-check-square icon_selection_type icon_selection_type_active\"></i><i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"fas fa-plus-circle icon_selection_type\"></i><input id=\"format" + number + "\" type=\"hidden\" value=\"" + format + "\" name=\"format" + number + "\" >";
		}else if( format == 4 ){
			activeButton = "<i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"fas fa-align-justify icon_selection_type\"></i><i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"fas fa-underline icon_selection_type\"></i><br><i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"far fa-check-square icon_selection_type\"></i><i type=\"button\" onclick=\"switch_button(this, " + number + ")\" class=\"fas fa-plus-circle icon_selection_type icon_selection_type_active\"></i><input id=\"format" + number + "\" type=\"hidden\" value=\"" + format + "\" name=\"format" + number + "\" >";
		}
		return activeButton;
	}
	
	public String fieldType(int format, int i){
		
		String description = this.getDescription();
		String title = this.getTitle();
		String fieldType = "";
		if ( format == 1 ){
			fieldType = "<div style=\"margin-bottom: 16px;\"><textarea required form = \"formulairedelamort\" name = \"" + title + "\" class=\"textarea_module\" style=\"height:170px;\" placeholder=\"" + description + "\"></textarea></div>";
		}else if( format == 2 ){
			fieldType = "<div style=\"display: flex; margin-bottom: 16px;\"><input required name = \"" + title + "\" id=\"field_" + i + "\" autocomplete=\"off\" onchange=\"check_field_" + i + "()\" class=\"input_create_module\" placeholder=\"" + description + "\"><i id=\"check_" + i + "\" class=\"fas fa-check-circle check_module\"></i><span class=\"ok_popup\" id=\"ok_" + i + "\">ok</span></div>";
		}else if( format == 3){
			fieldType = "<div style=\"display: flex; margin-bottom: 16px;\"><label class=\"container_check\" style=\"margin-right: 30px;\">Oui<input name = \"" + title + "\" onchange=\"check_box_field()\" id=\"Mycheck_1\" type=\"checkbox\" style=\"width:0px;\" checked><span class=\"checkmark check_yesno\"></span></label><label class=\"container_check\">Non<input onchange=\"check_box_field_2()\" id=\"Mycheck_2\" type=\"checkbox\" style=\"width:0px;\"><span class=\"checkmark check_yesno\"></span></label></div>";
		}else if( format == 4 ){
			fieldType = "<div style=\"display: flex; margin-bottom: 16px;\"><i type=\"button\" onclick=\"add_field_" + i + "()\" class=\"fas fa-plus-circle button_add\"></i><i type=\"button\" onclick=\"remove_field_" + i + "()\" class=\"fas fa-minus-circle button_add\"></i><input required name = \"" + title + "\" id=\"field_" + i + "\" autocomplete=\"off\" onchange=\"check_field_" + i + "\"()\" class=\"input_create_module\" value=\"0\" style=\"margin-left: 15px;\"><i id=\"check_" + i + "\" class=\"fas fa-check-circle check_module\"></i><span class=\"ok_popup\" id=\"ok_" + i + "\">ok</span></div>";
		}
		return fieldType;
	}
	
	
	public String fieldTypeForEdit(int format, int i, String value){
		System.out.println("texte = " + value);
		String description = this.getDescription();
		String title = this.getTitle();
		String fieldType = "";
		if ( format == 1 ){
			fieldType = "<div style=\"margin-bottom: 16px;\"><textarea required form = \"editModule\" name = \"" + title + "\" class=\"textarea_module\" style=\"height:170px;\" placeholder=\"" + description + "\">" + value + "</textarea></div>";
		}else if( format == 2 ){
			fieldType = "<div style=\"display: flex; margin-bottom: 16px;\"><input required name = \"" + title + "\" id=\"field_" + i + "\" autocomplete=\"off\" onchange=\"check_field_" + i + "()\" class=\"input_create_module\" placeholder=\"" + description + "\" value=\"" + value + "\"><i id=\"check_" + i + "\" class=\"fas fa-check-circle check_module\"></i><span class=\"ok_popup\" id=\"ok_" + i + "\">ok</span></div>";
		}else if( format == 3)
		{
			if(value == "on")
			{
				fieldType = "<div style=\"display: flex; margin-bottom: 16px;\"><label class=\"container_check\" style=\"margin-right: 30px;\">Oui<input name = \"" + title + "\" onchange=\"check_box_field()\" id=\"Mycheck_1\" type=\"checkbox\" style=\"width:0px;\" checked><span class=\"checkmark check_yesno\"></span></label><label class=\"container_check\">Non<input onchange=\"check_box_field_2()\" id=\"Mycheck_2\" type=\"checkbox\" style=\"width:0px;\"><span class=\"checkmark check_yesno\"></span></label></div>";
			}
			else
			{
				fieldType = "<div style=\"display: flex; margin-bottom: 16px;\"><label class=\"container_check\" style=\"margin-right: 30px;\">Oui<input name = \"" + title + "\" onchange=\"check_box_field()\" id=\"Mycheck_1\" type=\"checkbox\" style=\"width:0px;\"><span class=\"checkmark check_yesno\"></span></label><label class=\"container_check\">Non<input onchange=\"check_box_field_2()\" id=\"Mycheck_2\" type=\"checkbox\" style=\"width:0px;\" checked><span class=\"checkmark check_yesno\"></span></label></div>";
			}
			
		}else if( format == 4 ){
			fieldType = "<div style=\"display: flex; margin-bottom: 16px;\"><i type=\"button\" onclick=\"add_field_" + i + "()\" class=\"fas fa-plus-circle button_add\"></i><i type=\"button\" onclick=\"remove_field_" + i + "()\" class=\"fas fa-minus-circle button_add\"></i><input required value = \"" + value + "\" name = \"" + title + "\" id=\"field_" + i + "\" autocomplete=\"off\" onchange=\"check_field_" + i + "\"()\" class=\"input_create_module\" value=\"0\" style=\"margin-left: 15px;\"><i id=\"check_" + i + "\" class=\"fas fa-check-circle check_module\"></i><span class=\"ok_popup\" id=\"ok_" + i + "\">ok</span></div>";
		}
		return fieldType;
	}
}
