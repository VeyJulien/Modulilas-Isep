package database;

import java.util.ArrayList;
import java.util.List;
import java.util.*;

public class ModuleHelper {
	private List<Module> modules;

	public List<Module> getModules() {
		return modules;
	}

	public void setModules(List<Module> modules) {
		this.modules = modules;
	}
	
	
	public List<Module> specificModules(String ens, int year){
		List<Module> spModules = new ArrayList<>();
		
		for (Module var : modules) {
			if (var.getEnseignement().equals(ens) & var.getAnnee() == year) {
				spModules.add(var);
			}
		}
		return spModules;
	}
	
	public List<String> listEns(){
		List<String> enss = new ArrayList<>();
		
		for (Module var : modules) {
			if (!enss.contains(var.getEnseignement())) {
				enss.add(var.getEnseignement());
			}
		}
		return enss;
	}
	
	public List<Integer> listAns(){
		List<Integer> annees = new ArrayList<>();
		
		for (Module var : modules) {
			if (!annees.contains(var.getAnnee())) {
				annees.add(var.getAnnee());
			}
		}
		annees.sort(new Comparator<Integer>() {
			@Override
			public int compare(Integer o1, Integer o2) {
				return o1.compareTo(o2);
			}});
		return annees;
	}
	
}
