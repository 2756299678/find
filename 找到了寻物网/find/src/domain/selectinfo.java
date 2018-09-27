package domain;

public class selectinfo {
	private String time1;
	private String address;
	private String thing;
	public  selectinfo(){
		
	}
	public String getTime1() {
		return time1;
	}
	public void setTime1(String time1) {
		this.time1 = time1;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getThing() {
		return thing;
	}
	public void setThing(String thing) {
		this.thing = thing;
	}
	@Override
	public String toString() {
		return "selectinfo [time1=" + time1 + ", address=" + address + ", thing=" + thing + "]";
	}
	
}	
