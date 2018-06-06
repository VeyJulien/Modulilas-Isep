package database;

import java.util.ArrayList;
import java.util.List;

public class ViewFieldTypeHelper {
	private List<ViewFieldType> viewfieldtypes;

	public List<ViewFieldType> getViewfieldtypes() {
		return viewfieldtypes;
	}

	public void setViewfieldtypes(List<ViewFieldType> viewfieldtypes) {
		this.viewfieldtypes = viewfieldtypes;
	}
	
	public List<ViewFieldType> specificViewFieldtype(int viewid){
		List<ViewFieldType> spViewFieldtypes = new ArrayList<>();
		
		for (ViewFieldType var : viewfieldtypes) {
			if (var.getViewId() == viewid) {
				spViewFieldtypes.add(var);
			}
		}
		return spViewFieldtypes;
	}
}
