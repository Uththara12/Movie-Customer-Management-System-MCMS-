package com.customer;

public class Customer {
	 private int id;
	    private String name;
	    private String email;
	    private String phone;
	    private String userName;
	    private String Password;
	    private String message;
	    
	    
	   
	    public Customer(int id, String name, String email, String phone, String userName, String password, String message) {
		
			this.id = id;
			this.name = name;
			this.email = email;
			this.phone = phone;
			this.userName = userName;
			this.Password= password;
			this.message = message;
		}



		public int getId() {
			return id;
		}


		public String getName() {
			return name;
		}

		public String getEmail() {
			return email;
		}

		public String getPhone() {
			return phone;
		}


		public String getUserName() {
			return userName;
		}

		public String getPassword() {
			return Password;
		}

		public String getMessage() {
			return message;
		}

	}


