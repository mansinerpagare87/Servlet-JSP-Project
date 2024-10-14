package Service;
import java.util.List;
import Model.EventOrganizeModel;
import Repository.EventOrganizeRepository;
import Repository.EventOrganizeRepositoryImpl;
public class EventOrganizeServiceImpl implements EventOrganizeService{
	EventOrganizeRepository eor=new EventOrganizeRepositoryImpl();
	@Override
	public boolean isEventOrganize(EventOrganizeModel eomodel,int Eid) {
		return eor.isEventOrganize(eomodel,Eid);
	}
	@Override
	public List<Object[]> getOrganizedEvent() {
		return eor.getOrganizedEvent();
	}
	
}
