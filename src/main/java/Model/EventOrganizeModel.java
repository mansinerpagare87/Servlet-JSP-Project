package Model;
import java.util.Date;
public class EventOrganizeModel {
	private int EOrg_Id;
	private String Date;
	private String STime;
	public String getSTime() {
		return STime;
	}
	public void setSTime(String sTime) {
		STime = sTime;
	}
	public String getETIme() {
		return ETIme;
	}
	public void setETIme(String eTIme) {
		ETIme = eTIme;
	}
	private String ETIme;
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	
	public int getEOrg_Id() {
		return EOrg_Id;
	}
	public void setEOrg_Id(int eOrg_Id) {
		EOrg_Id = eOrg_Id;
	}
	
}
