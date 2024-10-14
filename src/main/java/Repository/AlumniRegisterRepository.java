package Repository;
import java.util.List;

import Model.AlumniModel;
public interface AlumniRegisterRepository {
	public boolean isAddAlumni(AlumniModel amodel,String Dep_Name[]);
	public int isPresentAlumni(AlumniModel amodel);
	public List<Object[]> getAllalumniDepartment();
	public boolean isDeleteAlumni(int Al_Id);
	public boolean isUpdateAlumni(AlumniModel amodel);
	public List<Object[]> searchAlumniByName(String Al_Name);
	public AlumniModel getAlumni(int userid);
}
