package section1;

public class Member {

	private String id;
	private String pw;
	private String name;
	private String date;
	private String gender;
	private String tel;
	private String styleList;

	public Member(String id, String pw, String name, String date, String gender, String tel, String styleList) {

		this.id = id;
		this.pw = pw;
		this.name = name;
		this.date = date;
		this.gender = gender;
		this.tel = tel;
		this.styleList = styleList;
	}
	
	public void showMemberInfo(){
		
		System.out.println("아이디 : " + id);
		System.out.println("비밀번호 : " + pw);
		System.out.println("이름 : " + name);
		System.out.println("날짜 : " + date);
		System.out.println("성별 : " + gender);
		System.out.println("전화번호 : " + tel);
		System.out.println("스타일리스트 : " + styleList);
		System.out.println();
	}

	public String getId() {
		return id;
	}

	public String getPw() {
		return pw;
	}

	public String getName() {
		return name;
	}

	public String getDate() {
		return date;
	}

	public String getGender() {
		return gender;
	}

	public String getTel() {
		return tel;
	}

	public String getStyleList() {
		return styleList;
	}

	
	

}
