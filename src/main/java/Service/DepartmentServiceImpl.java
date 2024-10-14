package Service;
import java.util.List;
import Model.DepartmentModel;
import Repository.DepartmentRepository;
import Repository.DepartmentRepositoryImpl;
public class DepartmentServiceImpl implements DepartmentService{
	DepartmentRepository dr=new DepartmentRepositoryImpl();
	@Override
	public boolean isAddDepartment(DepartmentModel dmodel) {
		return dr.isAddDepartment(dmodel);
	}
	@Override
	public List<DepartmentModel> getAllDepartments() {
		return dr.getAllDepartments();
	}
	@Override
	public boolean isDeleteDepartmentById(int Dept_Id) {
		return dr.isDeleteDepartmentById(Dept_Id);
	}
	@Override
	public boolean isUpdateDepartment(DepartmentModel dmodel) {
		return dr.isUpdateDepartment(dmodel);
	}
	@Override
	public List<DepartmentModel> searchByName(String name) {
		return dr.searchByName(name);
	}
	
	
}