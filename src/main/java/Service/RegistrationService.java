package Service;

import java.util.List;

import Model.EventModel;
import Model.RegistrationModel;

public interface RegistrationService {
	public boolean isRegistered(RegistrationModel rmodel,int EOrg_Id);
	public List<EventModel> getAllOrganizedEvent();
	
}
