package com.OnlineMovieAndTVSeries;

public class Package {

	private int idpackages;
	private String packageName;
	private String packagePrice;
	private String packageResolution;
	private int packageWatchers;
	private String packageDescription;
	
	public Package(int idpackages, String packageName, String packagePrice, String packageResolution,
			int packageWatchers, String packageDescription) {
		this.idpackages = idpackages;
		this.packageName = packageName;
		this.packagePrice = packagePrice;
		this.packageResolution = packageResolution;
		this.packageWatchers = packageWatchers;
		this.packageDescription = packageDescription;
	}

	public int getIdpackages() {
		return idpackages;
	}

	public String getPackageName() {
		return packageName;
	}

	public String getPackagePrice() {
		return packagePrice;
	}

	public String getPackageResolution() {
		return packageResolution;
	}

	public int getPackageWatchers() {
		return packageWatchers;
	}

	public String getPackageDescription() {
		return packageDescription;
	}
	
}
