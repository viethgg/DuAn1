CREATE DATABASE QLCHDT

use QLCHDT
go

IF OBJECT_ID('NhanVien') IS NOT NULL 
DROP TABLE NhanVien
go
CREATE TABLE NhanVien
(
	maNV VARCHAR (20) NOT NULL,
	tenNV NVARCHAR(50) NOT NULL,
	matKhau VARCHAR(20) NOT NULL,
	sdt VARCHAR(20) NOT NULL,
	gioiTinh bit null,
	chucVu NVARCHAR(50) NULL,
	diaChi NVARCHAR(MAX) NULL,
	hinhAnh VARCHAR(50) NULL,

	CONSTRAINT PK_NHANVIEN PRIMARY KEY (maNV)

)

IF OBJECT_ID('SanPham') IS NOT NULL 
DROP TABLE SanPham
go
CREATE TABLE SanPham
(
	maSP int identity(1,1) NOT NULL,
	tenSP NVARCHAR(50) null,
	maNCC NVARCHAR(50) NULL,
	tenNCC NVARCHAR(50) NULL,
	giaBan float NULL,
	giaNhap float NULL,
	trangThai bit NULL,
	soLuong int NULL,
	anhSP NVARCHAR(50) NULL,

	CONSTRAINT PK_maSP PRIMARY KEY(maSP)

)

insert into NhanVien(maNV,tenNV,matKhau,sdt,gioiTinh,chucVu,diaChi,hinhAnh) values(?,?,?,?,?,?,?,?)
update NhanVien set tenNV=?,matKhau=?,sdt=?,gioiTinh=?,chucVu=?,diaChi=?,hinhAnh=? where maNV=?
delete from NhanVien where maNV =?
select maNV,matKhau,chucVu From NhanVien where maNV = 'ph001'

SELECT *FROM NhanVien