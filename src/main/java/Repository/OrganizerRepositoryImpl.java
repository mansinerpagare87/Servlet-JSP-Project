package Repository;
import java.util.*;
import Config.DBConfig;
import Model.OrganizerModel;
public class OrganizerRepositoryImpl extends DBConfig implements OrganizerRepository{
	List<OrganizerModel> list=new ArrayList<>();
	private int OrganizerId=0;
	private int getOrganizerId() {
		try {
			stmt=con.prepareStatement("select max(Org_Id) from Organizer");
			rs=stmt.executeQuery();
			if(rs.next()) {
				OrganizerId=rs.getInt(1);
			}
			return ++OrganizerId;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return 0;
		}
	}
	@Override
	public boolean isAddOrganizer(OrganizerModel omodel) {
		try {
			int Org_Id=this.getOrganizerId();
			stmt=con.prepareStatement("insert into Organizer values(?,?,?,?)");
			stmt.setInt(1,Org_Id);
			stmt.setString(2,omodel.getOrg_Name());
			stmt.setString(3,omodel.getOrg_Email());
			stmt.setString(4,omodel.getOrg_Contact());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return false;
		}
	}
	@Override
	public int isPresentOrganizer(OrganizerModel omodel) {
		try {
			stmt=con.prepareStatement("select  *from Organizer where Org_Email=? and Org_Contact=?");
			stmt.setString(1,omodel.getOrg_Email());
			stmt.setString(2,omodel.getOrg_Contact());
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
	@Override
	public OrganizerModel getOrganizer(int userid) {
		try {
			stmt=con.prepareStatement("select *from organizer where Org_Id=?");
			stmt.setInt(1, userid);
			rs=stmt.executeQuery();
			if(rs.next()) {
				OrganizerModel omodel=new OrganizerModel();
				omodel.setOrg_Name(rs.getString(1));
				omodel.setOrg_Email(rs.getString(2));
				omodel.setOrg_Contact(rs.getString(3));
				return omodel;
			}else {
				return null;
			}
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return null;
		}
	}
	public List<OrganizerModel> getAllOrganizers(){
		try {
			stmt=con.prepareStatement("select *from Organizer order by Org_Id");
			rs=stmt.executeQuery();
			while(rs.next()) {
				OrganizerModel omodel=new OrganizerModel();
				omodel.setOrg_Id(rs.getInt(1));
				omodel.setOrg_Name(rs.getString(2));
				omodel.setOrg_Email(rs.getString(3));
				omodel.setOrg_Contact(rs.getString(4));
				list.add(omodel);
			}
			return list.size()>0?list:null;
		}catch (Exception ex) {
			System.out.println("Error is:"+ex);
			return null;
		}
	}

}
