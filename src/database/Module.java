package database;

public class Module {
	
	public String getEnseignement() {
		return Enseignement;
	}
	public void setEnseignement(String enseignement) {
		Enseignement = enseignement;
	}
	public int getAnn�e() {
		return Ann�e;
	}
	public void setAnn�e(int ann�e) {
		Ann�e = ann�e;
	}
	private String Titre;
	private String Code;
	private String Enseignement;
	private int Ann�e;
	
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
