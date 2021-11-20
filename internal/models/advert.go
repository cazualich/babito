package models

import (
	"time"
)

type Advert struct {
	ID			int
	CityID 		int
	DateTime 	time.Time
	AdvertName  string
	Description string
	Price 		int
	UserID 		int
	ImageID 	int
}
