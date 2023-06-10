CREATE TABLE ChiNhanh (
    Ma_CN char(10) PRIMARY KEY,
    TenCN varchar(50),
    DiaChi varchar(100),
    SoDienThoai nchar(15)
);

CREATE TABLE MonAn (
  Ma_Mon INT IDENTITY(1,1) PRIMARY KEY,
  TenMon NVARCHAR(50),
  HinhAnh NVARCHAR(100),
  GiaBan money
);

CREATE TABLE DVT
(
    Ma_DVT INT IDENTITY(1,1) PRIMARY KEY,
    DonViTinh VARCHAR(50)
);

CREATE TABLE NguyenLieu (
  Ma_NguyenLieu INT IDENTITY(1,1) PRIMARY KEY,
  TenNguyenLieu NVARCHAR(100),
  Ma_DVT INT,
  DonGia money,
  FOREIGN KEY (Ma_DVT) REFERENCES DVT(Ma_DVT)
);


CREATE TABLE CongThuc (
  Ma_Mon INT,
  Ma_NguyenLieu INT,
  SoLuong INT,
  PRIMARY KEY (Ma_Mon, Ma_NguyenLieu),
  FOREIGN KEY (Ma_Mon) REFERENCES MonAn(Ma_Mon),
  FOREIGN KEY (Ma_NguyenLieu) REFERENCES NguyenLieu(Ma_NguyenLieu)
);

CREATE TABLE KhachHang (
  Ma_KhachHang INT IDENTITY(1,1) PRIMARY KEY,
  HoTen NVARCHAR(50),
  DiaChi NVARCHAR(100),
  SoDienThoai NVARCHAR(20),
  NgayDangKy DateTime,
  DiemTichLuy INT,
  NgaySinh DateTime,
  MatKhauKH VARCHAR(50)
);

CREATE TABLE NhanVien (
  Ma_NhanVien INT IDENTITY(1,1) PRIMARY KEY,
  Ten NVARCHAR(50),
  NgaySinh DateTime,
  SoDienThoai NVARCHAR(20),
  DiaChi NVARCHAR(100),
  Ma_CN char(10),
  NgayVL DateTime,
  Luong money,
  MatKhauNV VARCHAR(50)
  FOREIGN KEY (Ma_CN) REFERENCES ChiNhanh(Ma_CN)
);

CREATE TABLE Kho (
  Ma_Kho INT IDENTITY(1,1) PRIMARY KEY,
  DiaChi NVARCHAR(255),
  Ma_CN char(10),
  FOREIGN KEY (Ma_CN) REFERENCES ChiNhanh(Ma_CN)
);

CREATE TABLE CT_Kho (
  Ma_Kho INT,
  Ma_NguyenLieu INT,
  SoLuongTon INT,
  PRIMARY KEY (Ma_Kho, Ma_NguyenLieu),
  FOREIGN KEY (Ma_Kho) REFERENCES Kho(Ma_Kho),
  FOREIGN KEY (Ma_NguyenLieu) REFERENCES NguyenLieu(Ma_NguyenLieu)
);


CREATE TABLE PhieuNhap (
  Ma_PhieuNhap INT IDENTITY(1,1) PRIMARY KEY,
  Ma_NV INT,
  Ma_Kho INT,
  NgayNhap DATETIME,
  FOREIGN KEY (Ma_NV) REFERENCES NhanVien(Ma_NhanVien),
  FOREIGN KEY (Ma_Kho) REFERENCES Kho(Ma_Kho)
);

CREATE TABLE CT_PhieuNhap (
  Ma_PhieuNhap INT,
  Ma_NguyenLieu INT,
  SoLuong INT,
  DonGia money,
  PRIMARY KEY (Ma_PhieuNhap, Ma_NguyenLieu),
  FOREIGN KEY (Ma_PhieuNhap) REFERENCES PhieuNhap(Ma_PhieuNhap),
  FOREIGN KEY (Ma_NguyenLieu) REFERENCES NguyenLieu(Ma_NguyenLieu)
);

CREATE TABLE HoaDon (
  Ma_HoaDon INT IDENTITY(1,1) PRIMARY KEY,
  Ma_NV INT,
  TongTien money,
  Ma_CN char(10),
  Ma_KH INT,
  FOREIGN KEY (Ma_NV) REFERENCES NhanVien(Ma_NhanVien),
  FOREIGN KEY (Ma_CN) REFERENCES ChiNhanh(Ma_CN),
  FOREIGN KEY (Ma_KH) REFERENCES KhachHang(Ma_KhachHang)
);

CREATE TABLE CT_HoaDon (
  Ma_HoaDon INT,
  Ma_MonAn INT,
  SoLuong INT,
  PRIMARY KEY (Ma_HoaDon, Ma_MonAn),
  FOREIGN KEY (Ma_HoaDon) REFERENCES HoaDon(Ma_HoaDon),
  FOREIGN KEY (Ma_MonAn) REFERENCES MonAn(Ma_Mon)
);
