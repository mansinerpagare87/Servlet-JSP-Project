package Repository;
import java.util.ArrayList;
import java.util.List;

import Config.DBConfig;
import Model.EventModel;
import Model.EventOrganizeModel;
import Model.RegistrationModel;
public class RegistrationRepositoryImpl extends DBConfig implements RegistrationRepository{
	List<EventModel> list=new ArrayList<>();
	private int regisId=0;
	private int getRegistrationId() {
		try {
			stmt=con.prepareStatement("select max(Rid) from Registration");
			rs=stmt.executeQuery();
			if(rs.next()) {
				regisId=rs.getInt(1);
			}
			return ++regisId;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return 0;
		}
	}
	@Override
	public boolean isRegistered(RegistrationModel rmodel,int EOrg_Id) {
		try {
			int Rid=this.getRegistrationId();
			stmt=con.prepareStatement("insert into Registration values(?,?,?,?,?)");
			stmt.setInt(1,Rid);
			stmt.setString(2,rmodel.getName());
			stmt.setString(3,rmodel.getEmail());
			stmt.setString(4,rmodel.getContact());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return false;
		}
	}
//	public String EventName=null;
//	public String getEventNameById(int Eid) {
//		try {
//			stmt=con.prepareStatement("select EName from event where Eid=?");
//			stmt.setInt(1,Eid);
//			rs=stmt.executeQuery();
//			while(rs.next()) {
//				System.out.println(Eid);
//				EventName=rs.getString(1);
//			}
//			return EventName;
//		}catch (Exception ex) {
//			System.out.println("Error is:"+ex);
//			return null;
//		}
//	}
	public List<EventModel> getAllOrganizedEvent(){
		try {
			stmt=con.prepareStatement("SELECT distinct e.EName FROM event e JOIN eventorganize eo ON e.Eid = eo.Eid ");
			//stmt=con.prepareStatement("select Eid from eventorganize");
            rs = stmt.executeQuery();
			
			while(rs.next()) {
				String EName=rs.getString("EName");
				
				System.out.println("Names from repo--->"+EName);
				if(EName!=null) {
					EventModel emodel=new EventModel();
					emodel.setEName(EName);
					System.out.println("Names from repo after updation--->"+EName);
					list.add(emodel);
				}
			}
			return list.size()>0?list:null;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return null;
		}
	}
}
