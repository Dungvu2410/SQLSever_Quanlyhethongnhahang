USE BAOCAOCHCSDL_FOOD
go

CREATE TRIGGER Trigger_KhachHang_TrungSoDienThoai
ON KhachHang
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM KhachHang
        GROUP BY SoDienThoai
        HAVING COUNT(*) > 1
    )
    BEGIN
        RAISERROR('Số điện thoại đã tồn tại trong bảng KhachHang.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;
END;

insert into KhachHang ( HoTen, DiaChi, SoDienThoai, NgayDangKy, DiemTichLuy, NgaySinh,MatkhauKH) values ( N'Nguyễn Văn An', '58 Weeping Birch Place', '3443755275', '04/10/2022', 40, '09/02/2001','1234');
insert into KhachHang ( HoTen, DiaChi, SoDienThoai, NgayDangKy, DiemTichLuy, NgaySinh,MatkhauKH) values ( N'Chu Văn Bình', '5173 Reinke Trail', '1613719857', '02/07/2022', 34, '02/08/2002','1234');


insert into MonAn ( TenMon, HinhAnh, GiaBan) values ( 'Bugger gà', 'MM-17', 40000);
insert into MonAn ( TenMon, HinhAnh, GiaBan) values ( 'Bugger bò', 'PG-EBR', 50000);
insert into MonAn ( TenMon, HinhAnh, GiaBan) values ( 'Bugger heo', 'SD-09', 35000);
insert into MonAn ( TenMon, HinhAnh, GiaBan) values ( 'Bugger tôm', 'PG-NSB', 50000);
insert into MonAn ( TenMon, HinhAnh, GiaBan) values ( 'Mực chiên bột', 'AU-NT', 25000);
insert into MonAn ( TenMon, HinhAnh, GiaBan) values ( 'Gà chiên', 'AU-WA', 25000);
insert into MonAn ( TenMon, HinhAnh, GiaBan) values ( 'Cơm bò', 'EE-67', 35000);
insert into MonAn ( TenMon, HinhAnh, GiaBan) values ( 'Mực hấp', 'MG-F', 45000);
insert into MonAn ( TenMon, HinhAnh, GiaBan) values ( 'Bò kho', 'ET-AM', 55000);
insert into MonAn ( TenMon, HinhAnh, GiaBan) values ( 'Heo quay', 'EC-G', 60000);

insert into DVT ( DonViTinh) values ( 'Con');
insert into DVT ( DonViTinh) values ( 'Kg');
insert into DVT ( DonViTinh) values ( 'Lít');
insert into DVT ( DonViTinh) values ( 'Bó');
insert into DVT ( DonViTinh) values ( 'Hộp');


insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Thịt gà', 3, 100000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Thịt heo', 7, 150000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Thịt bò', 8, 250000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Thịt cá', 8, 80000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Muối', 9, 25000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Đường', 2, 12000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Bột ngọt', 2, 15000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Sữa tươi', 3, 50000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Sữa đặc', 5, 20000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Đồ ăn đóng hộp', 5, 100000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Bột', 2, 10000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Mực', 1, 300000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Tôm', 1, 500000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Bánh mì', 5, 15000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Cà chua', 2, 10000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Dưa hấu', 2, 12000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Nước sốt', 3, 15000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Nước mắm', 3, 35000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Hành tây', 2, 5000);

insert into NguyenLieu ( TenNguyenLieu, Ma_DVT, DonGia) 
values ( N'Hành lá', 2, 5000);

insert into CongThuc (Ma_Mon, Ma_NguyenLieu, SoLuong) values (1, 2, 2);
insert into CongThuc (Ma_Mon, Ma_NguyenLieu, SoLuong) values (1, 4, 2);
insert into CongThuc (Ma_Mon, Ma_NguyenLieu, SoLuong) values (3, 2, 2);
insert into CongThuc (Ma_Mon, Ma_NguyenLieu, SoLuong) values (4,9, 1);
insert into CongThuc (Ma_Mon, Ma_NguyenLieu, SoLuong) values (2, 8, 3);
insert into CongThuc (Ma_Mon, Ma_NguyenLieu, SoLuong) values (10, 8, 5);
insert into CongThuc (Ma_Mon, Ma_NguyenLieu, SoLuong) values (9, 11, 1);
insert into CongThuc (Ma_Mon, Ma_NguyenLieu, SoLuong) values (7, 3, 5);
insert into CongThuc (Ma_Mon, Ma_NguyenLieu, SoLuong) values (7, 1, 1);
insert into CongThuc (Ma_Mon, Ma_NguyenLieu, SoLuong) values (10, 2, 3);


ALTER TABLE KhachHang
ADD MatkhauKH NVARCHAR(50);

INSERT INTO KhachHang (HoTen, DiaChi, SoDienThoai, NgayDangKy, DiemTichLuy, NgaySinh, MatKhauKH)
VALUES ('Nguyen Van A', '123 ABC Street', '0123456789', GETDATE(), 0, '1990-01-01', '123456');

INSERT INTO KhachHang (HoTen, DiaChi, SoDienThoai, NgayDangKy, DiemTichLuy, NgaySinh, MatKhauKH)
VALUES ('Nguyen Van A', '123 ABC Street', '0123456789', GETDATE(), 0, '1990-01-01', '123456');

CREATE TRIGGER Trigger_KhachHang_KiemTraMatKhauKH
ON KhachHang
FOR INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE MatkhauKH IS NULL)
    BEGIN
        RAISERROR ('Khong duoc de trong MatkhauKH', 16, 1)
        ROLLBACK TRANSACTION
    END
END

INSERT INTO KhachHang (HoTen, DiaChi, SoDienThoai, NgayDangKy, DiemTichLuy, NgaySinh, MatKhauKH)
VALUES ('Nguyen Van A', '123 ABC Street', '012345687', GETDATE(), 0, '1990-01-01', null);

ALTER TABLE NhanVien
ADD MatKhauNV NVARCHAR(50);

-- Tạo trigger để kiểm tra ràng buộc toàn vẹn của cơ sở dữ liệu
CREATE TRIGGER Trigger_koduocxoamonan ---Vũ Đức Dũng
ON MonAn
AFTER DELETE
AS
BEGIN
    -- Kiểm tra ràng buộc toàn vẹn
    IF EXISTS (
        SELECT 1
        FROM CongThuc AS CT
        INNER JOIN MonAn AS MA ON CT.Ma_Mon = MA.Ma_Mon
        WHERE MA.Ma_Mon IS NULL
    )
    BEGIN
        -- Nếu tồn tại công thức liên kết với món ăn không tồn tại, hủy bỏ thao tác xóa
        ROLLBACK TRANSACTION;
        RAISERROR('Không thể xóa món ăn có công thức liên kết.', 16, 1);
        RETURN;
    END
