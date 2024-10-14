package Service;
import java.util.List;
import Model.OrganizerModel;
import Repository.OrganizerRepository;
import Repository.OrganizerRepositoryImpl;
public class OrganizerServiceImpl implements OrganizerService{
	OrganizerRepository or=new OrganizerRepositoryImpl();

	@Override
	public boolean isAddOrganizer(OrganizerModel omodel) {
		return or.isAddOrganizer(omodel);
	}

	@Override
	public int isPresentOrganizer(OrganizerModel omodel) {
		return or.isPresentOrganizer(omodel);
	}

	@Override
	public OrganizerModel getOrganizer(int userid) {
		return or.getOrganizer(userid);
	}

	@Override
	public List<OrganizerModel> getAllOrganizers() {
		return or.getAllOrganizers();
	}
	
}
