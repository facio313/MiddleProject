package common;

public enum VolCategory {
	CONVENIENCE(1, "생활편의지원"),
	RESIENTIAL(2, "주거환경"),
	COUNSEL(3, "상담"),
	EDUCATION(4, "교육"),
	MEDICAL(5, "보건의료"),
	RURAL(6, "농어촌"),
	CULTURE(7, "문화행사"),
	ENVIRONMENT(8, "환경보호"),
	ADMINISTRATION(9, "행정보조"),
	SATETYTRAINING(10, "안전훈련"),
	PUBLIC(11, "공익"),
	GLOBAL(12, "국제협력,해외"),
	MENTORING(13, "멘토링"),
	ETC(14, "기타"),
	Messing(15, "골탕 먹이기 키킼ㅋ킼ㅋ"),
	Disaster(16, "볼드모트가 쳐들어와요");
	
	int num = 0;
	String kor = "";
	
	VolCategory(int num, String kor){
		this.num = num;
		this.kor = kor;
	}
	
	public String getKorName() {
		return kor;
	}

}

