package Repository;

import java.util.List;

import Model.DepartmentModel;
public interface DepartmentRepository {
	public boolean isAddDepartment(DepartmentModel dmodel);
	public List<DepartmentModel> getAllDepartments();
	public boolean isDeleteDepartmentById(int Dept_Id);
	public boolean isUpdateDepartment(DepartmentModel dmodel);
	public List<DepartmentModel> searchByName(String name);
}