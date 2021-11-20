package models

import "time"

type PromoCode struct {
	ID 			int
	IsUsed 		bool
	UserID 		int
	Expires 	time.Time
	Promocode 	string
	Discount 	float64
}
