package user

import (
	"babito/internal/models"
	"database/sql"
)

type Repository interface{
	Create(u models.User) error
	GetByID(id int) (*models.User, error)
	GetByEmail(email string) (*models.User, error)
	GetByPhoneNumber(phoneNumber string) (*models.User, error)
	UpdatePassword(email, password string) error // UPDATE users SET password = $1 WHERE email = $2
	Delete(id int) error
}

type repository struct {
	db *sql.DB
}

func New(DB *sql.DB) Repository{
	return &repository{
		db: DB,
	}
}

func (repo *repository) Create(u models.User) error{
	_, err := repo.db.Exec(`INSERT INTO users(user_name, password, email, birthday_date, is_admin, phone, image_id)
		VALUES($1, $2, $3, $4, $5, $6, $7)`,
		u.UserName, u.Password, u.Email, u.BirthdayDate, u.IsAdmin, u.PhoneNumber, u.ImageID,
	)

	return err
}

func (repo *repository) GetByID(id int) (*models.User, error){
	var u models.User
	err := repo.db.QueryRow(`SELECT id, user_name, password, email, birthday_date, is_admin, phone, image_id 
		FROM users WHERE id = $1`, id).
		Scan(&u.ID, &u.UserName, &u.Password, &u.Email, &u.BirthdayDate, &u.IsAdmin, &u.PhoneNumber, &u.ImageID)
	return &u, err
}
func (repo *repository) GetByEmail(email string) (*models.User, error){
	var u models.User
	err := repo.db.QueryRow(`SELECT id, user_name, password, email, birthday_date, is_admin, phone, image_id 
		FROM users WHERE email = $1`, email).
		Scan(&u.ID, &u.UserName, &u.Password, &u.Email, &u.BirthdayDate, &u.IsAdmin, &u.PhoneNumber, &u.ImageID)
	return &u, err
}
func (repo *repository) GetByPhoneNumber(phoneNumber string) (*models.User, error){
	var u models.User
	err := repo.db.QueryRow(`SELECT id, user_name, password, email, birthday_date, is_admin, phone, image_id 
		FROM users WHERE phone = $1`, phoneNumber).
		Scan(&u.ID, &u.UserName, &u.Password, &u.Email, &u.BirthdayDate, &u.IsAdmin, &u.PhoneNumber, &u.ImageID)
	return &u, err
}
func (repo *repository) UpdatePassword(email, password string) error{
	_, err := repo.db.Exec(`UPDATE users SET password = $1 WHERE email = $2`, password, email)
	return err
}
func (repo *repository) Delete(id int) error{
	_, err := repo.db.Exec(`DELETE FROM users WHERE id = $1`, id)
	return err
}