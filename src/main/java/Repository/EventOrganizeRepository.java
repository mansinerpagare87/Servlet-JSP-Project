package Repository;
import java.util.List;
import Model.EventOrganizeModel;
public interface EventOrganizeRepository {
	public boolean isEventOrganize(EventOrganizeModel eomodel,int Eid);
	public List<Object[]> getOrganizedEvent();
	
}
