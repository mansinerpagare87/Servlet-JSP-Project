package Service;
import java.util.List;

import Model.AlumniModel;
import Repository.AlumniRegisterRepository;
import Repository.AlumniRegisterRepositoryImpl;
public class AlumniRegisterServiceImpl implements AlumniRegisterService{
	AlumniRegisterRepository arr=new AlumniRegisterRepositoryImpl();
	@Override
	public boolean isAddAlumni(AlumniModel amodel,String Dep_Name[]) {
		return arr.isAddAlumni(amodel,Dep_Name);
	}
	@Override
	public int isPresentAlumni(AlumniModel amodel) {
		return arr.isPresentAlumni(amodel);
	}
	@Override
	public List<Object[]> getAllalumniDepartment() {
		return arr.getAllalumniDepartment();
	}
	@Override
	public boolean isDeleteAlumni(int Al_Id) {
		return arr.isDeleteAlumni(Al_Id);
	}
	@Override
	public boolean isUpdateAlumni(AlumniModel amodel) {
		return arr.isUpdateAlumni(amodel);
	}
	@Override
	public List<Object[]> searchAlumniByName(String Al_Name) {
		return arr.searchAlumniByName(Al_Name);
	}
	@Override
	public AlumniModel getAlumni(int userid) {
		return arr.getAlumni(userid);
	}
	
}
