package database;

import java.util.ArrayList;
import java.util.List;

public class FieldtypeHelper {
	
	private List<Fieldtype> fieldtypes;

	public List<Fieldtype> getFieldtypes() {
		return fieldtypes;
	}

	public void setFieldtypes(List<Fieldtype> fieldtypes) {
		this.fieldtypes = fieldtypes;
	}
	
	
	public List<Fieldtype> specificFieldtype(int step){
		List<Fieldtype> spFieldtypes = new ArrayList<>();
		
		for (Fieldtype var : fieldtypes) {
			if (var.getFormStep() == step ) {
				spFieldtypes.add(var);
			}
		}
		return spFieldtypes;
	}
}
