Create database SOF301

use SOF301
create table KhachHang (
Username varchar(50) NOT NULL PRIMARY KEY,
Password varchar (50) NOT NULL,
Hoten varchar (50) NOT NULL,
Gioitinh BIT NULL,
Email varchar (50) NOT NULL

)

INSERT INTO KhachHang ( Username, Password , Hoten, Gioitinh, Email) VALUES('user', '123', 'User', '1' , 'user@user.com')
INSERT INTO KhachHang ( Username, Password , Hoten, Gioitinh, Email) VALUES('admin', 'admin', 'Admin', '0' , 'admin@admin.com')


