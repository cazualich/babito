package models

type User struct{
	ID 		     int
	UserName   	 string
	Password     string
	Email        string
	BirthdayDate string
	IsAdmin      bool
	PhoneNumber  string
	ImageID      int
}
