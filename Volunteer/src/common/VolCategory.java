package common;

public enum VolCategory {
	CONVENIENCE("Convenience", "생활편의지원"),
	RESIENTIAL("Residential", "주거환경"),
	COUNSEL("Counsel", "상담"),
	EDUCATION("Education", "교육"),
	MEDICAL("Medical", "보건의료"),
	RURAL("Rural", "농어촌"),
	CULTURE("Culture", "문화행사"),
	ENVIRONMENT("Environment", "환경보호"),
	ADMINISTRATION("Administration", "행정보조"),
	SATETYTRAINING("SafetyTraining", "안전훈련"),
	PUBLIC("Public", "공익"),
	GLOBAL("Global", "국제협력,해외"),
	MENTORING("Mentoring", "멘토링"),
	ETC("ETC", "기타"),
	Messing("Messing", "골탕 먹이기 키킼ㅋ킼ㅋ"),
	Disaster("Disaster", "볼드모트가 쳐들어와요");
	
	VolCategory(String name, String kor){
		this.name = name;
		this.kor = kor;
	}
	String name = "";
	String kor = "";
	
	public String getKorName() {
		return kor;
	}

}

