package section1;

public class Board {

	private String title;
	private String category;
	private String name;
	private String date;
	private String content;




	public Board(String title, String category, String name, String date, String content) {
		
		this.title = title;
		this.category = category;
		this.name = name;
		this.date = date;
		this.content = content;
	}



	public void showBoardInfo() {

		System.out.println("제목 : " + title);
		System.out.println("카테고리 : " + category);
		System.out.println("이름 : " + name);
		System.out.println("날짜 : " + date);
		System.out.println("내용 : " + content);

		System.out.println();
	}
	
	

	public String getTitle() {
		return title;
	}

	public String getCategory() {
		return category;
	}

	public String getName() {
		return name;
	}

	public String getDate() {
		return date;
	}

	public String getContent() {
		return content;
	}

}
