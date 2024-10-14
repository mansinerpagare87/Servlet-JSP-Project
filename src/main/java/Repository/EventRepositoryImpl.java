package Repository;
import java.sql.SQLException;
import java.util.*;
import Config.DBConfig;
import Model.EventModel;
public class EventRepositoryImpl extends DBConfig implements EventRepository{
	List<Object[]> list=new ArrayList<Object[]>();
	List<EventModel> list1=new ArrayList<>();
	private int EventId=0;
	public int getEventId() {
		try {
			stmt=con.prepareStatement("select max(Eid) from Event");
			rs=stmt.executeQuery();
			if(rs.next()) {
				EventId=rs.getInt(1);
			}
			return ++EventId;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return 0;
		}
	}
	@Override
	public boolean isAddEvent(EventModel emodel,String Dep_Name[]) {
		try {
			int Eid=this.getEventId();
			stmt=con.prepareStatement("insert into event values(?,?)");
			stmt.setInt(1,Eid);
			stmt.setString(2,emodel.getEName());
			int value=stmt.executeUpdate();
			if(value > 0) {
				for(int i=0;i<Dep_Name.length;i++) {
					stmt=con.prepareStatement("insert into eventdepartmentjoin values(?,?)");
					stmt.setInt(1,Eid);
					stmt.setInt(2,Integer.parseInt(Dep_Name[i]));
					value=stmt.executeUpdate();
				}
				return value>0?true:false;
			}else {
				return false;
			}
		}catch (Exception ex) {
			return false;
		}
	}
	
	public List<Object[]> getAllEventsDepartments(){
		try {
			stmt=con.prepareStatement("select e.ename,d.dept_name,e.eid from eventdepartmentjoin edj inner join event e on edj.eid=e.eid inner join department d on edj.dept_id=d.dept_id order by Eid");
			rs=stmt.executeQuery();
			while(rs.next()) {
				Object obj[]=new Object[]{rs.getString(1),rs.getString(2),rs.getInt(3)};
				list.add(obj);
			}
			return list.size()>0?list:null;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return null;
		}
	}
	public boolean isUpdateEvent(EventModel emodel) {
		try {
			stmt=con.prepareStatement("update event set EName=? where Eid=?");
			stmt.setString(1,emodel.getEName());
			stmt.setInt(2,emodel.getEid());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return false;
		}
	}
	
	public List<EventModel> getAllEvents() {
		try {
			stmt=con.prepareStatement("select *from event order by Eid");
			rs=stmt.executeQuery();
			while(rs.next()) {
				EventModel emodel=new EventModel();
				emodel.setEid(rs.getInt(1));
				emodel.setEName(rs.getString(2));;
				list1.add(emodel);
			}
			return list1.size()>0?list1:null;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return null;
		}
	}
	
	public List<Object[]> searchEventByName(String EName) {
        List<Object[]> list = new ArrayList<>();
        try {
            String sql = "SELECT e.ename, d.dept_name, e.eid FROM eventdepartmentjoin edj "
                    + "INNER JOIN event e ON edj.eid = e.eid "
                    + "INNER JOIN department d ON edj.dept_id = d.dept_id "
                    + "WHERE e.ename LIKE ?";
            stmt = con.prepareStatement(sql);
            stmt.setString(1, "%" + EName + "%");
            rs = stmt.executeQuery();
            while (rs.next()) {
                Object[] obj = { rs.getString("e.ename"), rs.getString("d.dept_name"), rs.getInt("e.eid") };
                list.add(obj);
            }
        } catch (Exception ex) {
            System.out.println("Error is:" + ex);
        }
        return list;
    }
	public boolean isDeleteEvent(int Eid) {
		try {
			
			stmt=con.prepareStatement("delete from event where Eid=?");
			stmt.setInt(1, Eid);
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return false;
		}
	}
}
