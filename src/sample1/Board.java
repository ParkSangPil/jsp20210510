package sample1;

public class Board {
	private String title;
	private String body;
	private String writer;
	
	private String password;
	
	
	
	@Override
	public String toString() {
		return "Board [title=" + title + ", body=" + body + ", writer=" + writer + ", password=" + password + "]";
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
}
