package database;

public class Module {
	private String Titre;
	private String Code;
	private String Enseignement;
	private int Annee;
	
	
	public String getEnseignement() {
		return Enseignement;
	}
	public void setEnseignement(String enseignement) {
		Enseignement = enseignement;
	}
	public int getAnnee() {
		return Annee;
	}
	public void setAnnee(int annee) {
		Annee = annee;
	}
	
	public String getTitre() {
		return Titre;
	}
	public void setTitre(String titre) {
		this.Titre = titre;
	}
	public String getCode() {
		return Code;
	}
	public void setCode(String code) {
		this.Code = code;
	}
}
