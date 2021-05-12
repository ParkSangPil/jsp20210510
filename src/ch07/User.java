package ch07;

public class User {
	private String name;
	private int age;
	private String address;

	public User(String name, int age, String address) {
		super();
		this.name = name;
		this.age = age;
		this.address = address;
	}
	
	public String getAddress() {
		return address;
	}
	public int getAge() {
		return age;
	}
	public String getName() {
		return name;
	}
}
