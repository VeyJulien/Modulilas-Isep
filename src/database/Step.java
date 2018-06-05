package database;

public class Step {
	private String titre;
	private int formStep;
	
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public int getFormStep() {
		return formStep;
	}
	public void setFormStep(int formStep) {
		this.formStep = formStep;
	}
	
	public String button(int step){
		int formStep = this.getFormStep();
		String button = "";
		if ( formStep == step ){
			button = "<div style=\"display:flex; width:100%;\"><button type=\"button\" onclick=\"press_previous_step_" + formStep + "()\" class=\"button_1 button_previous\" style=\"margin-right: 46.5%;\"><span style=\"transition:0.5s; font-size:15px; padding-right: 20px;\">Précédent</span></button><input class=\"button_1 button_next button_end\" value=\"Terminer\" type=\"submit\"></div>";
		}else if( formStep == 1 ){
			button = "<button type=\"button\" onclick=\"press_next_step_1()\" class=\"button_1 button_next\"><span style=\"transition:0.5s; font-size:15px; padding-left: 20px;\">Suivant</span></button>";
		}else{
			button = "<div style=\"display:flex; width:100%;\"><button type=\"button\" onclick=\"press_previous_step_" + formStep + "()\" class=\"button_1 button_previous\" style=\"margin-right: 46.5%;\"><span style=\"transition:0.5s; font-size:15px; padding-right: 20px;\">Précédent</span></button><button type=\"button\" class=\"button_1 button_next\" onclick=\"press_next_step_" + formStep + "()\"><span style=\"transition:0.5s; font-size:15px; padding-left: 20px;\">Suivant</span></button></div>";
		}
		return button;
	}
	
	public String loadbar(int step){
		int formStep = this.getFormStep();
		String loadbar = "";
		if ( formStep == step ){
			loadbar = "<span id=\"l_r_"+ (formStep-1) + "\" class=\"loadbar_round unactive_round\"></span><span id=\"l_n_" + (formStep-1) + "\" class=\"loadbar_number unactive_text\">" + formStep + "</span><div class=\"loadbar_line unactive_line\"><div id=\"l_p_" + (formStep-1) + "\" class=\"load_progress\"></div></div><span class=\"loadbar_round unactive_round\"></span><span class=\"loadbar_number unactive_text\">" + (formStep+1) + "</span>";
		}else if (formStep == 1){
			loadbar = "<span class=\"loadbar_round play_round_loadbar\"></span><span class=\"loadbar_number\">1</span><div class=\"loadbar_line unactive_line\"><div class=\"load_progress play_line_loadbar\"></div></div>";
		}else{
			loadbar = "<span id=\"l_r_"+ (formStep-1) + "\" class=\"loadbar_round unactive_round\"></span><span id=\"l_n_" + (formStep-1) + "\" class=\"loadbar_number unactive_text\">" + formStep + "</span><div class=\"loadbar_line unactive_line\"><div id=\"l_p_" + (formStep-1) + "\" class=\"load_progress\"></div></div>";
		}
		return loadbar;
	}
	
	public String text(){
		String titre = this.getTitre();
		int formStep = this.getFormStep();
		String text = "";
		if ( formStep == 1 ){
			text = "<span class=\"step_name unactive_text play_text_loadbar\">" + titre + "</span>";
		}else{
			text = "<span id=\"l_t_" + (formStep-1) + "\" class=\"step_name unactive_text\">" + titre +"</span>";
		}
		return text;
	}
}
