package Service;
import java.util.List;
import Model.OrganizerModel;
public interface OrganizerService {
	public boolean isAddOrganizer(OrganizerModel omodel);
	public int isPresentOrganizer(OrganizerModel omodel);
	public OrganizerModel getOrganizer(int userid);
	public List<OrganizerModel> getAllOrganizers();
	
}
