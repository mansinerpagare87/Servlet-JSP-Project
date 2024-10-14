package Repository;
import java.sql.Date;
import java.util.*;

import Config.DBConfig;
import Model.EventOrganizeModel;
public class EventOrganizeRepositoryImpl extends DBConfig implements EventOrganizeRepository{
	List<Object[]> list=new ArrayList<Object[]>();
	private int E_OrganizeId=0;
	private int getEventOrganizeId() {
		try {
			stmt=con.prepareStatement("select max(EOrg_Id) from eventOrganize");
			rs=stmt.executeQuery();
			if(rs.next()) {
				E_OrganizeId=rs.getInt(1);
			}
			return ++E_OrganizeId;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return 0;
		}
	}
	@Override
	public boolean isEventOrganize(EventOrganizeModel eomodel,int Eid) {
		try {
			int EOrg_Id=this.getEventOrganizeId();
			stmt=con.prepareStatement("insert into eventOrganize values(?,?,?,?,?)");
			stmt.setInt(1,EOrg_Id);
			stmt.setInt(2,Eid);
			stmt.setString(3,eomodel.getDate());
			stmt.setString(4,eomodel.getSTime());
			stmt.setString(5,eomodel.getETIme());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return false;
		}
	}
	public List<Object[]> getOrganizedEvent(){
		try {
			stmt=con.prepareStatement("select e.EName,e.Eid,eo.eo_date,eo.STime,eo.ETime,eo.EOrg_Id from event e inner join eventorganize eo on e.Eid=eo.Eid");
			rs=stmt.executeQuery();
			while(rs.next()) {
				Object obj[]=new Object[]{rs.getString(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6)};
				list.add(obj);
			}
			return list.size()>0?list:null;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return null;
		}
	}
}
