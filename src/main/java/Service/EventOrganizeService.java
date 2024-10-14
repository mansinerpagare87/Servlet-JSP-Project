package Service;
import java.util.List;

import Model.EventOrganizeModel;
public interface EventOrganizeService {
	public boolean isEventOrganize(EventOrganizeModel eomodel,int Eid);
	public List<Object[]> getOrganizedEvent();
	
	
}
