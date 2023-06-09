
--USE [CoffeeShopManagement]
--GO
--/****** Object:  Database [CoffeeShopManagement]    Script Date: 4/9/2023 3:12:01 PM ******/
--CREATE DATABASE [CoffeeShopManagement]
-- CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'CoffeeShopManagement', FILENAME = N'D:\SQL\MSSQL15.SQLEXPRESS\MSSQL\DATA\CoffeeShopManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- LOG ON 
--( NAME = N'CoffeeShopManagement_log', FILENAME = N'D:\SQL\MSSQL15.SQLEXPRESS\MSSQL\DATA\CoffeeShopManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
-- WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CoffeeShopManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CoffeeShopManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CoffeeShopManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CoffeeShopManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CoffeeShopManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CoffeeShopManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CoffeeShopManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [CoffeeShopManagement] SET  MULTI_USER 
GO
ALTER DATABASE [CoffeeShopManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CoffeeShopManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CoffeeShopManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CoffeeShopManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CoffeeShopManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CoffeeShopManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CoffeeShopManagement] SET QUERY_STORE = OFF
GO
USE [CoffeeShopManagement]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 4/9/2023 3:12:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[idBan] [nchar](10) NOT NULL,
	[TenBan] [nvarchar](25) NULL,
 CONSTRAINT [PK_Ban] PRIMARY KEY CLUSTERED 
(
	[idBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaLamViec]    Script Date: 4/9/2023 3:12:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaLamViec](
	[idCaLamViec] [nchar](10) NOT NULL,
	[TenCaLamViec] [nvarchar](50) NULL,
 CONSTRAINT [PK_CaLamViec] PRIMARY KEY CLUSTERED 
(
	[idCaLamViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 4/9/2023 3:12:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[idSanPham] [nchar](10) NOT NULL,
	[idDon] [int] NOT NULL,
	[SoLuong] [nchar](10) NULL,
	[DonGia] [nchar](10) NULL,
	[ThanhTien] [nchar](10) NULL,
	[PhuongThucThanhToan] [nchar](10) NULL,
 CONSTRAINT [PK_ChiTietDonHang_1] PRIMARY KEY CLUSTERED 
(
	[idSanPham] ASC,
	[idDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 4/9/2023 3:12:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[idChucVu] [nchar](10) NOT NULL,
	[TenChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[idChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 4/9/2023 3:12:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[idDon] [int] NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrang] [int] NULL,
	[idNguoiDung] [int] NULL,
	[ThanhToan] [int] NOT NULL,
	[DiaChiNhanHang] [nchar](100) NOT NULL,
	[TongTien] [decimal](18, 0) NOT NULL,
	[idNhanVien] [nchar](10) NOT NULL,
	[idBan] [nchar](10) NOT NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[idDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 4/9/2023 3:12:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[idMenu] [nchar](10) NOT NULL,
	[TenMenu] [nchar](100) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[idMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 4/9/2023 3:12:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[idNguoiDung] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DienThoai] [nchar](10) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[idQuyen] [int] NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[AnhDaiDien] [nchar](30) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[idNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/9/2023 3:12:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[idNhanVien] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](1) NULL,
	[idCaLamViec] [nchar](10) NULL,
	[idChucVu] [nchar](10) NULL,
	[SoDienThoai] [char](15) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[idNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 4/9/2023 3:12:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[idQuyen] [int] NOT NULL,
	[TenQuyen] [nchar](20) NOT NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[idQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/9/2023 3:12:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[idSanPham] [nchar](10) NOT NULL,
	[TenSanPham] [nchar](100) NULL,
	[GiaTien] [decimal](18, 0) NULL,
	[idMenu] [nchar](10) NOT NULL,
	[Images] [nvarchar](50) NULL,
	[idTopping] [nchar](10) NULL,
	[idSize] [nchar](10) NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[idSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 4/9/2023 3:12:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[idSize] [nchar](10) NOT NULL,
	[TenSize] [nvarchar](50) NULL,
	[GiaSize] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[idSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topping]    Script Date: 4/9/2023 3:12:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topping](
	[idTopping] [nchar](10) NOT NULL,
	[TenTopping] [nvarchar](50) NULL,
	[GiaTopping] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Topping] PRIMARY KEY CLUSTERED 
(
	[idTopping] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CaLamViec] ([idCaLamViec], [TenCaLamViec]) VALUES (N'idC       ', N'Chiều')
INSERT [dbo].[CaLamViec] ([idCaLamViec], [TenCaLamViec]) VALUES (N'idF       ', N'Full')
INSERT [dbo].[CaLamViec] ([idCaLamViec], [TenCaLamViec]) VALUES (N'idS       ', N'Sáng')
INSERT [dbo].[CaLamViec] ([idCaLamViec], [TenCaLamViec]) VALUES (N'idT       ', N'Tối')
GO
INSERT [dbo].[ChucVu] ([idChucVu], [TenChucVu]) VALUES (N'idBV      ', N'Bảo vệ')
INSERT [dbo].[ChucVu] ([idChucVu], [TenChucVu]) VALUES (N'idPC      ', N'Pha chế')
INSERT [dbo].[ChucVu] ([idChucVu], [TenChucVu]) VALUES (N'idPV      ', N'Phục vụ')
INSERT [dbo].[ChucVu] ([idChucVu], [TenChucVu]) VALUES (N'idQL      ', N'Quản lý')
INSERT [dbo].[ChucVu] ([idChucVu], [TenChucVu]) VALUES (N'idTN      ', N'Thu ngân')
GO
INSERT [dbo].[Menu] ([idMenu], [TenMenu]) VALUES (N'idAll     ', N'Tất Cả                                                                                              ')
INSERT [dbo].[Menu] ([idMenu], [TenMenu]) VALUES (N'idB&S     ', N'Bánh & Snack                                                                                        ')
INSERT [dbo].[Menu] ([idMenu], [TenMenu]) VALUES (N'idClF     ', N'CloundFee                                                                                           ')
INSERT [dbo].[Menu] ([idMenu], [TenMenu]) VALUES (N'idClT     ', N'CloudTea                                                                                            ')
INSERT [dbo].[Menu] ([idMenu], [TenMenu]) VALUES (N'idCP      ', N'Cà Phê                                                                                              ')
INSERT [dbo].[Menu] ([idMenu], [TenMenu]) VALUES (N'idH-TH    ', N'Hi-Tea Healthy                                                                                      ')
INSERT [dbo].[Menu] ([idMenu], [TenMenu]) VALUES (N'idT       ', N'Trà                                                                                                 ')
INSERT [dbo].[Menu] ([idMenu], [TenMenu]) VALUES (N'idTN      ', N'Tại nhà                                                                                             ')
INSERT [dbo].[Menu] ([idMenu], [TenMenu]) VALUES (N'idTUK     ', N'THức uống khác                                                                                      ')
GO
INSERT [dbo].[NhanVien] ([idNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [idCaLamViec], [idChucVu], [SoDienThoai]) VALUES (N'1         ', N'Đỗ Quang Giáp', CAST(N'2002-03-29T00:00:00.000' AS DateTime), 1, N'T', N'idF       ', N'idQL      ', N'0962355335     ')
INSERT [dbo].[NhanVien] ([idNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [idCaLamViec], [idChucVu], [SoDienThoai]) VALUES (N'10        ', N'Lê Công Hiệp', CAST(N'2002-03-06T00:00:00.000' AS DateTime), 1, N'Đ', N'idT       ', N'idBV      ', N'113            ')
INSERT [dbo].[NhanVien] ([idNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [idCaLamViec], [idChucVu], [SoDienThoai]) VALUES (N'11        ', N'Đào Đức Sơn', CAST(N'2002-03-06T00:00:00.000' AS DateTime), 1, N'H', N'idT       ', N'idPC      ', N'114            ')
INSERT [dbo].[NhanVien] ([idNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [idCaLamViec], [idChucVu], [SoDienThoai]) VALUES (N'12        ', N'Chu Mạnh Quân', CAST(N'2002-03-06T00:00:00.000' AS DateTime), 1, N'T', N'idT       ', N'idPV      ', N'115            ')
INSERT [dbo].[NhanVien] ([idNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [idCaLamViec], [idChucVu], [SoDienThoai]) VALUES (N'13        ', N'Đỗ Duy Luong', CAST(N'2002-03-06T00:00:00.000' AS DateTime), 1, N'T', N'idT       ', N'idTN      ', N'116            ')
INSERT [dbo].[NhanVien] ([idNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [idCaLamViec], [idChucVu], [SoDienThoai]) VALUES (N'2         ', N'Nguyễn Đình Lộc', CAST(N'2002-03-06T00:00:00.000' AS DateTime), 0, N'H', N'idS       ', N'idBV      ', N'113            ')
INSERT [dbo].[NhanVien] ([idNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [idCaLamViec], [idChucVu], [SoDienThoai]) VALUES (N'3         ', N'Vương Anh Quân', CAST(N'2002-06-03T00:00:00.000' AS DateTime), 1, N'S', N'idS       ', N'idPC      ', N'114            ')
INSERT [dbo].[NhanVien] ([idNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [idCaLamViec], [idChucVu], [SoDienThoai]) VALUES (N'4         ', N'Trần Đức Hữu', CAST(N'2002-07-09T00:00:00.000' AS DateTime), 1, N'V', N'idS       ', N'idPV      ', N'115            ')
INSERT [dbo].[NhanVien] ([idNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [idCaLamViec], [idChucVu], [SoDienThoai]) VALUES (N'5         ', N'Nguyễn Văn Tiến', CAST(N'2002-03-28T00:00:00.000' AS DateTime), 1, N'P', N'idS       ', N'idTN      ', N'116            ')
INSERT [dbo].[NhanVien] ([idNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [idCaLamViec], [idChucVu], [SoDienThoai]) VALUES (N'6         ', N'Đỗ Anh Tuấn', CAST(N'2002-03-06T00:00:00.000' AS DateTime), 1, N'U', N'idC       ', N'idBV      ', N'113            ')
INSERT [dbo].[NhanVien] ([idNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [idCaLamViec], [idChucVu], [SoDienThoai]) VALUES (N'7         ', N'Lê Mạnh Khánh', CAST(N'2002-03-06T00:00:00.000' AS DateTime), 1, N'B', N'idC       ', N'idPC      ', N'114            ')
INSERT [dbo].[NhanVien] ([idNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [idCaLamViec], [idChucVu], [SoDienThoai]) VALUES (N'8         ', N'Lê Quang Việt', CAST(N'2002-03-06T00:00:00.000' AS DateTime), 1, N'Đ', N'idC       ', N'idPV      ', N'115            ')
INSERT [dbo].[NhanVien] ([idNhanVien], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [idCaLamViec], [idChucVu], [SoDienThoai]) VALUES (N'9         ', N'Tạ Quang Lợi', CAST(N'2002-03-06T00:00:00.000' AS DateTime), 1, N'H', N'idC       ', N'idTN      ', N'116            ')
GO
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idBMGCNM  ', N'Bánh Mì Gậy Cá Ngừ Mayo                                                                             ', CAST(25000 AS Decimal(18, 0)), N'idB&S     ', N'BMGCNM.jpg', N'idSC      ', N'idN       ', N'Trọng lượng tăng 70% so với bánh mì que thông thường, thêm nhiều dinh dưỡng, thích hợp cho cả bữa ăn nhẹ lẫn ăn no. Ngon hết chỗ chê từ vỏ bánh nướng nóng giòn, cá ngừ đậm đà quyện lẫn sốt mayo thơm béo đến từng hạt bắp ngọt bùi hấp dẫn. Nhâm nhi bánh cùng ly Cà phê thơm nồng hay Hi-Tea tươi mát thì đúng chuẩn "điểm mười".')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idBMGGKQ  ', N'Bánh Mì Gậy Gà Kim Quất                                                                             ', CAST(25000 AS Decimal(18, 0)), N'idB&S     ', N'BMGGKQ.jpg', N'idSC      ', N'idV       ', N'Phiên bản nâng cấp với trọng lượng tăng 80% so với bánh mì que thông thường, đem đến cho bạn bữa ăn nhanh gọn mà vẫn đầy đủ dinh dưỡng. Cắn một miếng là mê mẩn bởi vỏ bánh nướng giòn rụm, nhân đậm vị với từng miếng thịt gà mềm, ướp sốt kim quất chua ngọt, thơm nức đặc trưng.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idBMQP    ', N'Bánh Mì Que Pate                                                                                    ', CAST(15000 AS Decimal(18, 0)), N'idB&S     ', N'BMQP.jpg', N'idKPMM    ', N'idN       ', N'Vỏ bánh mì giòn tan, kết hợp với lớp nhân pate béo béo đậm đà sẽ là lựa chọn lý tưởng nhẹ nhàng để lấp đầy chiếc bụng đói , cho 1 bữa sáng - trưa - chiều - tối của bạn thêm phần thú vị.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idBMQPC   ', N'Bánh Mì Que Pate Cay                                                                                ', CAST(15000 AS Decimal(18, 0)), N'idB&S     ', N'BMQPC.jpg', N'idKPMM    ', N'idN       ', N'Vỏ bánh mì giòn tan, kết hợp với lớp nhân pate béo béo đậm đà và 1 chút cay cay sẽ là lựa chọn lý tưởng nhẹ nhàng để lấp đầy chiếc bụng đói , cho 1 bữa sáng - trưa - chiều - tối của bạn thêm phần thú vị.

')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idBMVTN   ', N'Bánh Mì VN Thịt Nguội                                                                               ', CAST(35000 AS Decimal(18, 0)), N'idB&S     ', N'BMVTN.jpg', N'idKPMM    ', N'idV       ', N'Gói gọn trong ổ bánh mì Việt Nam là từng lớp chả, từng lớp jambon hòa quyện cùng bơ và pate thơm lừng, thêm dưa rau cho bữa sáng đầy năng lượng. *Phần bánh sẽ ngon và đậm đà nhất khi kèm pate. Để đảm bảo hương vị được trọn vẹn, Nhà mong bạn thông cảm vì không thể thay đổi định lượng pate.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idBS      ', N'Bạc Sỉu                                                                                             ', CAST(29000 AS Decimal(18, 0)), N'idCP      ', N'BS.jpg', N'idTCP     ', N'idL       ', N'Bạc sỉu chính là "Ly sữa trắng kèm một chút cà phê". Thức uống này rất phù hợp những ai vừa muốn trải nghiệm chút vị đắng của cà phê vừa muốn thưởng thức vị ngọt béo ngậy từ sữa.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idBSN     ', N'Bạc Sỉu Nóng                                                                                        ', CAST(39000 AS Decimal(18, 0)), N'idCP      ', N'BSN.jpg', N'idTCP     ', N'idL       ', N'Bạc sỉu chính là "Ly sữa trắng kèm một chút cà phê". Thức uống này rất phù hợp những ai vừa muốn trải nghiệm chút vị đắng của cà phê vừa muốn thưởng thức vị ngọt béo ngậy từ sữa.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCBPM    ', N'Chà Bông Phô Mai                                                                                    ', CAST(35000 AS Decimal(18, 0)), N'idB&S     ', N'CBPM.jpg', N'idSC      ', N'idL       ', N'Chiếc bánh với lớp phô mai vàng sánh mịn bên trong, được bọc ngoài lớp vỏ xốp mềm thơm lừng. Thêm lớp chà bông mằn mặn hấp dẫn bên trên.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCD      ', N'Chocolate Đá                                                                                        ', CAST(55000 AS Decimal(18, 0)), N'idTUK     ', N'CD.jpg', N'idKPMM    ', N'idV       ', N'Bột chocolate nguyên chất hoà cùng sữa tươi béo ngậy, ấm nóng. Vị ngọt tự nhiên, không gắt cổ, để lại một chút đắng nhẹ, cay cay trên đầu lưỡi.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCIFC    ', N'CloudFee Caramel                                                                                    ', CAST(49000 AS Decimal(18, 0)), N'idClF     ', N'CIFC.jpg', N'idTCP     ', N'idL       ', N'Ngon khó cưỡng bởi xíu đắng nhẹ từ cà phê phin truyền thống pha trộn với Espresso lừng danh nước Ý, quyện vị kem sữa và caramel ngọt ngọt, thêm lớp foam trứng cacao bồng bềnh béo mịn, kèm topping thạch cà phê dai giòn nhai cực cuốn. Một thức uống "điểm mười" cho cả ngày tươi không cần tưới.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCIFHN   ', N'CloudFee Hà Nội                                                                                     ', CAST(49000 AS Decimal(18, 0)), N'idClF     ', N'CIFHN.jpg', N'idSE      ', N'idL       ', N'Khiến bạn mê mẩn ngay ngụm đầu tiên bởi vị đắng nhẹ của cà phê phin truyền thống kết hợp Espresso Ý, quyện hòa cùng chút ngọt ngào của kem sữa, và thơm béo từ foam trứng cacao. Nhấp một ngụm rồi nhai cùng thạch cà phê dai dai giòn giòn, đúng chuẩn "ngon quên lối về". ')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCIFHNN  ', N'CloudFee Hạnh Nhân Nướng                                                                            ', CAST(49000 AS Decimal(18, 0)), N'idClF     ', N'CIFHNN.jpg', N'idTCT     ', N'idV       ', N'Vị đắng nhẹ từ cà phê phin truyền thống kết hợp Espresso Ý, lẫn chút ngọt ngào của kem sữa và lớp foam trứng cacao, nhấn thêm hạnh nhân nướng thơm bùi, kèm topping thạch cà phê dai giòn mê ly. Tất cả cùng quyện hoà trong một thức uống làm vị giác "thức giấc", thơm ngon hết nấc.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCIFONC  ', N'CloudTea Oolong Nướng Caramel                                                                       ', CAST(55000 AS Decimal(18, 0)), N'idClT     ', N'CIFONC.jpg', N'idSC      ', N'idV       ', N'Chiếc trà sữa chân ái dành cho tín đồ hảo ngọt gọi tên CloudTea Oolong Nướng Caramel. Sự kết hợp của foam trứng béo mịn, caramel thơm lừng, trà Oolong nướng rõ vị quyện kem sữa ngọt ngào, làm tan chảy vị giác tựa khoảnh khắc chạm môi người thương. Thêm bột cacao đậm đà và thạch Oolong nướng dai giòn giúp độ ngon nhân đôi.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCIFONKC ', N'CloudTea Oolong Nướng Kem Cheese                                                                    ', CAST(55000 AS Decimal(18, 0)), N'idClT     ', N'CIFONKC.jpg', N'idKPMM    ', N'idN       ', N'Hội mê cheese sao có thể bỏ lỡ chiếc trà sữa siêu mlem này. Món đậm vị Oolong nướng - nền trà được yêu thích nhất hiện nay, quyện thêm kem sữa thơm béo. Đặc biệt, chinh phục ngay fan ghiền cheese bởi lớp foam phô mai mềm tan mằn mặn. Càng ngon cực với thạch Oolong nướng nguyên chất giòn dai nhai siêu thích.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCIFONKD1', N'CloudTea Oolong Nướng Kem Dừa Đá Xay                                                                ', CAST(55000 AS Decimal(18, 0)), N'idClT     ', N'CIFONKD1.jpg', N'idSC      ', N'idV       ', N'Trà sữa đá xay - phiên bản nâng cấp đầy mới lạ của trà sữa truyền thống, lần đầu xuất hiện tại Nhà. Ngon khó cưỡng với lớp kem dừa béo ngậy nhưng không ngấy, thêm vụn bánh quy phô mai giòn tan vui miệng. Trà Oolong nướng rõ hương đậm vị, quyện với sữa dừa beo béo, được xay mịn cùng đá, mát rượi trong tích tắc.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCIFONKD2', N'CloudTea Oolong Nướng Kem Dừa                                                                       ', CAST(55000 AS Decimal(18, 0)), N'idClT     ', N'CIFONKD2.jpg', N'idTCT     ', N'idL       ', N'Vừa chạm môi là mê mẩn ngay lớp kem dừa beo béo, kèm vụn bánh quy phô mai giòn tan trong miệng. Đặc biệt, trà Oolong nướng đậm đà, hòa cùng sữa dừa ngọt dịu. Hương vị thêm bùng nổ nhờ có thạch Oolong nướng nguyên chất, giòn dai.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCN      ', N'Chocolate Nóng                                                                                      ', CAST(55000 AS Decimal(18, 0)), N'idTUK     ', N'CN.jpg', N'idTCT     ', N'idV       ', N'Bột chocolate nguyên chất hoà cùng sữa tươi béo ngậy. Vị ngọt tự nhiên, không gắt cổ, để lại một chút đắng nhẹ, cay cay trên đầu lưỡi.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCPDD    ', N'Cà Phê Đen Đá                                                                                       ', CAST(29000 AS Decimal(18, 0)), N'idCP      ', N'CPDD.jpg', N'idKPMM    ', N'idN       ', N'Không ngọt ngào như Bạc sỉu hay Cà phê sữa, Cà phê đen mang trong mình phong vị trầm lắng, thi vị hơn. Người ta thường phải ngồi rất lâu mới cảm nhận được hết hương thơm ngào ngạt, phảng phất mùi cacao và cái đắng mượt mà trôi tuột xuống vòm họng.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCPHTDV  ', N'Cà Phê Hòa Tan Đậm Vị Việt Túi 40x16G                                                               ', CAST(99000 AS Decimal(18, 0)), N'idTN      ', N'CPHTDV.jpg', N'idKPMM    ', N'idV       ', N'Bắt đầu ngày mới với tách cà phê sữa “Đậm vị Việt” mạnh mẽ sẽ giúp bạn luôn tỉnh táo và hứng khởi cho ngày làm việc thật hiệu quả.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCPRXO   ', N'Cà Phê Rang Xay Original 1 250g                                                                     ', CAST(60000 AS Decimal(18, 0)), N'idTN      ', N'CPRXO.jpg', N'idKPMM    ', N'idV       ', N'Cà phê Original 1 của The Coffee House với thành phần chính cà phê Robusta Đắk Lắk, vùng trồng cà phê nổi tiếng nhất Việt Nam. Bằng cách áp dụng kỹ thuật rang xay hiện đại, Cà phê Original 1 mang đến trải nghiệm tuyệt vời khi uống cà phê tại nhà với hương vị đậm đà truyền thống hợp khẩu vị của giới trẻ sành cà phê.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCPSD    ', N'Cà Phê Sữa Đá                                                                                       ', CAST(29000 AS Decimal(18, 0)), N'idCP      ', N'CPSD.jpg', N'idSE      ', N'idN       ', N'Cà phê Đắk Lắk nguyên chất được pha phin truyền thống kết hợp với sữa đặc tạo nên hương vị đậm đà, hài hòa giữa vị ngọt đầu lưỡi và vị đắng thanh thoát nơi hậu vị.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCPSDHT  ', N'Cà Phê Sữa Đá Hòa Tan (10 gói x 22g)                                                                ', CAST(44000 AS Decimal(18, 0)), N'idTN      ', N'CPSDHT.jpg', N'idSC      ', N'idL       ', N'Thật dễ dàng để bắt đầu ngày mới với tách cà phê sữa đá sóng sánh, thơm ngon như cà phê pha phin. Vị đắng thanh của cà phê hoà quyện với vị ngọt béo của sữa, giúp bạn luôn tỉnh táo và hứng khởi cho ngày làm việc thật hiệu quả.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCPSN    ', N'Cà Phê Sữa Nóng                                                                                     ', CAST(39000 AS Decimal(18, 0)), N'idCP      ', N'CPSN.jpg', N'idSC      ', N'idN       ', N'Cà phê được pha phin truyền thống kết hợp với sữa đặc tạo nên hương vị đậm đà, hài hòa giữa vị ngọt đầu lưỡi và vị đắng thanh thoát nơi hậu vị.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCSLCPS  ', N'Combo 6 Lon Cà Phê Sữa Espresso                                                                     ', CAST(84000 AS Decimal(18, 0)), N'idTN      ', N'CSLCPS.jpg', N'idKPMM    ', N'idN       ', N'Được sản xuất theo công nghệ Nhật, Cà Phê Sữa Espresso The Coffee House giữ trọn hương vị đậm đà của 100% cà phê Robusta nguyên chất quyện hoà cùng sữa béo thơm lừng. Bật nắp trải nghiệm ngay chất cà phê mạnh mẽ giúp sảng khoái tức thì, tuôn trào hứng khởi')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idCTM     ', N'Croissant trứng muối                                                                                ', CAST(35000 AS Decimal(18, 0)), N'idB&S     ', N'CTM.jpg', N'idSC      ', N'idV       ', N'Croissant trứng muối thơm lừng, bên ngoài vỏ bánh giòn hấp dẫn bên trong trứng muối vị ngon khó cưỡng.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idDDML    ', N'Đường Đen Marble Latte                                                                              ', CAST(55000 AS Decimal(18, 0)), N'idCP      ', N'DDML.jpg', N'idSE      ', N'idV       ', N'Sản phẩm không thể thay đổi độ ngọt - Khuấy đều trước khi sử dụng Đường Đen Marble Latte êm dịu cực hấp dẫn bởi vị cà phê đắng nhẹ hoà quyện cùng vị đường đen ngọt thơm và sữa tươi béo mịn. Sự kết hợp đầy mới mẻ của cà phê và đường đen cũng tạo nên diện mạo phân tầng đẹp mắt. Đây là lựa chọn đáng thử để bạn khởi đầu ngày mới đầy hứng khởi.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idDDSD    ', N'Đường Đen Sữa Đá                                                                                    ', CAST(45000 AS Decimal(18, 0)), N'idCP      ', N'DDSD.jpg', N'idTCP     ', N'idV       ', N' Sản phẩm không thể thay đổi độ ngọt - Khuấy đều trước khi sử dụng Nếu chuộng vị cà phê đậm đà, bùng nổ và thích vị đường đen ngọt thơm, Đường Đen Sữa Đá đích thị là thức uống dành cho bạn. Không chỉ giúp bạn tỉnh táo buổi sáng, Đường Đen Sữa Đá còn hấp dẫn đến ngụm cuối cùng bởi thạch cà phê giòn dai, nhai cực cuốn.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idHTD     ', N'Hi Tea Đào                                                                                          ', CAST(49000 AS Decimal(18, 0)), N'idH-TH    ', N'HTD.jpg', N'idTCP     ', N'idL       ', N'Sự kết hợp ăn ý giữa Đào cùng trà hoa Hibiscus, tạo nên tổng thể hài hoà dễ gây “thương nhớ” cho team thích món thanh mát, có vị chua nhẹ.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idHTDTMM  ', N'Hi Tea Dâu Tây Mận Muối Aloe Vera                                                                   ', CAST(49000 AS Decimal(18, 0)), N'idH-TH    ', N'HTDTMM.jpg', N'idSE      ', N'idN       ', N'Sự kết hợp độc đáo giữa 3 sắc thái hương vị khác nhau: trà hoa Hibiscus chua thanh, Mận muối mặn mặn và Dâu tây tươi Đà Lạt cô đặc ngọt dịu. Ngoài ra, topping Aloe Vera tươi mát, ngon ngất ngây, đẹp đắm say, hứa hẹn sẽ khuấy đảo hè này.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idHTDTYV  ', N'Hi Tea Đá Tuyết Yuzu Vải                                                                            ', CAST(59000 AS Decimal(18, 0)), N'idH-TH    ', N'HTDTYV.jpg', N'idKPMM    ', N'idL       ', N'Vị trà hoa Hibiscus chua chua, kết hợp cùng đá tuyết Yuzu mát lạnh tái tê, thêm miếng vải căng mọng, ngọt ngào sẽ khiến bạn thích thú ngay từ lần thử đầu tiên.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idHTPBTM  ', N'Hi Tea Phúc Bồn Tử Mandarin                                                                         ', CAST(49000 AS Decimal(18, 0)), N'idH-TH    ', N'HTPBTM.jpg', N'idSE      ', N'idV       ', N'Nền trà Hibiscus thanh mát, quyện vị chua chua ngọt ngọt của phúc bồn tử 100% tự nhiên cùng quýt mọng nước mang đến cảm giác sảng khoái tức thì.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idHTSN    ', N'Hồng Trà Sữa Nóng                                                                                   ', CAST(55000 AS Decimal(18, 0)), N'idT       ', N'HTSN.jpg', N'idTCP     ', N'idV       ', N'Từng ngụm trà chuẩn gu ấm áp, đậm đà beo béo bởi lớp sữa tươi chân ái hoà quyện. Trà đen nguyên lá âm ấm dịu nhẹ, quyện cùng lớp sữa thơm béo khó lẫn - hương vị ấm áp chuẩn gu trà, cho từng ngụm nhẹ nhàng, ngọt dịu lưu luyến mãi nơi cuống họng.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idHTSTC   ', N'Hồng Trà Sữa Trân Châu                                                                              ', CAST(55000 AS Decimal(18, 0)), N'idT       ', N'HTSTC.jpg', N'idTCP     ', N'idV       ', N'Thêm chút ngọt ngào cho ngày mới với hồng trà nguyên lá, sữa thơm ngậy được cân chỉnh với tỉ lệ hoàn hảo, cùng trân châu trắng dai giòn có sẵn để bạn tận hưởng từng ngụm trà sữa ngọt ngào thơm ngậy thiệt đã.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idHTTTC   ', N'Hi Tea Thơm Trân Châu                                                                               ', CAST(49000 AS Decimal(18, 0)), N'idH-TH    ', N'HTTTC.jpg', N'idTCT     ', N'idV       ', N'Với nền trà Hibiscus 0% caffeine và thơm giàu vitamin C, Hi-Tea Thơm là thức uống dành cho hội healthy. Đặc biệt, Hi-Tea Thơm chua chua ngọt ngọt thêm phần hấp dẫn nhờ kết hợp cùng trân châu trắng giòn dai cực vui miệng.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idHTV     ', N'Hi Tea Vải                                                                                          ', CAST(49000 AS Decimal(18, 0)), N'idH-TH    ', N'HTV.jpg', N'idTCT     ', N'idV       ', N'Chút ngọt ngào của Vải, mix cùng vị chua thanh tao từ trà hoa Hibiscus, mang đến cho bạn thức uống đúng chuẩn vừa ngon, vừa healthy.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idHTYTC   ', N'Hi Tea Yuzu Trân Châu                                                                               ', CAST(49000 AS Decimal(18, 0)), N'idH-TH    ', N'HTYTC.jpg', N'idTCP     ', N'idN       ', N'Không chỉ nổi bật với sắc đỏ đặc trưng từ trà hoa Hibiscus, Hi-Tea Yuzu còn gây ấn tượng với topping Yuzu (quýt Nhật) lạ miệng, kết hợp cùng trân châu trắng dai giòn sần sật, nhai vui vui.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idTDCSD   ', N'Trà Đào Cam Sả Đá                                                                                   ', CAST(49000 AS Decimal(18, 0)), N'idT       ', N'TDCSD.jpg', N'idTCT     ', N'idV       ', N'Vị thanh ngọt của đào, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idTDCSN   ', N'Trà Đào Cam Sả Nóng                                                                                 ', CAST(59000 AS Decimal(18, 0)), N'idT       ', N'TDCSN.jpg', N'idTCT     ', N'idN       ', N'Vị thanh ngọt của đào, vị chua dịu của Cam Vàng nguyên vỏ, vị chát của trà đen tươi được ủ mới mỗi 4 tiếng, cùng hương thơm nồng đặc trưng của sả chính là điểm sáng làm nên sức hấp dẫn của thức uống này.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idTDM     ', N'Trà Đen Macchiato                                                                                   ', CAST(55000 AS Decimal(18, 0)), N'idT       ', N'TDM.jpg', N'idTCP     ', N'idN       ', N'Trà đen được ủ mới mỗi ngày, giữ nguyên được vị chát mạnh mẽ đặc trưng của lá trà, phủ bên trên là lớp Macchiato "homemade" bồng bềnh quyến rũ vị phô mai mặn mặn mà béo béo.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idTHSD    ', N'Trà Hạt Sen Đá                                                                                      ', CAST(49000 AS Decimal(18, 0)), N'idT       ', N'THSD.jpg', N'idSC      ', N'idL       ', N'Nền trà oolong hảo hạng kết hợp cùng hạt sen tươi, bùi bùi và lớp foam cheese béo ngậy. Trà hạt sen là thức uống thanh mát, nhẹ nhàng phù hợp cho cả buổi sáng và chiều tối.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idTHSN    ', N'Trà Hạt Sen Nóng                                                                                    ', CAST(59000 AS Decimal(18, 0)), N'idT       ', N'THSN.jpg', N'idSC      ', N'idV       ', N'Nền trà oolong hảo hạng kết hợp cùng hạt sen tươi, bùi bùi thơm ngon. Trà hạt sen là thức uống thanh mát, nhẹ nhàng phù hợp cho cả buổi sáng và chiều tối.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idTLNHS   ', N'Trà Long Nhãn Hạt Sen                                                                               ', CAST(49000 AS Decimal(18, 0)), N'idT       ', N'TLNHS.jpg', N'idKPMM    ', N'idV       ', N'Thức uống mang hương vị của nhãn, của sen, của trà Oolong đầy thanh mát cho tất cả các thành viên trong dịp Tết này. An lành, thư thái và đậm đà chính là những gì The Coffee House mong muốn gửi trao đến bạn và gia đình.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idTSTCT   ', N'Trà Sữa Trân Châu Tearoma 250g                                                                      ', CAST(38000 AS Decimal(18, 0)), N'idTN      ', N'TSTCT.jpg', N'idSC      ', N'idV       ', N'Chỉ 2 phút có ngay ly Trà sữa trân châu ngon chuẩn vị quán. Thơm vị trà, béo vị sữa, cùng trân châu thật giòn dai sật sật. Đặc biệt, đây còn là thức uống tốt cho sức khoẻ nhờ thành phần 100% chiết xuất trà tự nhiên, không chất hoá học.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idTVDT    ', N'Trà Vị Đào Tearoma 14x14g                                                                           ', CAST(32000 AS Decimal(18, 0)), N'idTN      ', N'TVDT.jpg', N'idSC      ', N'idL       ', N'Được chiết xuất từ 100% trà tự nhiên, không phẩm màu tổng hợp, Trà vị Đào Tearoma mang đến cảm giác thanh mát cực đã. Nhấp một ngụm, cảm nhận trọn vị đào chua ngọt thơm ngon bùng nổ. Ngoài ra, trà còn bổ sung vitamin C cực kỳ có lợi cho sức khoẻ.')
INSERT [dbo].[SanPham] ([idSanPham], [TenSanPham], [GiaTien], [idMenu], [Images], [idTopping], [idSize], [MoTa]) VALUES (N'idTVTMO   ', N'Trà Vị Tắc Mật Ong Tearoma 14x14g                                                                   ', CAST(32000 AS Decimal(18, 0)), N'idTN      ', N'TVTMO.jpg', N'idSE      ', N'idV       ', N'Thổi bùng sảng khoái cùng Trà vị Tắc Mật Ong Tearoma không phẩm màu tổng hợp. Chiết xuất từ 100% trà tự nhiên, bổ sung vitamin C tốt cho sức khoẻ. Vị tắc chua chua hoà cùng mật ong ngọt dịu giúp bật vị giác, bừng vị mát tức thì.')
GO
INSERT [dbo].[Size] ([idSize], [TenSize], [GiaSize]) VALUES (N'idL       ', N'Lớn', CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[Size] ([idSize], [TenSize], [GiaSize]) VALUES (N'idN       ', N'Nhỏ', CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Size] ([idSize], [TenSize], [GiaSize]) VALUES (N'idV       ', N'Vừa', CAST(4000 AS Decimal(18, 0)))
GO
INSERT [dbo].[Topping] ([idTopping], [TenTopping], [GiaTopping]) VALUES (N'idKPMM    ', N'Kem Phô Mai Macchiato', CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[Topping] ([idTopping], [TenTopping], [GiaTopping]) VALUES (N'idSC      ', N'Sốt Caramel', CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[Topping] ([idTopping], [TenTopping], [GiaTopping]) VALUES (N'idSE      ', N'Shot Espresso', CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[Topping] ([idTopping], [TenTopping], [GiaTopping]) VALUES (N'idTCP     ', N'Thạch Cà Phê', CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[Topping] ([idTopping], [TenTopping], [GiaTopping]) VALUES (N'idTCT     ', N'Trân châu trắng', CAST(10000 AS Decimal(18, 0)))
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SanPham]    Script Date: 4/9/2023 3:12:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_SanPham] ON [dbo].[SanPham]
(
	[idSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([idDon])
REFERENCES [dbo].[DonHang] ([idDon])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham] FOREIGN KEY([idSanPham])
REFERENCES [dbo].[SanPham] ([idSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_Ban] FOREIGN KEY([idBan])
REFERENCES [dbo].[Ban] ([idBan])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_Ban]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NguoiDung] FOREIGN KEY([idNguoiDung])
REFERENCES [dbo].[NguoiDung] ([idNguoiDung])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NguoiDung]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NhanVien] FOREIGN KEY([idNhanVien])
REFERENCES [dbo].[NhanVien] ([idNhanVien])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NhanVien]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_PhanQuyen] FOREIGN KEY([idQuyen])
REFERENCES [dbo].[PhanQuyen] ([idQuyen])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_PhanQuyen]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_CaLamViec] FOREIGN KEY([idCaLamViec])
REFERENCES [dbo].[CaLamViec] ([idCaLamViec])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_CaLamViec]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([idChucVu])
REFERENCES [dbo].[ChucVu] ([idChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Menu] FOREIGN KEY([idMenu])
REFERENCES [dbo].[Menu] ([idMenu])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Menu]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Size] FOREIGN KEY([idSize])
REFERENCES [dbo].[Size] ([idSize])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Size]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Topping] FOREIGN KEY([idTopping])
REFERENCES [dbo].[Topping] ([idTopping])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Topping]
GO
USE [master]
GO
ALTER DATABASE [CoffeeShopManagement] SET  READ_WRITE 
GO
