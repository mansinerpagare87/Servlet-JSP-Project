package Repository;
import java.sql.SQLException;
import java.util.*;
import Config.DBConfig;
import Model.AlumniModel;
import Model.DepartmentModel;
import Model.OrganizerModel;
public class AlumniRegisterRepositoryImpl extends DBConfig implements AlumniRegisterRepository {
	List<Object[]> list=new ArrayList<Object[]>();
	private int AlumniId=0;
	private int getAlumniId() {
		try {
			stmt=con.prepareStatement("select max(Al_Id) from alumni");
			rs=stmt.executeQuery();
			if(rs.next()) {
				AlumniId=rs.getInt(1);
			}
			return ++AlumniId;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return 0;
		}
	}
	@Override
	public boolean isAddAlumni(AlumniModel amodel,String Dep_Name[]) {
		try {
			int Al_Id=this.getAlumniId();
			stmt=con.prepareStatement("insert into alumni values(?,?,?,?,?)");
			stmt.setInt(1,Al_Id);
			stmt.setString(2,amodel.getAl_Name());
			stmt.setString(3,amodel.getAl_Email());
			stmt.setString(4,amodel.getAl_Contact());
			stmt.setString(5,amodel.getPass_year());
			int value=stmt.executeUpdate();
			if(value > 0) {
					stmt=con.prepareStatement("insert into alumnidepartmentjoin values(?,?)");
					stmt.setInt(1,Al_Id);
					for(int i=0;i<Dep_Name.length;i++) {
						stmt.setInt(2,Integer.parseInt(Dep_Name[i]));
						value=stmt.executeUpdate();
				}
				return value>0?true:false;
			}else {
				return false;
			}
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return false;
		}
		
	}
	public int isPresentAlumni(AlumniModel amodel) {
		try {
			stmt=con.prepareStatement("select *from alumni where Al_Email=? and Al_Contact=?");
			stmt.setString(1,amodel.getAl_Email());
			stmt.setString(2,amodel.getAl_Contact());
			rs=stmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1);
			}else {
				return -1;
			}
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return 0;
		}
	}
	public AlumniModel getAlumni(int userid) {
		try {
			stmt=con.prepareStatement("select *from alumni where Al_Id=?");
			stmt.setInt(1, userid);
			rs=stmt.executeQuery();
			if(rs.next()) {
				AlumniModel amodel=new AlumniModel();
				amodel.setAl_Name(rs.getString(1));
				amodel.setAl_Email(rs.getString(2));
				amodel.setAl_Contact(rs.getString(3));
				amodel.setPass_year(rs.getString(4));
				return amodel;
			}else {
				return null;
			}
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return null;
		}
	}
	public List<Object[]> getAllalumniDepartment(){
		try {
			stmt=con.prepareStatement("select a.Al_Name,d.Dept_Name,a.Al_Id,a.Al_Email,a.Pass_Year,a.Al_Contact from alumnidepartmentjoin adj inner join Alumni a on adj.Al_Id=a.Al_Id  inner join department d on adj.Dept_Id=d.Dept_Id");
			rs=stmt.executeQuery();
			while(rs.next()) {
				Object obj[]=new Object[]{rs.getString(1),rs.getString(2),rs.getInt(3),rs.getString(4),rs.getString(5),rs.getString(6)};
				list.add(obj);
			}
			return list.size()>0?list:null;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return null;
		}
	}
	public boolean isDeleteAlumni(int Al_Id) {
		try {
			stmt=con.prepareStatement("delete from alumni where Al_Id=?");
			stmt.setInt(1, Al_Id);
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return false;
		}
	}
	public boolean isUpdateAlumni(AlumniModel amodel) {
		try {
			
			stmt=con.prepareStatement("update from alumni set");
			
			return true;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return false;
		}
	}
	/*public List<Object[]> getAllalumniDepartment1() {
        List<Object[]> list = new ArrayList<>();
        try {
            String query = "select a.Al_Name, d.Dept_Name, a.Al_Id from alumnidepartmentjoin adj "
                         + "inner join Alumni a on adj.Al_Id = a.Al_Id "
                         + "inner join department d on adj.Dept_Id = d.Dept_Id";
            stmt = con.prepareStatement(query);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Object[] obj = { rs.getString("Al_Name"), rs.getString("Dept_Name"), rs.getInt("Al_Id") };
                list.add(obj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }*/

    @Override
    public List<Object[]> searchAlumniByName(String Al_Name) {
        List<Object[]> list = new ArrayList<>();
        try {
            String sql = "select a.Al_Name, d.Dept_Name, a.Al_Id from alumnidepartmentjoin adj "
                       + "inner join Alumni a on adj.Al_Id = a.Al_Id "
                       + "inner join department d on adj.Dept_Id = d.Dept_Id "
                       + "where a.Al_Name like ?";
            stmt = con.prepareStatement(sql);
            stmt.setString(1, "%" + Al_Name + "%");
            rs = stmt.executeQuery();
            while (rs.next()) {
                Object[] obj = { rs.getString("Al_Name"), rs.getString("Dept_Name"), rs.getInt("Al_Id") };
                list.add(obj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}


