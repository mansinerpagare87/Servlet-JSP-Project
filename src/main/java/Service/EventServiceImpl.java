package Service;
import java.util.List;

import Model.EventModel;
import Repository.EventRepository;
import Repository.EventRepositoryImpl;
public class EventServiceImpl implements EventService{
	EventRepository er=new EventRepositoryImpl();
	@Override
	public boolean isAddNewEvent(EventModel emodel,String Dep_Name[]) {
		return er.isAddEvent(emodel,Dep_Name);
	}
	@Override
	public List<Object[]> getAllEventsDepartments() {
		return er.getAllEventsDepartments();
	}
	@Override
	public boolean isUpdateEvent(EventModel emodel) {
		return er.isUpdateEvent(emodel);
	}
	public List<EventModel> getAllEvents(){
		return er.getAllEvents();
	}
	@Override
	public List<Object[]> searchEventByName(String EName) {
		return er.searchEventByName(EName);
	}
	@Override
	public boolean isDeleteEvent(int Eid) {
		return er.isDeleteEvent(Eid);
	}
	
}