END
	--Ví dụ
DELETE FROM MonAn WHERE Ma_Mon = 2;

ALTER TABLE KhachHang
ADD LoaiThanhVien NVARCHAR(50);

CREATE TRIGGER Trigger_CT_HoaDon_CheckSoLuong
ON CT_HoaDon
AFTER INSERT, UPDATE
AS
BEGIN
  -- Kiểm tra xem có số lượng sản phẩm trong chi tiết hóa đơn là số âm không
  IF EXISTS (
    SELECT 1
    FROM CT_HoaDon
    WHERE SoLuong < 0
  )
  BEGIN
    RAISERROR('Quantity cannot be negative in CT_HoaDon table.', 16, 1)
    ROLLBACK TRANSACTION
  END
END;
-----------------------------------------------------

CREATE TRIGGER Trigger_PhieuNhap_KiemTraNgayNhap ---Vũ Đức Dũng
ON PhieuNhap
FOR INSERT
AS
BEGIN
  DECLARE @NgayNhap DATE;
  SET @NgayNhap = (SELECT NgayNhap FROM inserted);

  IF @NgayNhap > GETDATE()
  BEGIN
    RAISERROR('NgayNhap cannot be in the future.', 16, 1);
    ROLLBACK TRANSACTION;
  END;
END;
----------------------------------
CREATE TRIGGER Trigger_CT_HoaDon_KiemTraSoLuong ---Vũ Đức Dũng
ON CT_HoaDon
AFTER INSERT, UPDATE
AS
BEGIN
  DECLARE @MaMonAn INT, @SoLuong INT, @SoLuongTon INT;

  SELECT @MaMonAn = Ma_MonAn, @SoLuong = SoLuong
  FROM inserted;

  SELECT @SoLuongTon = SoLuongTon
  FROM CT_Kho
  WHERE Ma_NguyenLieu = @MaMonAn;

  IF @SoLuong > @SoLuongTon
  BEGIN
    RAISERROR('SoLuong cannot exceed the available quantity.', 16, 1);
    ROLLBACK TRANSACTION;
  END;
END;
---------------------------------------------------------------
CREATE TRIGGER Trigger_KhachHang_KiemTraDiemTichLuy ---Vũ Đức Dũng
ON KhachHang
AFTER INSERT, UPDATE
AS
BEGIN
  DECLARE @MaKH INT, @DiemTichLuy INT;

  SELECT @MaKH = Ma_KhachHang, @DiemTichLuy = DiemTichLuy
  FROM inserted;

  IF @DiemTichLuy < 0
  BEGIN
    RAISERROR('DiemTichLuy không thể âm.', 16, 1);
    ROLLBACK TRANSACTION;
  END;
  
  IF @DiemTichLuy > 1000
  BEGIN
    -- Update loại thành viên của khách hàng thành "VIP"
    UPDATE KhachHang
    SET LoaiThanhVien = 'VIP'
    WHERE Ma_KhachHang = @MaKH;
  END;
END;

-------------------------------
-- Trigger để kiểm tra tuổi của khách hàng trước khi thêm mới hoặc cập nhật thông tin p

