package Service;
import java.util.List;
import Model.EventModel;
import Model.RegistrationModel;
import Repository.RegistrationRepository;
import Repository.RegistrationRepositoryImpl;
public class RegistrationServiceImpl implements RegistrationService{
	RegistrationRepository rr=new RegistrationRepositoryImpl();
	@Override
	public boolean isRegistered(RegistrationModel rmodel,int EOrg_Id) {
		return rr.isRegistered(rmodel,EOrg_Id);
	}
	@Override
	public List<EventModel> getAllOrganizedEvent() {
		return rr.getAllOrganizedEvent();
	}
	
}
