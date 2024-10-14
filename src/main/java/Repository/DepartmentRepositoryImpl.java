package Repository;

import java.util.*;

import Config.DBConfig;
import Model.DepartmentModel;

public class DepartmentRepositoryImpl extends DBConfig implements DepartmentRepository{
	List<DepartmentModel> list=new ArrayList<DepartmentModel>();
	private int DepartmentId=0;
	public int getDepartmenttId() {
		try {
			stmt=con.prepareStatement("select max(Dept_id) from department");
			rs=stmt.executeQuery();
			if(rs.next()) {
				DepartmentId=rs.getInt(1);
			}
			return ++DepartmentId;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return 0;
		}
	}
	@Override
	public boolean isAddDepartment(DepartmentModel dmodel) {
		try {
			int Dept_Id=this.getDepartmenttId();
			stmt=con.prepareStatement("insert into department values(?,?)");
			stmt.setInt(1, Dept_Id);
			stmt.setString(2,dmodel.getDept_Name());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return false;
		}
	}
	public List<DepartmentModel> getAllDepartments(){
		try {
			stmt=con.prepareStatement("select *from department order by Dept_Id");
			rs=stmt.executeQuery();
			while(rs.next()) {
				DepartmentModel dmodel=new DepartmentModel();
				dmodel.setDept_Id(rs.getInt(1));
				dmodel.setDept_Name(rs.getString(2));
				list.add(dmodel);
			}
			return list.size()>0?list:null;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return null;
		}
	}
	@Override
	public boolean isDeleteDepartmentById(int Dept_Id) {
		try {
			stmt=con.prepareStatement("delete from department where Dept_Id=?");
			stmt.setInt(1, Dept_Id);
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return false;
		}
	}
	@Override
	public boolean isUpdateDepartment(DepartmentModel dmodel) {
		try {
			stmt=con.prepareStatement("update department set Dept_Name=? where Dept_Id=?");
			stmt.setString(1,dmodel.getDept_Name());
			stmt.setInt(2,dmodel.getDept_Id());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return false;
		}
	}
	
	 public List<DepartmentModel> searchByName(String name) {
	        try {
	            stmt = con.prepareStatement("select * from department where dept_name like ?");
	            stmt.setString(1, "%" + name + "%");
	            rs = stmt.executeQuery();
	            list.clear();            
	            while (rs.next()) {
	                DepartmentModel model = new DepartmentModel();
	                model.setDept_Id(rs.getInt("dept_id")); 
	                model.setDept_Name(rs.getString("dept_name"));    
	                list.add(model);
	            }
	            return list.size() > 0 ? list : null;
	        } catch (Exception ex) {
	            System.out.println("Exception is: " + ex);
	            return null;
	        }
	    }
}
