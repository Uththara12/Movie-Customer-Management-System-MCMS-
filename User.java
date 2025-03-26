package com.OnlineMovieAndTVSeries;

public class User {
	private int UID;
	private String username;
	private String email;
	private String password;
	private String country;
	private String mobile;
	private String gender;
	private String Preferences;
	
	public User(int uid, String username, String email, String password, String country, String mobile, String gender,
			String preferences) {
		this.UID = uid;
		this.username = username;
		this.email = email;
		this.password = password;
		this.country = country;
		this.mobile = mobile;
		this.gender = gender;
		Preferences = preferences;
	}

	public int getUID() {
		return UID;
	}
	
	public String getUsername() {
		return username;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public String getCountry() {
		return country;
	}

	public String getMobile() {
		return mobile;
	}

	public String getGender() {
		return gender;
	}

	public String getPreferences() {
		return Preferences;
	}

	
	
}
