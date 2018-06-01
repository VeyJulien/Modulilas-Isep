package database;

import java.util.ArrayList;
import java.util.List;

public class StepHelper {
	private List<Step> steps;
	
	public List<Step> getSteps() {
		return steps;
	}

	public void setSteps(List<Step> steps) {
		this.steps = steps;
	}
	
	public List<Step> specificStep(int step){
		List<Step> spStep = new ArrayList<>();
		
		for (Step var : steps) {
			if (var.getFormStep() == step ) {
				spStep.add(var);
			}
		}
		return spStep;
	}
}
