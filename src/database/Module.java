package database;

public class Module {
	
	public String getEnseignement() {
		return Enseignement;
	}
	public void setEnseignement(String enseignement) {
		Enseignement = enseignement;
	}
	public int getAnnée() {
		return Année;
	}
	public void setAnnée(int année) {
		Année = année;
	}
	private String Titre;
	private String Code;
	private String Enseignement;
	private int Année;
	
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