--
CREATE TRIGGER Trigger_KiemTraTuoiKhachHang
ON KhachHang
AFTER INSERT, UPDATE
AS
BEGIN
    -- Lấy ngày hiện tại
    DECLARE @NgayHienTai DATE = GETDATE();

    -- Kiểm tra tuổi của khách hàng
    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE DATEDIFF(YEAR, NgaySinh, @NgayHienTai) < 16
    )
    BEGIN
        -- Nếu có khách hàng dưới 18 tuổi, không cho phép thêm mới hoặc cập nhật thông tin
        RAISERROR('Khách hàng phải đủ 16 tuổi trở lên.', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;

------------------------------------

-- Trigger để kiểm tra tuổi của nhân viên trước khi thêm hoặc cập nhật thông tin
--
phu
--
CREATE TRIGGER Trigger_KiemTraTuoiNhanVien
ON NhanVien
AFTER INSERT, UPDATE
AS
BEGIN
    -- Kiểm tra tuổi của nhân viên
    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE DATEDIFF(YEAR, NgaySinh, GETDATE()) < 18
    )
    BEGIN
        -- Nếu tuổi nhân viên dưới 18, không cho phép thêm hoặc cập nhật thông tin
        RAISERROR('Tuổi nhân viên phải từ 18 trở lên.', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;
-----------------------------------
-- Trigger để kiểm tra ràng buộc tổng số tiền trong hóa đơn
CREATE TRIGGER Trigger_KiemTraTongTienHoaDon
ON HoaDon
AFTER INSERT, UPDATE
AS
BEGIN
    -- Kiểm tra ràng buộc tổng số tiền trong hóa đơn
    IF EXISTS (
        SELECT 1
        FROM HoaDon AS hd
        INNER JOIN inserted AS i ON hd.Ma_HoaDon = i.Ma_HoaDon
        WHERE hd.TongTien < 0
    )
    BEGIN
        -- Nếu tổng số tiền trong hóa đơn là số âm, hủy bỏ thao tác INSERT hoặc UPDATE
        ROLLBACK;
        RAISERROR ('TongTien phai lon hon hoac bang 0', 16, 1);
        RETURN;
    END;
END;
---------------------------------------------
-- Trigger để kiểm tra ràng buộc DonGia của Ma_NguyenLieu
phu
--
CREATE TRIGGER Trigger_KiemTraDonGia
ON NguyenLieu
AFTER INSERT, UPDATE
AS
BEGIN
    -- Kiểm tra ràng buộc DonGia của Ma_NguyenLieu
    IF EXISTS (
        SELECT 1
        FROM NguyenLieu AS nl
        INNER JOIN inserted AS i ON nl.Ma_NguyenLieu = i.Ma_NguyenLieu
        WHERE nl.DonGia < 0
    )
    BEGIN
        -- Nếu DonGia là số âm, hủy bỏ thao tác INSERT hoặc UPDATE
        ROLLBACK;
        RAISERROR ('DonGia phai lon hon hoac bang 0', 16, 1);
        RETURN;
    END;
END;
----------------------------------------
phu
CREATE TRIGGER Trigger_CheckGiaBan
ON MonAn
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted WHERE GiaBan < 0)
    BEGIN
        RAISERROR ('GiaBan cannot be negative.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END
END;
-------------------------------------------------------
USE BAOCAOCHCSDL_FOOD; -- Chọn cơ sở dữ liệu
CREATE TABLE dbo.TempStoredProcedures
(
    ProcedureName VARCHAR(255)
);

INSERT INTO dbo.TempStoredProcedures (ProcedureName)
SELECT name
FROM sys.objects
WHERE type = 'P';

----------------------------------------------------------
CREATE PROCEDURE DangNhapLogin
    @Username NVARCHAR(50),
    @Password NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra sự tồn tại của tài khoản
    IF EXISTS (SELECT * FROM NhanVien WHERE SoDienThoai = @Username AND MatKhauNV = @Password)
    BEGIN
        -- Lấy thông tin nhân viên
        SELECT Ma_NhanVien, Ten, Ma_CN FROM NhanVien WHERE SoDienThoai = @Username;
    END
    ELSE
    BEGIN
        -- Trả về lỗi nếu tài khoản không tồn tại
        RAISERROR ('tài khoản không tồn tại.', 16, 1);
    END
END

--ví dụ
EXEC DangNhapLogin2 @Username = '123456789', @Password = '1234567';
-------------------
CREATE PROCEDURE LayDanhsachKH
AS
BEGIN
    SELECT * FROM KhachHang;
END;

EXEC LayDanhsachKH;
---------------------------------------------------------
CREATE PROCEDURE sp_DangKyTaiKhoan
    @HoTen NVARCHAR(50),
    @DiaChi NVARCHAR(100),
    @SoDienThoai NVARCHAR(20),
    @NgayDangKy DATETIME,
    @NgaySinh DATETIME,
    @MatKhau NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra xem khách hàng đã tồn tại chưa
    IF EXISTS (SELECT 1 FROM KhachHang WHERE SoDienThoai = @SoDienThoai)
    BEGIN
        RAISERROR ('Số điện thoại đã được đăng ký!', 16, 1)
        RETURN
    END

    -- Thêm khách hàng mới vào bảng KhachHang
    INSERT INTO KhachHang (HoTen, DiaChi, SoDienThoai, NgayDangKy, NgaySinh, MatKhauKH)
    VALUES (@HoTen, @DiaChi, @SoDienThoai, @NgayDangKy, @NgaySinh, @MatKhau)

    SELECT SCOPE_IDENTITY() AS Ma_KhachHang
END
--ví dụ
DECLARE @Ma_KhachHang INT;
DECLARE @NgayDangKy DATETIME;

SET @NgayDangKy = GETDATE();

EXEC sp_DangKyTaiKhoan
    @HoTen = N'Vũ Đức Dũng',
    @DiaChi = N'ok/12/12',
    @SoDienThoai = N'0936588378',
    @NgayDangKy = @NgayDangKy,
    @NgaySinh = '1990-01-01',
    @MatKhau = N'123456789';
    

SELECT @Ma_KhachHang AS Ma_KhachHang;
---------------------------------------------
CREATE PROCEDURE sp_DangKyTaiKhoanNhanVien
    @Ten NVARCHAR(50),
    @NgaySinh DATETIME,
    @SoDienThoai NVARCHAR(20),
    @DiaChi NVARCHAR(100),
    @Ma_CN CHAR(10),
    @NgayVL DATETIME,
    @Luong MONEY,
    @MatKhau NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra xem Nhân viên đã tồn tại chưa
    IF EXISTS (SELECT 1 FROM NhanVien WHERE SoDienThoai = @SoDienThoai)
    BEGIN
        RAISERROR ('Số điện thoại đã được đăng ký!', 16, 1)
        RETURN
    END

    -- Thêm Nhân viên mới vào bảng NhanVien
    INSERT INTO NhanVien (Ten, NgaySinh, SoDienThoai, DiaChi, Ma_CN, NgayVL, Luong, MatKhauNV)
    VALUES (@Ten, @NgaySinh, @SoDienThoai, @DiaChi, @Ma_CN, @NgayVL, @Luong, @MatKhau)

    SELECT SCOPE_IDENTITY() AS Ma_NhanVien
END
---- ví dụ
DECLARE @Ma_NhanVien INT;
DECLARE @NgayVL DATETIME;

SET @NgayVL = GETDATE();
EXEC sp_DangKyTaiKhoanNhanVien
    @Ten = N'Hoàng Tho',
    @NgaySinh = '1990-01-01',
    @SoDienThoai = N'0936588378',
    @DiaChi = N'Địa chỉ nhân viên',
    @Ma_CN = 'ABC123',
    @NgayVL = @NgayVL,
    @Luong = 10000000,
    @MatKhau = N'123456789';

SELECT @Ma_NhanVien AS Ma_NhanVien;
------------------------------------------
CREATE PROCEDURE sp_XoaTaiKhoanKhachHang
    @SoDienThoai NVARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra xem Khách hàng tồn tại không
    IF NOT EXISTS (SELECT 1 FROM KhachHang WHERE SoDienThoai = @SoDienThoai)
    BEGIN
        RAISERROR ('Khách hàng không tồn tại!', 16, 1)
        RETURN
    END

    -- Xóa Khách hàng từ bảng KhachHang
    DELETE FROM KhachHang WHERE SoDienThoai = @SoDienThoai

    SELECT 'Xóa tài khoản Khách hàng thành công' AS ThongBao
END
--- ví dụ
DECLARE @SoDienThoai NVARCHAR(20);

EXEC sp_XoaTaiKhoanKhachHang
    @SoDienThoai=N'0936588378';

--------------------------------------
CREATE PROCEDURE sp_CapNhatMatKhauKhachHang
    @SoDienThoai NVARCHAR(20),
    @MatKhau NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra xem Khách hàng tồn tại không
    IF NOT EXISTS (SELECT 1 FROM KhachHang WHERE SoDienThoai = @SoDienThoai)
    BEGIN
        RAISERROR ('Khách hàng không tồn tại!', 16, 1)
        RETURN
    END

    -- Cập nhật mật khẩu Khách hàng
    UPDATE KhachHang
    SET MatKhauKH = @MatKhau
    WHERE SoDienThoai = @SoDienThoai

    SELECT 'Cập nhật mật khẩu Khách hàng thành công' AS ThongBao
END


------------ví dụ
EXEC sp_CapNhatMatKhauKhachHang
    @SoDienThoai = N'0936588378',
    @MatKhau = N'090909';
-----------------------------------------------------------------------------------------
CREATE PROCEDURE sp_CapNhatMatKhauNhanVien
    @SoDienThoai NVARCHAR(20),
    @MatKhau NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra xem Nhân viên tồn tại không
    IF NOT EXISTS (SELECT 1 FROM NhanVien WHERE SoDienThoai = @SoDienThoai)
    BEGIN
        RAISERROR ('Nhân viên không tồn tại!', 16, 1)
        RETURN
    END

    -- Cập nhật mật khẩu Nhân viên
    UPDATE NhanVien
    SET MatKhauNV = @MatKhau
    WHERE SoDienThoai = @SoDienThoai

    SELECT 'Cập nhật mật khẩu Nhân viên thành công' AS ThongBao
END
---ví dụ 
EXEC sp_CapNhatMatKhauNhanVien
    @SoDienThoai = N'0936588378',
    @MatKhau = N'1234456';
--------------------------------------------
CREATE PROCEDURE sp_XemThongTinNhanVien
    @SoDienThoai NVARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra xem số điện thoại có tồn tại không
    IF NOT EXISTS (SELECT 1 FROM NhanVien WHERE SoDienThoai = @SoDienThoai)
    BEGIN
        RAISERROR ('Nhân viên không tồn tại!', 16, 1);
        RETURN;
    END;

    -- Lấy thông tin của Nhân viên
    SELECT Ma_NhanVien, Ten, NgaySinh, SoDienThoai, DiaChi, Ma_CN, NgayVL, Luong
    FROM NhanVien
    WHERE SoDienThoai = @SoDienThoai;
END;
-----ví dụ
EXEC sp_XemThongTinNhanVien
    @SoDienThoai = N'0936588378';
------------------------------------------
CREATE PROCEDURE sp_XemDanhSachNhanVien
AS
BEGIN
    SET NOCOUNT ON;

    -- Lấy danh sách nhân viên
    SELECT Ma_NhanVien, Ten, NgaySinh, SoDienThoai, DiaChi, Ma_CN, NgayVL, Luong
    FROM NhanVien;
END;
---------------ví dụ
exec sp_XemDanhSachNhanVien
---------------------------------------
CREATE PROCEDURE sp_CapNhatThongTinKhachHang
    @SoDienThoai NVARCHAR(20),
    @MatKhau NVARCHAR(50),
    @HoTen NVARCHAR(50),
    @DiaChi NVARCHAR(100),
    @NgaySinh DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra xem số điện thoại và mật khẩu có chính xác không
    IF NOT EXISTS (SELECT 1 FROM KhachHang WHERE SoDienThoai = @SoDienThoai AND MatKhauKH = @MatKhau)
    BEGIN
        RAISERROR ('Số điện thoại hoặc mật khẩu không chính xác!', 16, 1)
        RETURN
    END

    -- Cập nhật thông tin khách hàng
    UPDATE KhachHang
    SET HoTen = @HoTen, DiaChi = @DiaChi, NgaySinh = @NgaySinh
    WHERE SoDienThoai = @SoDienThoai;

    SELECT * FROM KhachHang WHERE SoDienThoai = @SoDienThoai;
END;
----ví dụ 
EXEC sp_CapNhatThongTinKhachHang
    @SoDienThoai = N'0936588378',
    @MatKhau = N'123456789',
    @HoTen = N'Tên khách hàng mới',
    @DiaChi = N'Địa chỉ khách hàng mới',
    @NgaySinh = '1990-01-01';

-------------------------------------
CREATE PROCEDURE sp_CapNhatThongTinNhanVien
    @SoDienThoai NVARCHAR(20),
    @MatKhau NVARCHAR(50),
    @Ten NVARCHAR(50),
    @NgaySinh DATETIME,
    @DiaChi NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra xem số điện thoại và mật khẩu có chính xác không
    IF NOT EXISTS (SELECT 1 FROM NhanVien WHERE SoDienThoai = @SoDienThoai AND MatKhauNV = @MatKhau)
    BEGIN
        RAISERROR ('Số điện thoại hoặc mật khẩu không chính xác!', 16, 1)
        RETURN
    END

    -- Cập nhật thông tin nhân viên
    UPDATE NhanVien
    SET Ten = @Ten, NgaySinh = @NgaySinh, DiaChi = @DiaChi
    WHERE SoDienThoai = @SoDienThoai;

    SELECT * FROM NhanVien WHERE SoDienThoai = @SoDienThoai;
END;
--------------ví dụ 
EXEC sp_CapNhatThongTinNhanVien
    @SoDienThoai = N'0987654321',
    @MatKhau = N'password123',
    @Ten = N'Tên nhân viên mới',
    @NgaySinh = '1990-01-01',
    @DiaChi = N'Địa chỉ nhân viên mới';
---------------------------------------
CREATE PROCEDURE sp_XemDanhSachMonAn
AS
BEGIN
    SET NOCOUNT ON;

    -- Lấy danh sách món ăn
    SELECT * FROM MonAn;
END;
----ví dụ
EXEC sp_XemDanhSachMonAn;
-----------------------------
CREATE PROCEDURE sp_XemThongTinMonAn
    @TenMon NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra xem món ăn có tồn tại hay không
    IF NOT EXISTS (SELECT 1 FROM MonAn WHERE TenMon = @TenMon)
    BEGIN
        SELECT 'Món ăn không tồn tại' AS ThongBao;
        RETURN;
    END

    -- Lấy thông tin món ăn dựa trên tên món
    SELECT * FROM MonAn WHERE TenMon = @TenMon;
END;
------ví dụ 
EXEC sp_XemThongTinMonAn @TenMon = N'Bugger gà';
----------------------------------------------
CREATE PROCEDURE sp_ThemMonAn
    @TenMon NVARCHAR(50),
    @HinhAnh NVARCHAR(100),
    @GiaBan MONEY,
    @MaNguyenLieu INT,
    @SoLuong INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Thêm món ăn vào bảng MonAn
    INSERT INTO MonAn (TenMon, HinhAnh, GiaBan)
    VALUES (@TenMon, @HinhAnh, @GiaBan);

    -- Lấy mã món ăn vừa thêm
    DECLARE @Ma_Mon INT;
    SET @Ma_Mon = SCOPE_IDENTITY();

    -- Thêm công thức liên kết vào bảng CongThuc
    INSERT INTO CongThuc (Ma_Mon, Ma_NguyenLieu, SoLuong)
    VALUES (@Ma_Mon, @MaNguyenLieu, @SoLuong);
    
    SELECT @Ma_Mon AS MaMonAn; -- Trả về mã món ăn vừa thêm
END;
-----ví dụ
DECLARE @MaNguyenLieu INT = 1;
DECLARE @SoLuong INT = 2;

EXEC sp_ThemMonAn
    @TenMon = N'Món A',
    @HinhAnh = N'hinhanh.jpg',
    @GiaBan = 10000,
    @MaNguyenLieu = @MaNguyenLieu,
    @SoLuong = @SoLuong;

-----------------------------------
CREATE PROCEDURE sp_ThemNguyenLieu
    @TenNguyenLieu NVARCHAR(100),
    @MaDVT INT,
    @DonGia MONEY
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra xem đơn vị tính có tồn tại không
    IF NOT EXISTS (SELECT 1 FROM DVT WHERE Ma_DVT = @MaDVT)
    BEGIN
        RAISERROR ('Đơn vị tính không tồn tại!', 16, 1)
        RETURN
    END

    BEGIN TRY
        -- Thêm nguyên liệu mới vào bảng NguyenLieu
        INSERT INTO NguyenLieu (TenNguyenLieu, Ma_DVT, DonGia)
        VALUES (@TenNguyenLieu, @MaDVT, @DonGia)

        -- Lấy thông tin nguyên liệu vừa thêm
        DECLARE @MaNguyenLieu INT;
        SET @MaNguyenLieu = SCOPE_IDENTITY();

        -- Kiểm tra xem nguyên liệu đã được thêm thành công hay không
        IF EXISTS (SELECT 1 FROM NguyenLieu WHERE Ma_NguyenLieu = @MaNguyenLieu)
        BEGIN
            SELECT @MaNguyenLieu AS Ma_NguyenLieu, TenNguyenLieu, Ma_DVT, DonGia
            FROM NguyenLieu
            WHERE Ma_NguyenLieu = @MaNguyenLieu;

            PRINT 'Thêm nguyên liệu thành công!'
        END
        ELSE
        BEGIN
            PRINT 'Thêm nguyên liệu thất bại!'
        END
    END TRY
    BEGIN CATCH
        PRINT 'Thêm nguyên liệu thất bại!'
    END CATCH
END

------------ ví dụ
EXEC sp_ThemNguyenLieu
    @TenNguyenLieu = N'gà ác',
    @MaDVT = 11,
    @DonGia = 10000;
----------------------------------------------
CREATE PROCEDURE sp_ThemPhieuNhap
    @Ma_NV INT,
    @Ma_Kho INT,
    @NgayNhap DATETIME,
    @Ma_NguyenLieu INT,
    @SoLuong INT,
    @DonGia MONEY,
    @Ma_PhieuNhap INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NgayHienTai DATETIME;
    SET @NgayHienTai = GETDATE();

    -- Thêm phiếu nhập mới vào bảng PhieuNhap
    INSERT INTO PhieuNhap (Ma_NV, Ma_Kho, NgayNhap)
    VALUES (@Ma_NV, @Ma_Kho, @NgayHienTai)

    -- Lấy mã phiếu nhập vừa được thêm vào
    SET @Ma_PhieuNhap = SCOPE_IDENTITY()

    -- Thêm chi tiết phiếu nhập vào bảng CT_PhieuNhap
    INSERT INTO CT_PhieuNhap (Ma_PhieuNhap, Ma_NguyenLieu, SoLuong, DonGia)
    VALUES (@Ma_PhieuNhap, @Ma_NguyenLieu, @SoLuong, @DonGia)

    -- Hiển thị thông báo thành công và trả về thông tin phiếu nhập
    SELECT 'Thêm phiếu nhập thành công.' AS ThongBao,
           @Ma_PhieuNhap AS Ma_PhieuNhap,
           @Ma_NV AS Ma_NV,
           @Ma_Kho AS Ma_Kho,
           @NgayHienTai AS NgayNhap,
           @Ma_NguyenLieu AS Ma_NguyenLieu,
           @SoLuong AS SoLuong,
           @DonGia AS DonGia
END

----------------------ví dụ
DECLARE @Ma_PhieuNhap INT;

EXEC sp_ThemPhieuNhap
    @Ma_NV = 1,
    @Ma_Kho = 10,
    @NgayNhap = NULL, -- Cung cấp ngày nhập tự động bằng biến trong stored procedure
    @Ma_NguyenLieu = 71,
    @SoLuong = 10,
    @DonGia = 1000,
    @Ma_PhieuNhap = @Ma_PhieuNhap OUTPUT;

SELECT @Ma_PhieuNhap AS Ma_PhieuNhap;

-----------------------------
CREATE TRIGGER tr_AfterInsertPhieuNhap_CT_PhieuNhap
ON CT_PhieuNhap
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Update records in CT_Kho
    UPDATE CT_Kho
    SET CT_Kho.SoLuongTon = CT_Kho.SoLuongTon + inserted.SoLuong
    FROM CT_Kho
    JOIN inserted ON CT_Kho.Ma_NguyenLieu = inserted.Ma_NguyenLieu
    JOIN PhieuNhap ON CT_Kho.Ma_Kho = PhieuNhap.Ma_Kho;

    -- Insert new records into CT_Kho if they don't exist
    INSERT INTO CT_Kho (Ma_Kho, Ma_NguyenLieu, SoLuongTon)
    SELECT PhieuNhap.Ma_Kho, inserted.Ma_NguyenLieu, inserted.SoLuong
    FROM inserted
    JOIN CT_PhieuNhap ON CT_PhieuNhap.Ma_PhieuNhap = inserted.Ma_PhieuNhap
    JOIN PhieuNhap ON CT_PhieuNhap.Ma_PhieuNhap = PhieuNhap.Ma_PhieuNhap
    WHERE NOT EXISTS (
        SELECT 1
        FROM CT_Kho
        WHERE CT_Kho.Ma_NguyenLieu = inserted.Ma_NguyenLieu
        AND CT_Kho.Ma_Kho = PhieuNhap.Ma_Kho
    );
END;

-- ví dụ
DECLARE @Ma_PhieuNhap INT;

EXEC sp_ThemPhieuNhap
    @Ma_NV = 1,
    @Ma_Kho = 10,
    @NgayNhap = NULL, -- Cung cấp ngày nhập tự động bằng biến trong stored procedure
    @Ma_NguyenLieu = 71,
    @SoLuong = 10,
    @DonGia = 1000,
    @Ma_PhieuNhap = @Ma_PhieuNhap OUTPUT;

SELECT @Ma_PhieuNhap AS Ma_PhieuNhap;


--------------------------------------------------
-- Tạo trigger cho việc cập nhật điểm tích lũy của khách hàng
CREATE TRIGGER UpdateDiemTichLuy
ON HoaDon
AFTER INSERT
AS
BEGIN
    -- Lấy thông tin về khách hàng và tổng số tiền trong hóa đơn mới
    DECLARE @Ma_KhachHang INT, @TongTien MONEY;
    SELECT @Ma_KhachHang = Ma_KH, @TongTien = TongTien
    FROM inserted;

    -- Cập nhật điểm tích lũy cho khách hàng
    UPDATE KhachHang
    SET DiemTichLuy = DiemTichLuy + (@TongTien / 10000)
    WHERE Ma_KhachHang = @Ma_KhachHang;
END;
------------------------------------------
CREATE PROCEDURE sp_ThemHoaDon
    @Ma_NV INT,
    @Ma_CN CHAR(10),
    @Ma_KH INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @TongTien MONEY = 0; -- Giá trị mặc định là 0

    INSERT INTO HoaDon (Ma_NV, TongTien, Ma_CN, Ma_KH )
    VALUES (@Ma_NV, @TongTien, @Ma_CN, @Ma_KH );

    SELECT H.Ma_HoaDon, H.Ma_NV, H.TongTien, H.Ma_CN, H.Ma_KH, N.Ten AS TenNV, C.TenCN, KH.HoTen AS HoTenKH
    FROM HoaDon H
    INNER JOIN NhanVien N ON H.Ma_NV = N.Ma_NhanVien
    INNER JOIN ChiNhanh C ON H.Ma_CN = C.Ma_CN
    INNER JOIN KhachHang KH ON H.Ma_KH = KH.Ma_KhachHang
    WHERE H.Ma_HoaDon = SCOPE_IDENTITY();
END
---ví dụ
EXEC sp_ThemHoaDon
    @Ma_NV = 1,
    @Ma_CN = 'CN1',
    @Ma_KH = 9;

--------------------------------------------
CREATE PROCEDURE sp_ThemCT_HoaDon
    @Ma_HoaDon INT,
    @Ma_MonAn INT,
    @SoLuong INT
AS
BEGIN
    -- Kiểm tra nếu Ma_MonAn và Ma_HoaDon đã tồn tại trong bảng CT_HoaDon
    IF EXISTS (
        SELECT 1
        FROM CT_HoaDon
        WHERE Ma_MonAn = @Ma_MonAn AND Ma_HoaDon = @Ma_HoaDon
    )
    BEGIN
        -- Cập nhật SoLuong mới bằng cách cộng dồn với SoLuong cũ
        UPDATE CT_HoaDon
        SET SoLuong = SoLuong + @SoLuong
        WHERE Ma_MonAn = @Ma_MonAn AND Ma_HoaDon = @Ma_HoaDon
    END
    ELSE
    BEGIN
        -- Thêm bản ghi mới vào bảng CT_HoaDon
        INSERT INTO CT_HoaDon (Ma_HoaDon, Ma_MonAn, SoLuong)
        VALUES (@Ma_HoaDon, @Ma_MonAn, @SoLuong)
    END
END

----ví dụ
EXEC sp_ThemCT_HoaDon @Ma_HoaDon = 1, @Ma_MonAn = 23, @SoLuong = 5;
----------------------------------------------------------------------------------

CREATE TRIGGER trg_TinhTongTien_CT_HoaDon
ON CT_HoaDon
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Cập nhật TongTien trong HoaDon khi có thay đổi trong CT_HoaDon
    UPDATE HoaDon
    SET TongTien = (
        SELECT SUM(ct.SoLuong * ma.GiaBan)
        FROM CT_HoaDon AS ct
        JOIN MonAn AS ma ON ct.Ma_MonAn = ma.Ma_Mon
        WHERE ct.Ma_HoaDon = HoaDon.Ma_HoaDon
    )
    WHERE Ma_HoaDon IN (
        SELECT Ma_HoaDon
        FROM inserted
        UNION
        SELECT Ma_HoaDon
        FROM deleted
    );
END
----------------
CREATE PROCEDURE sp_Sua_CT_HoaDon
    @Ma_HoaDon INT,
    @Ma_MonAn INT,
    @SoLuong INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra xem Ma_HoaDon và Ma_MonAn đã tồn tại trong CT_HoaDon hay không
    IF EXISTS (
        SELECT 1
        FROM CT_HoaDon
        WHERE Ma_HoaDon = @Ma_HoaDon
            AND Ma_MonAn = @Ma_MonAn
    )
    BEGIN
        -- Kiểm tra nếu SoLuong mới là 0 thì xóa bản ghi trong CT_HoaDon
        IF @SoLuong = 0
        BEGIN
            DELETE FROM CT_HoaDon
            WHERE Ma_HoaDon = @Ma_HoaDon
                AND Ma_MonAn = @Ma_MonAn;
        END
        ELSE
        BEGIN
            -- Sửa đổi SoLuong trong CT_HoaDon
            UPDATE CT_HoaDon
            SET SoLuong = @SoLuong
            WHERE Ma_HoaDon = @Ma_HoaDon
                AND Ma_MonAn = @Ma_MonAn;
        END
    END
END
-----------------ví dụ
EXEC sp_Sua_CT_HoaDon @Ma_HoaDon = 1, @Ma_MonAn = 23, @SoLuong = 0;
------------------------------------------------------------------------
CREATE PROCEDURE sp_XoaCT_HoaDon
    @Ma_HoaDon INT,
    @Ma_MonAn INT
AS
BEGIN
    -- Kiểm tra sự tồn tại của bản ghi trong bảng CT_HoaDon dựa trên Ma_HoaDon và Ma_MonAn
    IF EXISTS (
        SELECT 1
        FROM CT_HoaDon
        WHERE Ma_HoaDon = @Ma_HoaDon AND Ma_MonAn = @Ma_MonAn
    )
    BEGIN
        -- Xóa bản ghi trong bảng CT_HoaDon dựa trên Ma_HoaDon và Ma_MonAn
        DELETE FROM CT_HoaDon
        WHERE Ma_HoaDon = @Ma_HoaDon AND Ma_MonAn = @Ma_MonAn

        -- Thông báo xóa thành công
        PRINT N'Xóa CT_HoaDon thành công.'
    END
    ELSE
    BEGIN
        -- Thông báo xóa không thành công khi bản ghi không tồn tại
        PRINT N'Xóa CT_HoaDon không thành công. Ma_HoaDon hoặc Ma_MonAn không hợp lệ.'
    END
END
----ví dụ
EXEC sp_XoaCT_HoaDon @Ma_HoaDon = 1, @Ma_MonAn = 21
-------------------------------------------------------
CREATE FUNCTION fn_TinhTongTienVaThongTinKhachHang
(
    @MaHoaDon INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT HD.Ma_HoaDon, HD.TongTien, KH.HoTen, KH.DiaChi, KH.SoDienThoai
    FROM HoaDon AS HD
    INNER JOIN KhachHang AS KH ON HD.Ma_KH = KH.Ma_KhachHang
    WHERE HD.Ma_HoaDon = @MaHoaDon
);
--- ví dụ
SELECT * 
FROM dbo.fn_TinhTongTienVaThongTinKhachHang(1); -- Thay đổi giá trị 1 thành mã hóa đơn cần tìm
---------------------------------------------------------------------
CREATE VIEW View_NguyenLieu_ChiNhanh AS
SELECT NL.TenNguyenLieu, NL.DonGia, DVT.DonViTinh, CT.SoLuongTon, CN.TenCN, K.DiaChi
FROM NguyenLieu NL
INNER JOIN DVT ON NL.Ma_DVT = DVT.Ma_DVT
INNER JOIN CT_Kho CT ON NL.Ma_NguyenLieu = CT.Ma_NguyenLieu
INNER JOIN Kho K ON CT.Ma_Kho = K.Ma_Kho
INNER JOIN ChiNhanh CN ON K.Ma_CN = CN.Ma_CN;

---ví dụ
SELECT * FROM View_NguyenLieu_ChiNhanh;

------------------------------------------------
CREATE VIEW View_KhachHang_DonHang AS
SELECT KH.Ma_KhachHang, KH.HoTen, KH.DiaChi, KH.SoDienThoai, KH.DiemTichLuy, COUNT(HD.Ma_HoaDon) AS SoLuongDonHang, SUM(HD.TongTien) AS TongTienDonHang
FROM KhachHang KH
LEFT JOIN HoaDon HD ON KH.Ma_KhachHang = HD.Ma_KH
GROUP BY KH.Ma_KhachHang, KH.HoTen, KH.DiaChi, KH.SoDienThoai, KH.DiemTichLuy;
---ví dụ
SELECT * FROM View_KhachHang_DonHang;
--------------------------------------------------
CREATE VIEW View_MonAn_BestSelling AS
SELECT TOP 1 M.Ma_Mon, M.TenMon, M.GiaBan, SUM(CT.SoLuong) AS SoLuongBan, SUM(CT.SoLuong * M.GiaBan) AS TongTienBan
FROM MonAn M
JOIN CT_HoaDon CT ON M.Ma_Mon = CT.Ma_MonAn
GROUP BY M.Ma_Mon, M.TenMon, M.GiaBan
ORDER BY SUM(CT.SoLuong) DESC;
---ví dụ
SELECT * FROM View_MonAn_BestSelling;
---------------------------------------
CREATE VIEW View_ChiNhanh_TongTienBan AS
SELECT CN.Ma_CN, CN.TenCN, CN.DiaChi, CN.SoDienThoai, SUM(HD.TongTien) AS TongTienBan
FROM ChiNhanh CN
LEFT JOIN HoaDon HD ON CN.Ma_CN = HD.Ma_CN
GROUP BY CN.Ma_CN, CN.TenCN, CN.DiaChi, CN.SoDienThoai;

-----ví dụ
SELECT * FROM View_ChiNhanh_TongTienBan;
-----------------------------------------------------------------------
-----tạo user login
IF EXISTS(SELECT * FROM master.dbo.syslogins WHERE NAME = 'DungTho_Client')
	DROP LOGIN DungTho_Client
CREATE LOGIN DungTho_Client WITH PASSWORD = '123456'
GO
CREATE USER DTClient FOR LOGIN DungTho_Client
GO
--ví dụ 
IF EXISTS(SELECT * FROM master.dbo.syslogins WHERE NAME = 'DungTho1_Client')
	DROP LOGIN DungTho1_Client
CREATE LOGIN DungTho1_Client WITH PASSWORD = '123456'
GO
CREATE USER DT1Client FOR LOGIN DungTho1_Client
GO

---tạo role
CREATE ROLE DT_QuanLy
GO
CREATE ROLE DT_NhanVienKho
GO
CREATE ROLE DT_NhanVienCSKH
GO
CREATE ROLE DT_NhanVienPV
GO
CREATE ROLE DT_KhachHang
GO
---------------------------------------------------
GRANT CONTROL ON DATABASE::BAOCAOCHCSDL_FOOD TO DT_QuanLy
GRANT SELECT ON KhachHang TO DTClient
-----------gắn role cho user
ALTER USER DTClient WITH DEFAULT_SCHEMA = dbo;
ALTER ROLE DT_QuanLy ADD MEMBER DTClient;


ALTER USER DT1Client WITH DEFAULT_SCHEMA = dbo;
ALTER ROLE DT_NhanVienKho ADD MEMBER DTClient;
------ phân quyền
-- Phân quyền cho vai trò DT_QuanLy
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.ChiNhanh TO DT_QuanLy
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.MonAn TO DT_QuanLy
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.NhanVien TO DT_QuanLy
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Kho TO DT_QuanLy
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PhieuNhap TO DT_QuanLy
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.CT_PhieuNhap TO DT_QuanLy
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Kho TO DT_QuanLy
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.CT_Kho TO DT_QuanLy
-- Phân quyền cho các vai trò còn lại
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.MonAn TO DT_NhanVienKho
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.NguyenLieu TO DT_NhanVienKho
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.CongThuc TO DT_NhanVienKho
-- Tiếp tục phân quyền cho các vai trò khác

-- Phân quyền cho vai trò DT_KhachHang
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.KhachHang TO DT_KhachHang
GRANT SELECT ON dbo.HoaDon TO DT_KhachHang
GRANT SELECT ON dbo.CT_HoaDon TO DT_KhachHang

-- Phân quyền cho vai trò DT_NhanVienPV
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.HoaDon TO DT_NhanVienPV
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.CT_HoaDon TO DT_NhanVienPV
-- Tiếp tục phân quyền cho các vai trò khác

-- Phân quyền cho vai trò DT_NhanVienCSKH
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.KhachHang TO DT_NhanVienCSKH
GRANT SELECT ON dbo.HoaDon TO DT_NhanVienCSKH
GRANT SELECT ON dbo.CT_HoaDon TO DT_NhanVienCSKH
-- Tiếp tục phân quyền cho các vai trò khác

-- Phân quyền cho vai trò DT_NhanVienKho
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.NguyenLieu TO DT_NhanVienKho
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PhieuNhap TO DT_NhanVienKho
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.CT_PhieuNhap TO DT_NhanVienKho
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Kho TO DT_NhanVienKho
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.CT_Kho TO DT_NhanVienKho
--Phân quyền cho các proc
GRANT EXECUTE ON sp_CapNhatThongTinNhanVien TO DT_QuanLy;
GRANT EXECUTE ON sp_XemDanhSachMonAn TO DT_QuanLy;
GRANT EXECUTE ON sp_XemThongTinMonAn TO DT_QuanLy;
GRANT EXECUTE ON sp_ThemMonAn TO DT_QuanLy;
GRANT EXECUTE ON sp_ThemNguyenLieu TO DT_QuanLy;
GRANT EXECUTE ON sp_ThemPhieuNhap TO DT_NhanVienKho;
GRANT EXECUTE ON sp_ThemCT_PhieuNhap TO DT_NhanVienKho;
GRANT EXECUTE ON sp_ThemHoaDon TO DT_NhanVienPV;
GRANT EXECUTE ON sp_ThemCT_HoaDon TO DT_NhanVienPV;
GRANT EXECUTE ON sp_Sua_CT_HoaDon TO DT_NhanVienPV;
GRANT EXECUTE ON sp_XoaCT_HoaDon TO DT_QuanLy;
GRANT EXECUTE ON DangNhapLogin TO DT_QuanLy;
GRANT EXECUTE ON DangNhapLogin TO DT_NhanVienKho;
GRANT EXECUTE ON DangNhapLogin TO DT_NhanVienCSKH;
GRANT EXECUTE ON DangNhapLogin TO DT_KhachHang;
GRANT EXECUTE ON LayDanhsachKH TO DT_NhanVienPV;
GRANT EXECUTE ON sp_DangKyTaiKhoan TO DT_QuanLy;
GRANT EXECUTE ON sp_XoaTaiKhoanKhachHang TO DT_QuanLy;
GRANT EXECUTE ON sp_CapNhatMatKhauNhanVien TO DT_QuanLy;
GRANT EXECUTE ON sp_XemThongTinNhanVien TO DT_QuanLy;
GRANT EXECUTE ON sp_XemDanhSachNhanVien TO DT_QuanLy;
GRANT EXECUTE ON sp_CapNhatThongTinKhachHang TO DT_NhanVienCSKH;

------------------Xử lý đồng thời transaction

BEGIN TRANSACTION;

BEGIN TRY
    -- Bắt đầu transaction và bắt đầu thực hiện các thao tác

    -- Lock bảng KhachHang để đảm bảo không có ai khác cập nhật cùng lúc
    -- Chế độ XLOCK sẽ khóa bảng và chỉ cho phép xem dữ liệu
    SELECT * FROM KhachHang WITH (XLOCK, ROWLOCK) WHERE SoDienThoai = N'3443755275';

    -- Thực hiện cập nhật mật khẩu khách hàng
    EXEC sp_CapNhatMatKhauKhachHang
        @SoDienThoai = N'3443755275',
        @MatKhau = N'090909';

    -- Kết thúc transaction và xác nhận các thay đổi
    COMMIT TRANSACTION;
    SELECT 'Cập nhật mật khẩu khách hàng thành công' AS ThongBao;
END TRY
BEGIN CATCH
    -- Xử lý lỗi nếu có
    ROLLBACK TRANSACTION;
    SELECT ERROR_MESSAGE() AS ErrorMessage;
END CATCH;
--------------------------------------------------
Drop trigger trg_UpdateSoLuongTon
CREATE TRIGGER trg_UpdateSoLuongTon
ON CT_HoaDon
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    -- Xử lý khi có thay đổi trong bảng CT_HoaDon
    -- Dùng bảng inserted để lấy dữ liệu sau khi INSERT hoặc UPDATE
    -- Dùng bảng deleted để lấy dữ liệu trước khi DELETE

    -- Cập nhật SoLuongTon trong bảng CT_Kho
    UPDATE CT_Kho
    SET SoLuongTon = SoLuongTon - (SELECT SoLuong FROM deleted WHERE Ma_MonAn = CT_HoaDon.Ma_MonAn)
                   + (SELECT SoLuong FROM inserted WHERE Ma_MonAn = CT_HoaDon.Ma_MonAn)
    FROM CT_Kho
    INNER JOIN CongThuc ON CT_Kho.Ma_NguyenLieu = CongThuc.Ma_NguyenLieu
    INNER JOIN CT_HoaDon ON CT_HoaDon.Ma_MonAn = CongThuc.Ma_Mon
    INNER JOIN HoaDon ON CT_HoaDon.Ma_HoaDon = HoaDon.Ma_HoaDon
    INNER JOIN ChiNhanh ON HoaDon.Ma_CN = ChiNhanh.Ma_CN
    WHERE (CT_HoaDon.Ma_HoaDon IN (SELECT Ma_HoaDon FROM inserted) OR CT_HoaDon.Ma_HoaDon IN (SELECT Ma_HoaDon FROM deleted))
      AND ChiNhanh.Ma_CN = HoaDon.Ma_CN
END


-- ví dụ
EXEC sp_ThemCT_HoaDon @Ma_HoaDon = 1, @Ma_MonAn = 30, @SoLuong = 5;














	



