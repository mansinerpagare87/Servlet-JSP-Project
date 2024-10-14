package Repository;
import java.util.List;
import Model.EventModel;
import Model.RegistrationModel;
public interface RegistrationRepository {
	public boolean isRegistered(RegistrationModel rmodel,int EOrg_Id);
	public List<EventModel> getAllOrganizedEvent();
	
}
