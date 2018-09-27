package domain;

public class Userlosefind {
	private String place;
	private String date;
	private String image;
	private String infomation;
	private String category;
	private String shorttitle;
	private String hide;
	

	public Userlosefind(){
		
	}
	public String getCategory() {
		return category;
	}
	public String getHide() {
		return hide;
	}
	public void setHide(String hide) {
		this.hide = hide;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getShorttitle() {
		return shorttitle;
	}
	public void setShorttitle(String shorttitle) {
		this.shorttitle = shorttitle;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getInfomation() {
		return infomation;
	}
	public void setInfomation(String infomation) {
		this.infomation = infomation;
	}
	
}
