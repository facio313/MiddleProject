package common;

public enum VolStatus {
	PLANNED("모집 예정"),
	RECRUITING("모집 중"),
	FINISHED("모집 완료");
	
	VolStatus(String status){
		this.status = status;
	}
	String status = "";
	
	public String getVolStatus() {
		return status;
	}
}
