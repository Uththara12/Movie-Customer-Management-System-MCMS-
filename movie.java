package com.movie;

public class movie {
	private int id;
	private String name;
	private  String description;
	private  int year;
	private String genre;
	private  String poster ;
	private  String movieurl;
	 
	public movie(int id, String name, String description, int year, String genre, String poster, String movieurl) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.year = year;
		this.genre = genre;
		this.poster = poster;
		this.movieurl = movieurl;
	}
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getDescription() {
		return description;
	}
	

	public int getYear() {
		return year;
	}
	
	public String getGenre() {
		return genre;
	}
	
	public String getPoster() {
		return poster;
	}
	
	public String getMovieurl() {
		return movieurl;
	}
	
	 
	

}