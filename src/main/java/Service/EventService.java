package Service;
import java.util.List;
import Model.EventModel;
public interface EventService {
	public boolean isAddNewEvent(EventModel emodel,String Dep_Name[]);
	public List<Object[]> getAllEventsDepartments();
	public boolean isUpdateEvent(EventModel emodel);
	public List<EventModel> getAllEvents();
	public List<Object[]> searchEventByName(String EName);
	public boolean isDeleteEvent(int Eid);
	
}
