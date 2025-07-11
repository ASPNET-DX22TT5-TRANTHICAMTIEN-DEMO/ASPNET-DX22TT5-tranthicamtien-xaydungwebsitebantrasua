USE [master]
GO
/****** Object:  Database [websitetrasua]    Script Date: 8/6/2025 6:49:13 PM ******/
CREATE DATABASE [websitetrasua]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'websitetrasua', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\websitetrasua.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'websitetrasua_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\websitetrasua_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [websitetrasua] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [websitetrasua].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [websitetrasua] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [websitetrasua] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [websitetrasua] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [websitetrasua] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [websitetrasua] SET ARITHABORT OFF 
GO
ALTER DATABASE [websitetrasua] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [websitetrasua] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [websitetrasua] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [websitetrasua] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [websitetrasua] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [websitetrasua] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [websitetrasua] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [websitetrasua] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [websitetrasua] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [websitetrasua] SET  ENABLE_BROKER 
GO
ALTER DATABASE [websitetrasua] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [websitetrasua] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [websitetrasua] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [websitetrasua] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [websitetrasua] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [websitetrasua] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [websitetrasua] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [websitetrasua] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [websitetrasua] SET  MULTI_USER 
GO
ALTER DATABASE [websitetrasua] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [websitetrasua] SET DB_CHAINING OFF 
GO
ALTER DATABASE [websitetrasua] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [websitetrasua] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [websitetrasua] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [websitetrasua] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [websitetrasua] SET QUERY_STORE = OFF
GO
USE [websitetrasua]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 8/6/2025 6:49:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 8/6/2025 6:49:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Picture] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 8/6/2025 6:49:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DateImport] [datetime] NULL,
	[Title] [nvarchar](max) NULL,
	[ShortTitle] [nvarchar](max) NULL,
	[Picture] [nvarchar](200) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 8/6/2025 6:49:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 8/6/2025 6:49:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](400) NOT NULL,
	[Passwords] [nvarchar](400) NOT NULL,
	[Name] [nvarchar](45) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[EmailAddress] [char](100) NULL,
	[Phone] [varchar](15) NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 8/6/2025 6:49:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PurcharsePrice] [decimal](18, 0) NULL,
	[SellPrice] [decimal](18, 0) NOT NULL,
	[DateImport] [datetime] NULL,
	[Quantity] [int] NULL,
	[TypeID] [bigint] NULL,
	[BrandID] [bigint] NULL,
	[Picture] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[ShortTitle] [nvarchar](max) NULL,
	[Describe] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemType]    Script Date: 8/6/2025 6:49:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemType](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](30) NOT NULL,
	[MenuID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 8/6/2025 6:49:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[Link] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 8/6/2025 6:49:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Orderdate] [datetime] NULL,
	[Deliverystatus] [bit] NULL,
	[Deliverydate] [datetime] NULL,
	[Status] [int] NULL,
	[Totalprice] [decimal](18, 0) NULL,
	[CustomerID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 8/6/2025 6:49:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ItemId] [bigint] NULL,
	[OrderID] [bigint] NULL,
	[Totalprice] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 8/6/2025 6:49:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Payprices] [decimal](18, 0) NULL,
	[OrderID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Username], [Passwords], [Name], [Picture]) VALUES (N'Admin', N'1', N'Nguyen Van Admin', N'hinh.png')
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID], [Picture]) VALUES (1, N'f5acb4d49ffa47a0f5dd6f31d2cf3512_1699920974.jpg')
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (1, N'Best seller', 1)
INSERT [dbo].[Brand] ([ID], [Name], [MenuID]) VALUES (2, N'Signature', 1)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (2, N'levana', N'levana', N'Lê Văn A', N'Hà Nội ', N'levana@gmail.com                                                                                    ', N'0369037484', NULL)
INSERT [dbo].[Customer] ([ID], [Username], [Passwords], [Name], [Address], [EmailAddress], [Phone], [Picture]) VALUES (7, N'vandung', N'123456', N'Bùi Văn Dũng', N'Hà Nội', N'vandung@gmail.com                                                                                   ', N'0394073758', NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (1, N'Trà thạch đào latte ', CAST(35000 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 36, 3, 1, N'tra-thach-dao-latte-2-FILEminimizer-1-768x512.jpg', 1, N'Trà thạch đào Latte tại XingFu Milk Tea & Ice Cream là thức uống sinh ra được dành riêng cho các tín đồ đam mê hương vị đào và thêm một chút topping thạch', N'<h3 style="box-sizing: border-box; color: #555555; width: 847.5px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Inter, sans-serif; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Tr&agrave; thạch đ&agrave;o latte&nbsp;</span></h3>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box;">Tr&agrave; thạch đ&agrave;o Latte tại XingFu Milk Tea &amp; Ice Cream l&agrave; thức uống sinh ra được d&agrave;nh ri&ecirc;ng cho c&aacute;c t&iacute;n đồ đam m&ecirc; hương vị đ&agrave;o v&agrave; th&ecirc;m một ch&uacute;t topping thạch. Nếu như bạn đ&atilde; qu&aacute; quen thuộc với m&oacute;n tr&agrave; đ&agrave;o cam sả th&igrave; h&atilde;y đến XingFu trải nghiệm một thực đơn v&ocirc; c&ugrave;ng mới tr&agrave; đ&agrave;o latte.&nbsp;</span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box;">Tr&agrave; thạch đ&agrave;o Latte l&agrave; sự kết hợp giữa vị tr&agrave; đậm đ&agrave; ho&agrave; quyện với nước cốt đ&agrave;o từ ch&iacute;nh những tr&aacute;i đ&agrave;o ch&iacute;n mọng thơm ngon được XingFu lựa chọn. Ngo&agrave;i ra, tr&agrave; thạch đ&agrave;o Latte c&ograve;n c&oacute; những miếng đ&agrave;o thơm ngon mọng nước do ch&iacute;nh đội ngũ nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiệp tại XingFu chế biến.&nbsp;</span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><img class="aligncenter wp-image-2298" style="box-sizing: border-box; height: auto; max-width: 100%; border-style: none; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto;" src="http://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-thach-dao-latte-2-FILEminimizer-1.jpg" sizes="(max-width: 749px) 100vw, 749px" srcset="https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-thach-dao-latte-2-FILEminimizer-1.jpg 1152w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-thach-dao-latte-2-FILEminimizer-1-600x400.jpg 600w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-thach-dao-latte-2-FILEminimizer-1-300x200.jpg 300w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-thach-dao-latte-2-FILEminimizer-1-1024x683.jpg 1024w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-thach-dao-latte-2-FILEminimizer-1-150x100.jpg 150w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-thach-dao-latte-2-FILEminimizer-1-768x512.jpg 768w" alt="tra-thach-dao-latte " width="749" height="499" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff; text-align: center;"><em style="box-sizing: border-box;">M&ugrave;a h&egrave;, bạn c&oacute; thể ngồi nh&acirc;m nhi tr&agrave; thạch đ&agrave;o Latte c&ugrave;ng với đủ loại topping như thạch đ&agrave;o gi&ograve;n dai, nha đam,&hellip;</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (2, N'Trà sữa Matcha Đậu đỏ', CAST(40000 AS Decimal(18, 0)), CAST(40000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 39, 2, 2, N'465544726_1103772887989137_4152933837832026571_n.jpg', 1, N'Nền trà đen kết hợp với vị trà xanh, thơm thanh ngọt dịu hòa quyện cùng topping đậu đỏ ngọt bùi.', N'<p><span style="color: #333333; font-family: ''Open Sans''; font-size: 14px; background-color: #ffffff;"><strong>Vị ch&aacute;t của tr&agrave; xanh Nhật Bản (Matcha) pha ch&uacute;t ngọt ng&agrave;o của sữa d&ugrave;ng k&egrave;m Đậu Đỏ b&ugrave;i v&agrave; b&eacute;o sẽ l&agrave;m bạn bất ngờ</strong><br /></span><img class="attachment-full size-full wp-post-image" style="box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: auto; color: #333333; font-family: ''Open Sans''; font-size: 14px; text-align: center; background-color: #ffffff;" src="https://gongcha.com.vn/wp-content/uploads/2018/02/Tr%C3%A0-s%E1%BB%AFa-Matcha-%C4%91%E1%BA%ADu-%C4%91%E1%BB%8F-2.png" sizes="(max-width: 958px) 100vw, 958px" srcset="https://gongcha.com.vn/wp-content/uploads/2018/02/Tr&agrave;-sữa-Matcha-đậu-đỏ-2.png 958w, https://gongcha.com.vn/wp-content/uploads/2018/02/Tr&agrave;-sữa-Matcha-đậu-đỏ-2-768x768.png 768w" alt="" width="958" height="958" /></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (3, N'Trà sữa hạnh phúc', CAST(45000 AS Decimal(18, 0)), CAST(45000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 39, 3, 2, N'tra-sua-hanh-phuc-2-FILEminimizer-1-768x512.jpg', 1, N'Trà sữa hạnh phúc là một loại thức uống trong menu trà sữa trái cây được chính đội ngũ của XingFu Milk Tea & Ice Cream nghiên cứu công thức, chế biến', N'<h3 style="box-sizing: border-box; color: #555555; width: 847.5px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Inter, sans-serif; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Tr&agrave; sữa hạnh ph&uacute;c</span></h3>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box;">Tr&agrave; sữa hạnh ph&uacute;c l&agrave; một loại thức uống trong menu tr&agrave; sữa tr&aacute;i c&acirc;y được ch&iacute;nh đội ngũ của XingFu Milk Tea &amp; Ice Cream nghi&ecirc;n cứu c&ocirc;ng thức, chế biến.</span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box;">Tr&agrave; sữa được l&agrave;m từ tr&agrave; xanh hoặc đen, pha trộn với sữa v&agrave; đường để tạo ra một hương vị ngọt ng&agrave;o v&agrave; b&eacute;o ngậy. Để tăng th&ecirc;m trải nghiệm của kh&aacute;ch h&agrave;ng, thạch đ&agrave;o được th&ecirc;m v&agrave;o thức uống n&agrave;y. Thạch đ&agrave;o l&agrave; một loại b&aacute;nh tr&ograve;n m&agrave;u trắng trong suốt, c&oacute; độ gi&ograve;n v&agrave; độ dẻo vừa phải.</span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><img class="aligncenter wp-image-2303" style="box-sizing: border-box; height: auto; max-width: 100%; border-style: none; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto; contain-intrinsic-size: 3000px 1500px;" src="http://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-sua-hanh-phuc-2-FILEminimizer-1.jpg" sizes="auto, (max-width: 749px) 100vw, 749px" srcset="https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-sua-hanh-phuc-2-FILEminimizer-1.jpg 1152w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-sua-hanh-phuc-2-FILEminimizer-1-600x400.jpg 600w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-sua-hanh-phuc-2-FILEminimizer-1-300x200.jpg 300w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-sua-hanh-phuc-2-FILEminimizer-1-1024x683.jpg 1024w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-sua-hanh-phuc-2-FILEminimizer-1-150x100.jpg 150w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-sua-hanh-phuc-2-FILEminimizer-1-768x512.jpg 768w" alt="tra-sua-hanh-phuc" width="749" height="499" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff; text-align: center;"><em style="box-sizing: border-box;">Tr&agrave; sữa hạnh ph&uacute;c &ndash; thức uống nằm trong menu tr&agrave; sữa tr&aacute;i c&acirc;y tại XingFu&nbsp;</em></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box;">Điểm nhấn của tr&agrave; sữa hạnh ph&uacute;c ch&iacute;nh l&agrave; tr&acirc;n ch&acirc;u đường đen, cũng được gọi l&agrave; boba. Tr&acirc;n ch&acirc;u được l&agrave;m từ bột khoai m&igrave;, đường, nước v&agrave; c&oacute; m&agrave;u đen nhờ th&ecirc;m hỗn hợp caramel. Tr&acirc;n ch&acirc;u c&oacute; vị ngọt, b&eacute;o v&agrave; c&oacute; độ dai vừa phải, khi nhai sẽ tạo ra cảm gi&aacute;c gi&ograve;n gi&ograve;n th&uacute; vị.</span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box;">Tr&agrave; sữa hạnh ph&uacute;c thường được phục vụ với băng đ&aacute; để l&agrave;m m&aacute;t thức uống v&agrave; tạo ra cảm gi&aacute;c thơm ngon, hấp dẫn. Đ&acirc;y l&agrave; một loại thức uống rất phổ biến v&agrave; được nhiều người y&ecirc;u th&iacute;ch, đặc biệt l&agrave; trong những ng&agrave;y n&oacute;ng bức.</span></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (4, N'Trà sữa Socola', CAST(30000 AS Decimal(18, 0)), CAST(30000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 36, 1, 1, N'menu-cac-loai-tra-sua-socola.jpg', 1, N'Trà sữa Socola đúng chuẩn là món dễ gây nghiện và dễ uống cực kỳ. Hội fan yêu thích vị nhẫn và mùi thơm đắng đặc trưng của chất caffein thì không thể nào bỏ qua món này', N'<h3 style="box-sizing: border-box; margin: 0px; font-weight: 500; line-height: 1.2; font-size: 18px; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline; clear: both; color: #383f47; font-family: ''times new roman'', times, serif; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #ff0000;"><span style="box-sizing: border-box; border: 0px; font-size: 20px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><span style="box-sizing: border-box; font-weight: bolder; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">TR&Agrave; SỮA SOCOLA&nbsp;</span></span></span></span></h3>
<div style="box-sizing: border-box; border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #383f47; font-family: ''times new roman'', times, serif; background-color: #ffffff; text-align: justify;"><br style="box-sizing: border-box;" /><span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><span style="box-sizing: border-box; border: 0px; font-size: 20px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;">Tr&agrave; sữa Socola đ&uacute;ng chuẩn l&agrave; m&oacute;n dễ g&acirc;y nghiện v&agrave; dễ uống cực kỳ. Hội fan y&ecirc;u th&iacute;ch vị nhẫn v&agrave; m&ugrave;i thơm đắng đặc trưng của chất caffein th&igrave; kh&ocirc;ng thể n&agrave;o bỏ qua m&oacute;n n&agrave;y.&nbsp;<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />Sự l&ocirc;i cuốn m&agrave; người d&ugrave;ng t&igrave;m đến n&oacute; nằm hết trong độ b&eacute;o nhẹ v&agrave; vị của socola. Đương nhi&ecirc;n, với mức độ y&ecirc;u th&iacute;ch n&agrave;y th&igrave; bạn v&ocirc; tư cho v&agrave;o menu m&agrave; kh&ocirc;ng sợ ế.</span></span><br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />&nbsp;</div>
<div style="box-sizing: border-box; border: 0px; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #383f47; font-family: ''times new roman'', times, serif; background-color: #ffffff; text-align: center;"><img style="box-sizing: border-box; vertical-align: middle; border: 0px; max-width: 100%; justify-content: center; justify-items: center; margin: 0px auto; padding: 0px; outline: none; display: block; height: 600px; width: 500px;" src="http://nguyenlieuantoan.com/assets/ckfinder/uploads/images/%E1%BA%A2NH%20TR%C3%80%20S%E1%BB%AEA/menu-cac-loai-tra-sua-socola.jpg" alt="Tr&agrave; sữa socola " /><br style="box-sizing: border-box;" /><span style="box-sizing: border-box; border: 0px; font-size: 18px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><span style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;"><em style="box-sizing: border-box; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; font-weight: 600;">Menu c&aacute;c loại tr&agrave; sữa socola</em></span></span></div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (5, N'Sữa tươi trân châu đường đen', CAST(30000 AS Decimal(18, 0)), CAST(30000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 37, 1, 1, N'sưa-tuoi-tc-đường-đen.jpg', 1, N'Uống 1 lần mà đã thấy nghiện là lỗi của bạn vì dễ tính. Nhưng ngày nào cũng uống là lỗi của FeelingTea vì đã làm ra sản phẩm đường đen quá ngon', N'<div class="elementor-element elementor-element-be7578b elementor-widget elementor-widget-woocommerce-product-title elementor-page-title elementor-widget-heading" style="box-sizing: border-box; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); display: var(--page-title-display); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; width: 550px; margin-bottom: 20px; color: #333333; font-family: Lato, sans-serif; font-size: 16px; background-color: #f5f5f5;" data-id="be7578b" data-element_type="widget" data-widget_type="woocommerce-product-title.default">
<div class="elementor-widget-container" style="box-sizing: border-box; transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s);">
<h1 class="product_title entry-title elementor-heading-title elementor-size-default" style="box-sizing: border-box; margin: 0px; font-family: ''Bebas Neue'', sans-serif; line-height: 1; color: #644528; font-size: 42px; padding: 0px; display: var(--page-title-display); clear: none;">Sữa tươi tr&acirc;n ch&acirc;u đường đen</h1>
</div>
</div>
<div class="elementor-element elementor-element-7d8e555 elementor-widget elementor-widget-woocommerce-product-content" style="box-sizing: border-box; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; flex-basis: var(--flex-basis); flex-grow: var(--flex-grow); flex-shrink: var(--flex-shrink); order: var(--order); align-self: var(--align-self); flex-direction: var(--flex-direction); flex-wrap: var(--flex-wrap); justify-content: var(--justify-content); align-items: var(--align-items); align-content: var(--align-content); gap: var(--gap); position: relative; --swiper-theme-color: #000; --swiper-navigation-size: 44px; --swiper-pagination-bullet-size: 6px; --swiper-pagination-bullet-horizontal-gap: 6px; color: var( --e-global-color-text ); font-family: Lato, sans-serif; width: 550px; margin-bottom: 20px; font-size: 16px; background-color: #f5f5f5;" data-id="7d8e555" data-element_type="widget" data-widget_type="woocommerce-product-content.default">
<div class="elementor-widget-container" style="box-sizing: border-box; transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,transform var(--e-transform-transition-duration,.4s); margin: 0px 0px -21px;">
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.9rem;">❌❌Uống 1 lần m&agrave; đ&atilde; thấy nghiện l&agrave; lỗi của bạn v&igrave; dễ t&iacute;nh. Nhưng ng&agrave;y n&agrave;o cũng uống l&agrave; lỗi của FeelingTea v&igrave; đ&atilde; l&agrave;m ra sản phẩm đường đen qu&aacute; ngon ‼️</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.9rem;">?L&agrave; anh em với họ nh&agrave; tr&agrave; sữa nhưng sữa tươi tr&acirc;n ch&acirc;u đường đen c&oacute; th&agrave;nh phần mới lạ, kh&aacute;c biệt so với tr&agrave; sữa truyền thống, đ&oacute; l&agrave; sự kết hợp giữa sữa tươi thanh tr&ugrave;ng kh&ocirc;ng đường v&agrave; tr&acirc;n ch&acirc;u thơm đậm vị đường đen tạo n&ecirc;n sức h&uacute;t kh&oacute; cưỡng.</p>
<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0.9rem;">?Ngo&agrave;i sữa tươi tr&acirc;n ch&acirc;u đường đen th&ocirc;ng thường, FeelingTea c&ograve;n c&oacute; th&ecirc;m 3 loại cũng thuộc d&ograve;ng seri đường đen l&agrave; :<br style="box-sizing: border-box;" />?Matcha sữa tươi tr&acirc;n ch&acirc;u đường đen<br style="box-sizing: border-box;" />?Chocolate sữa tươi tr&acirc;n ch&acirc;u đường đen<br style="box-sizing: border-box;" />?B&aacute; tước sữa tươi tr&acirc;n ch&acirc;u đường đen</p>
</div>
</div>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (6, N'Trân châu trắng', CAST(5000 AS Decimal(18, 0)), CAST(5000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 34, 6, 1, N'cach-lam-tran-chau-trang.jpg', 1, N'Trân Châu Trắng: Topping “Thanh Tao” Cho Thức Uống Hoàn Hảo', N'<p><span style="color: #373737; font-family: Montserrat, sans-serif; font-size: 15.68px; background-color: #fcf9f0;">Tr&acirc;n ch&acirc;u đen l&agrave; &ldquo;vua&rdquo; của topping tr&agrave; sữa, nhưng tr&acirc;n ch&acirc;u trắng mới l&agrave; &ldquo;qu&yacute; tộc&rdquo; trong l&ograve;ng t&iacute;n đồ uống đẹp, nhẹ, v&agrave; c&oacute; kết cấu sần sật tinh tế. Kh&ocirc;ng chỉ đẹp mắt, tr&acirc;n ch&acirc;u trắng c&ograve;n dễ kết hợp với nhiều thức uống kh&aacute;c nhau, đặc biệt l&agrave; c&aacute;c d&ograve;ng thanh m&aacute;t, trong trẻo, &iacute;t b&eacute;o</span></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (7, N'Pudding trứng', CAST(5000 AS Decimal(18, 0)), CAST(5000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 12, 7, 1, N'tải xuống (20).jfif', 1, N'Pudding trứng là một món tráng miệng mềm mịn, thơm ngon và giàu dinh dưỡng, thường được làm từ trứng, sữa', N'<p style="margin: 0px 0px 15px; padding: 0px; box-sizing: border-box; margin-block: 0px; text-rendering: geometricprecision; font-size: 15px; line-height: 1.5; color: #101010; font-family: ''Helvetica Neue'', Helvetica, Arial, ''SF Pro Display'', sans-serif; background-color: #ffffff;"><span style="color: #001d35; font-family: ''Google Sans'', Arial, sans-serif; font-size: 18px;" data-huuid="12353213805779668084">Pudding trứng&nbsp;<mark class="QVRyCf" style="border-radius: 4px; padding: 0px 2px;">l&agrave; một m&oacute;n tr&aacute;ng miệng mềm mịn, thơm ngon v&agrave; gi&agrave;u dinh dưỡng, thường được l&agrave;m từ trứng, sữa, đường v&agrave; c&aacute;c nguy&ecirc;n liệu kh&aacute;c như bột hoặc gelatin để tạo độ đặc</mark>.&nbsp;</span><span style="color: #001d35; font-family: ''Google Sans'', Arial, sans-serif; font-size: 18px;" data-huuid="12353213805779666175">C&oacute; nhiều c&aacute;ch l&agrave;m pudding trứng kh&aacute;c nhau, t&ugrave;y thuộc v&agrave;o nguy&ecirc;n liệu v&agrave; c&aacute;ch chế biến, v&iacute; dụ như pudding trứng hấp, pudding trứng lạnh, hoặc pudding trứng trong tr&agrave; sữa.</span></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (8, N'Trà sữa Oreo Cake Cream', CAST(35000 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 10, 1, 1, N'cac-loai-tra-sua-ngon (3).jpg', 1, N'Trà sữa Oreo Cake Cream thơm béo, hấp dẫn giới trẻ', N'<h3 style="box-sizing: border-box; font-family: Myriad-Pro, Arial; font-weight: 500; line-height: 1.1; color: #333333; margin-top: 20px; margin-bottom: 10px; font-size: 24px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; font-weight: bold;"><span style="box-sizing: border-box; transition: all 0.5s ease 0s; color: #cc6600;">Tr&agrave; sữa Oreo Cake Cream</span></span></h3>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: Myriad-Pro, Arial; font-size: 16px; background-color: #ffffff; text-align: center;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: 428px; width: 600px;" src="https://menuonline.vn/public/responsive_filemanager/source/tin-tuc/cac-loai-tra-sua-ngon/cac-loai-tra-sua-ngon%20(3).jpg" alt="tr&agrave; sữa ngon nhất hiện nay" longdesc="https://menuonline.vn/Tr%C3%A0%20s%E1%BB%AFa%20Oreo%20Cake%20Cream%20th%C6%A1m%20b%C3%A9o,%20h%E1%BA%A5p%20d%E1%BA%ABn%20gi%E1%BB%9Bi%20tr%E1%BA%BB" /></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: Myriad-Pro, Arial; font-size: 16px; background-color: #ffffff; text-align: center;"><em style="box-sizing: border-box;">Tr&agrave; sữa Oreo Cake Cream thơm b&eacute;o, hấp dẫn giới trẻ</em></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: Myriad-Pro, Arial; font-size: 16px; background-color: #ffffff; text-align: justify;">Trong số c&aacute;c loại tr&agrave; sữa ngon th&igrave; tr&agrave; sữa Oreo Cake Cream l&agrave; một loại thức uống th&uacute; vị v&agrave; kh&aacute; mới lạ với nhiều người. Tr&agrave; sữa Oreo Cake Cream l&agrave; tr&agrave; sữa th&ocirc;ng thường nhưng kh&ocirc;ng d&ugrave;ng bột pha trực tiếp, tạo n&ecirc;n vị tr&agrave; thơm, ch&aacute;t c&ugrave;ng ch&uacute;t b&eacute;o của sữa. Tr&agrave; sữa Oreo Cake Cream được phủ th&ecirc;m một lớp cake cream v&agrave;ng nhạt ph&iacute;a tr&ecirc;n v&agrave; xung quanh th&agrave;nh cốc. Ly tr&agrave; sữa sẽ th&ecirc;m phần hấp dẫn với những miếng b&aacute;nh Oreo được nghiền nhỏ, rải l&ecirc;n ph&iacute;a tr&ecirc;n lớp kem. Tr&agrave; sữa Oreo Cake Cream l&agrave; thức uống v&ocirc; c&ugrave;ng th&iacute;ch hợp cho những người th&iacute;ch vị b&eacute;o ngậy của kem cheese, ngọt của vụn b&aacute;nh Oreo v&agrave; vị ch&aacute;t của tr&agrave;.</p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (9, N'Trà sữa việt quất ', CAST(35000 AS Decimal(18, 0)), CAST(35000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 31, 3, 1, N'sua-lac-viet-quat-2-FILEminimizer-1-768x512.jpg', 1, N'Trà sữa việt quất là thức uống lạnh, thường được pha chế từ trà đen, trà xanh hoặc hồng trà, kèm thêm sữa tươi và nước cốt nguyên chất của việt quất', N'<h3 style="box-sizing: border-box; color: #555555; width: 847.5px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Inter, sans-serif; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Tr&agrave; sữa việt quất&nbsp;</span></h3>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box;">Tr&agrave; sữa việt quất l&agrave; thức uống lạnh, thường được pha chế từ tr&agrave; đen, tr&agrave; xanh hoặc&nbsp;</span><span style="box-sizing: border-box;">hồng tr&agrave;, k&egrave;m th&ecirc;m sữa tươi v&agrave; nước cốt nguy&ecirc;n chất của việt quất.</span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box;">Tr&agrave; sữa việt quất c&oacute; m&agrave;u t&iacute;m đậm đ&agrave; v&agrave; c&oacute; vị ngọt, thơm v&agrave; hơi chua của quả việt quất. Thức uống n&agrave;y thường được phục vụ với đ&aacute; vi&ecirc;n v&agrave; bột tr&agrave; xanh hoặc tr&agrave; đen được trộn lẫn trong nước sữa. Ngo&agrave;i ra, c&oacute; thể th&ecirc;m c&aacute;c loại tr&acirc;n ch&acirc;u, khoai m&ocirc;n, hoặc pudding để tăng th&ecirc;m sự phong ph&uacute; cho thức uống.</span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box;">Tr&agrave; sữa việt quất kh&ocirc;ng chỉ mang lại hương vị thơm ngon m&agrave; c&ograve;n c&oacute; lợi cho sức khỏe. Tr&agrave; xanh v&agrave; tr&agrave; đen đều c&oacute; t&aacute;c dụng giảm căng thẳng v&agrave; mệt mỏi, đồng thời c&ograve;n c&oacute; khả năng tăng cường hệ miễn dịch. Quả việt quất cũng chứa nhiều chất chống oxy h&oacute;a, gi&uacute;p ngăn ngừa c&aacute;c bệnh tật v&agrave; bảo vệ cơ thể khỏi c&aacute;c t&aacute;c nh&acirc;n g&acirc;y hại.</span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><img class="aligncenter wp-image-2301" style="box-sizing: border-box; height: auto; max-width: 100%; border-style: none; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto; contain-intrinsic-size: 3000px 1500px;" src="http://xingfuvietnam.vn/wp-content/uploads/2023/03/sua-lac-viet-quat-2-FILEminimizer-1.jpg" sizes="auto, (max-width: 749px) 100vw, 749px" srcset="https://xingfuvietnam.vn/wp-content/uploads/2023/03/sua-lac-viet-quat-2-FILEminimizer-1.jpg 1152w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/sua-lac-viet-quat-2-FILEminimizer-1-600x400.jpg 600w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/sua-lac-viet-quat-2-FILEminimizer-1-300x200.jpg 300w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/sua-lac-viet-quat-2-FILEminimizer-1-1024x683.jpg 1024w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/sua-lac-viet-quat-2-FILEminimizer-1-150x100.jpg 150w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/sua-lac-viet-quat-2-FILEminimizer-1-768x512.jpg 768w" alt="menu-tra-sua-trai-cay" width="749" height="499" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff; text-align: center;"><em style="box-sizing: border-box;">Tr&agrave; sữa tr&aacute;i c&acirc;y việt quất&nbsp;</em></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box;">Với hương vị ngon v&agrave; lợi &iacute;ch cho sức khỏe, tr&agrave; sữa việt quất đ&atilde; trở th&agrave;nh một lựa chọn phổ biến cho c&aacute;c t&iacute;n đồ của thức uống lạnh, đặc biệt l&agrave; trong những ng&agrave;y h&egrave; n&oacute;ng bức.</span></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (10, N'Trà sữa long nhãn táo đỏ ', CAST(40000 AS Decimal(18, 0)), CAST(40000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 15, 3, 2, N'tra-long-nhan-tao-do-2-FILEminimizer-1-768x512.jpg', 1, N'Trà sữa long nhãn táo đỏ là một loại thức uống phổ biến được yêu thích ở nhiều quốc gia trên thế giới, đặc biệt là ở Đài Loan và Việt Nam', N'<h3 style="box-sizing: border-box; color: #555555; width: 847.5px; margin-top: 0px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Inter, sans-serif; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bolder;">Tr&agrave; sữa long nh&atilde;n t&aacute;o đỏ&nbsp;</span></h3>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box;">Tr&agrave; sữa long nh&atilde;n t&aacute;o đỏ l&agrave; một loại thức uống phổ biến được y&ecirc;u th&iacute;ch ở nhiều quốc gia tr&ecirc;n thế giới, đặc biệt l&agrave; ở Đ&agrave;i Loan v&agrave; Việt Nam. Tr&agrave; sữa n&agrave;y được l&agrave;m từ tr&agrave; đen hoặc tr&agrave; xanh pha chế với sữa tươi v&agrave; đường, sau đ&oacute; được trộn với long nh&atilde;n tươi v&agrave; t&aacute;o đỏ cắt nhỏ để tạo ra một hương vị độc đ&aacute;o v&agrave; thơm ngon.</span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box;">Long nh&atilde;n l&agrave; một loại quả nhỏ, tr&ograve;n, m&agrave;u đỏ tươi, c&oacute; vị ngọt v&agrave; thơm, được trồng ở nhiều nước ch&acirc;u &Aacute;. T&aacute;o đỏ c&oacute; m&agrave;u đỏ s&aacute;ng, gi&ograve;n v&agrave; ngọt ng&agrave;o. Khi được kết hợp với tr&agrave; v&agrave; sữa, long nh&atilde;n v&agrave; t&aacute;o đỏ tạo th&agrave;nh một hỗn hợp thơm ngon v&agrave; tinh tế.</span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><span style="box-sizing: border-box;">Tr&agrave; sữa long nh&atilde;n t&aacute;o đỏ thường được phục vụ với đ&aacute; vi&ecirc;n v&agrave; tr&acirc;n ch&acirc;u, tạo ra một cảm gi&aacute;c m&aacute;t lạnh v&agrave; th&uacute; vị cho người thưởng thức. Điểm nổi bật của loại tr&agrave; sữa n&agrave;y l&agrave; hương vị độc đ&aacute;o, h&agrave;i h&ograve;a giữa vị ngọt của sữa v&agrave; đường, vị chua của tr&agrave; v&agrave; vị thơm của long nh&atilde;n v&agrave; t&aacute;o đỏ.</span></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff;"><img class="aligncenter wp-image-2302" style="box-sizing: border-box; height: auto; max-width: 100%; border-style: none; display: block; vertical-align: middle; transition: opacity 1s ease 0s; opacity: 1; clear: both; margin: 0px auto; contain-intrinsic-size: 3000px 1500px;" src="http://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-long-nhan-tao-do-2-FILEminimizer-1.jpg" sizes="auto, (max-width: 749px) 100vw, 749px" srcset="https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-long-nhan-tao-do-2-FILEminimizer-1.jpg 1152w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-long-nhan-tao-do-2-FILEminimizer-1-600x400.jpg 600w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-long-nhan-tao-do-2-FILEminimizer-1-300x200.jpg 300w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-long-nhan-tao-do-2-FILEminimizer-1-1024x683.jpg 1024w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-long-nhan-tao-do-2-FILEminimizer-1-150x100.jpg 150w, https://xingfuvietnam.vn/wp-content/uploads/2023/03/tra-long-nhan-tao-do-2-FILEminimizer-1-768x512.jpg 768w" alt="tra-long-nhan-tao-do" width="749" height="499" /></p>
<p style="box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #333333; font-family: Inter, sans-serif; font-size: 16px; background-color: #ffffff; text-align: center;"><em style="box-sizing: border-box;">Tr&agrave; sữa long nh&atilde;n t&aacute;o đỏ l&agrave; một lựa chọn tuyệt vời cho những người y&ecirc;u th&iacute;ch tr&agrave; sữa v&agrave; muốn thử một hương vị mới lạ v&agrave; độc đ&aacute;o.</em></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (11, N'Trà sữa xoài kem cheese', CAST(40000 AS Decimal(18, 0)), CAST(40000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 20, 4, 1, N'cac-loai-tra-sua-ngon (4).jpg', 1, N'Trà sữa xoài kem cheese chua chua, ngọt ngọt vô cùng chuẩn vị', N'<h3 style="box-sizing: border-box; font-family: Myriad-Pro, Arial; font-weight: 500; line-height: 1.1; color: #333333; margin-top: 20px; margin-bottom: 10px; font-size: 24px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; color: #cc6600;"><span style="box-sizing: border-box; font-weight: bold;">Tr&agrave; sữa xo&agrave;i kem cheese</span></span></h3>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: Myriad-Pro, Arial; font-size: 16px; background-color: #ffffff; text-align: center;"><img style="box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%; height: 375px; width: 600px;" src="https://menuonline.vn/public/responsive_filemanager/source/tin-tuc/cac-loai-tra-sua-ngon/cac-loai-tra-sua-ngon%20(4).jpg" alt="tr&agrave; sữa g&igrave; ngon" longdesc="https://menuonline.vn/Tr%C3%A0%20s%E1%BB%AFa%20xo%C3%A0i%20kem%20cheese%20chua%20chua,%20ng%E1%BB%8Dt%20ng%E1%BB%8Dt%20v%C3%B4%20c%C3%B9ng%20chu%E1%BA%A9n%20v%E1%BB%8B" /></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: Myriad-Pro, Arial; font-size: 16px; background-color: #ffffff; text-align: center;"><em style="box-sizing: border-box;">Tr&agrave; sữa xo&agrave;i kem cheese chua chua, ngọt ngọt v&ocirc; c&ugrave;ng chuẩn vị</em></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; transition: all 0.5s ease 0s; color: #333333; font-family: Myriad-Pro, Arial; font-size: 16px; background-color: #ffffff; text-align: justify;">Một trong c&aacute;c loại tr&agrave; sữa ngon của c&aacute;c t&iacute;n đồ kem cheese l&agrave; tr&agrave; sữa xo&agrave;i kem cheese. Tr&agrave; sữa xo&agrave;i kem cheese bao gồm nguy&ecirc;n liệu l&agrave; tr&agrave;, sữa, xo&agrave;i tươi, kem cheese, tạo n&ecirc;n loại thức uống độc đ&aacute;o c&oacute; vị ngọt đặc trưng của xo&agrave;i, ch&uacute;t vị b&eacute;o, mặn mặn của lớp kem cheese, khiến nhiều người m&ecirc; mẩn. Điểm đặc trưng của tr&agrave; sữa xo&agrave;i kem cheese so với c&aacute;c loại tr&agrave; sữa kh&aacute;c l&agrave; vẻ bề ngo&agrave;i với m&agrave;u v&agrave;ng đậm bắt mắt, kết hợp c&ugrave;ng lớp kem cheese trắng hấp dẫn ph&iacute;a tr&ecirc;n.</p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (12, N'Trân Châu Đen', CAST(5000 AS Decimal(18, 0)), CAST(5000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 11, 5, 1, N'Tran-Chau-Den.png', 1, N'Trân Châu Đen', N'<h2 class="product_title entry-title elementor-heading-title elementor-size-default" style="box-sizing: border-box; margin-block: 0.5rem 1rem; font-family: Quicksand, sans-serif; font-weight: 500; line-height: 1; color: #333333; font-size: 2rem; padding: 0px; margin: 0px; clear: none; background-color: #ffffff;">Tr&acirc;n Ch&acirc;u Đen</h2>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (13, N'iPhone 14 Plus', CAST(18990000 AS Decimal(18, 0)), CAST(19000000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 15, 6, 2, N'iphone-14-plus-purple-650x650.png', 0, N'iPhone 14 Plus. Nghĩ lớn cùng màn hình 6.7 inch lớn hơn1 và thời lượng pin bền bỉ cả ngày', N'<p style="margin: 0px 0px 15px; padding: 0px; box-sizing: border-box; margin-block: 0px; text-rendering: geometricprecision; font-size: 15px; line-height: 1.5; color: #101010; font-family: ''Helvetica Neue'', Helvetica, Arial, ''SF Pro Display'', sans-serif; background-color: #ffffff;"><img class=" lazyloaded" style="margin: 0px; padding: 0px; box-sizing: border-box; border: 0px; display: block; height: auto; width: 680px;" title="iPhone 14 Plus - Chuyển đổi" src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-tz-chuyen-doi.jpg" alt="iPhone 14 Plus - Chuyển đổi" data-src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-tz-chuyen-doi.jpg" /></p>
<p style="margin: 0px 0px 15px; padding: 0px; box-sizing: border-box; margin-block: 0px; text-rendering: geometricprecision; font-size: 15px; line-height: 1.5; color: #101010; font-family: ''Helvetica Neue'', Helvetica, Arial, ''SF Pro Display'', sans-serif; background-color: #ffffff;"><img class=" lazyloaded" style="margin: 0px; padding: 0px; box-sizing: border-box; border: 0px; display: block; height: auto; width: 680px;" title="iPhone 14 Plus M&agrave;u sắc" src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-l-1.jpg" alt="iPhone 14 Plus M&agrave;u sắc" data-src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-l-1.jpg" /><img class=" lazyloaded" style="margin: 0px; padding: 0px; box-sizing: border-box; border: 0px; display: block; height: auto; width: 680px;" title="iPhone 14 Plus Thiết kế" src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-l-2.jpg" alt="iPhone 14 Plus Thiết kế" data-src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-l-2.jpg" /><img class=" lazyloaded" style="margin: 0px; padding: 0px; box-sizing: border-box; border: 0px; display: block; height: auto; width: 680px;" title="iPhone 14 Plus An to&agrave;n" src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-l-3.jpg" alt="iPhone 14 Plus An to&agrave;n" data-src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-l-3.jpg" /><img class=" lazyloaded" style="margin: 0px; padding: 0px; box-sizing: border-box; border: 0px; display: block; height: auto; width: 680px;" title="iPhone 14 Plus Camera" src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-l-4.jpg" alt="iPhone 14 Plus Camera" data-src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-l-4.jpg" /><img class=" lazyloaded" style="margin: 0px; padding: 0px; box-sizing: border-box; border: 0px; display: block; height: auto; width: 680px;" title="iPhone 14 Plus Chip" src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-l-5.jpg" alt="iPhone 14 Plus Chip" data-src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-l-5.jpg" /><img class=" lazyloaded" style="margin: 0px; padding: 0px; box-sizing: border-box; border: 0px; display: block; height: auto; width: 680px;" title="iPhone 14 Plus So s&aacute;nh" src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-l-6.jpg" alt="iPhone 14 Plus So s&aacute;nh" data-src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-l-6.jpg" /><img class=" lazyloaded" style="margin: 0px; padding: 0px; box-sizing: border-box; border: 0px; display: block; height: auto; width: 680px;" title="iPhone 14 Plus Tiện &iacute;ch" src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-l-7.jpg" alt="iPhone 14 Plus Tiện &iacute;ch" data-src="https://cdn.tgdd.vn/Products/Images/42/245545/s16/iphone-14-plus-l-7.jpg" /></p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (14, N'Chuột không dây Logitech Lift', CAST(1220000 AS Decimal(18, 0)), CAST(1300000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 7, 10, 1, N'chuot-khong-day-logitech-lift-vertical-111124-043930-748-650x650.png', 0, N'Chuột không dây Logitech Lift Vertical', N'<ul class="text-specifi active" style="margin: 0px; padding: 0px; box-sizing: border-box; list-style: none; overflow: hidden; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, ''SF Pro Display'', sans-serif; font-size: 14px; background-color: #ffffff;">
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Tương th&iacute;ch:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="comma" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Windows</span><span class="comma" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">ChromeOS</span><span class="comma" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Android</span><span class="comma" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">MacOS (MacBook, iMac)</span><span class="comma" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Linux</span><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">iPadOS</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Độ ph&acirc;n giải tối đa:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">4000 DPI</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">C&aacute;ch kết nối:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="comma" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Bluetooth</span><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Đầu thu USB Receiver</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Độ d&agrave;i d&acirc;y/Khoảng c&aacute;ch kết nối:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">10 m</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Ứng dụng điều khiển:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Logitech Options+</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Loại pin:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">1 vi&ecirc;n pin AA</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Khối lượng:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">125 g</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Thương hiệu của:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Thụy Sĩ</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px 0px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 0px;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Sản xuất tại:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Trung Quốc</span></aside>
</li>
</ul>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (15, N'Bàn phím Apple Magic Keyboard', CAST(4690000 AS Decimal(18, 0)), CAST(4700000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 10, 9, 1, N'ban-phim-apple-magic-keyboard-usb-c-touch-id-co-phim-so-den-1-638678702589577363-650x650.jpg', 0, N'Bàn phím Apple Magic Keyboard USB C Touch ID có phím số', N'<ul class="text-specifi active" style="margin: 0px; padding: 0px; box-sizing: border-box; list-style: none; overflow: hidden; color: #333333; font-family: ''Helvetica Neue'', Helvetica, Arial, ''SF Pro Display'', sans-serif; font-size: 14px; background-color: #ffffff;">
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Tương th&iacute;ch:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="comma" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">MacOS 15.1 trở l&ecirc;n</span><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">iPadOS 18.1 trở l&ecirc;n</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">C&aacute;ch kết nối:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="comma" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Bluetooth</span><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Kết nối c&oacute; d&acirc;y qua cổng Type-C</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Độ d&agrave;i d&acirc;y / Khoảng c&aacute;ch kết nối:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Loại switch:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Kiểu b&agrave;n ph&iacute;m:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Số ph&iacute;m:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">110 Ph&iacute;m</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Chất liệu keycaps:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Cổng sạc:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">USB Type-C</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Thời gian sạc đầy:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Thời gian sử dụng:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Khoảng 1 th&aacute;ng</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Phần mềm hỗ trợ:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">H&atilde;ng kh&ocirc;ng c&ocirc;ng bố</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">K&iacute;ch thước:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">D&agrave;i 41.87 cm - Rộng 11.49 cm - Cao 0.41&ndash;1.09 cm - Nặng 369 g</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 1px solid #e5e5e5;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Sản xuất tại:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Trung Quốc</span></aside>
</li>
<li style="margin: 0px; padding: 20px 10px 0px; box-sizing: border-box; display: block; overflow: hidden; border-bottom: 0px;">
<aside style="margin: 0px 30px 0px 0px; padding: 0px; box-sizing: border-box; float: left; width: 150px;"><span style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Thương hiệu của:</span></aside>
<aside style="margin: 0px; padding: 0px; box-sizing: border-box; overflow: hidden;"><span class="" style="margin: 0px; padding: 0px; box-sizing: border-box; display: block; overflow: hidden; font-size: 15px; line-height: 20px; color: #101010;">Mỹ</span></aside>
</li>
</ul>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (16, N'Thạch phô mai', CAST(5000 AS Decimal(18, 0)), CAST(5000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 21, 8, 1, N'thach-pho-mai.jpg', 1, N'Thạch phô mai', N'<p>Thạch ph&ocirc; mai</p>')
INSERT [dbo].[Item] ([ID], [Name], [PurcharsePrice], [SellPrice], [DateImport], [Quantity], [TypeID], [BrandID], [Picture], [Active], [ShortTitle], [Describe]) VALUES (19, N'Laptop ASUS ', CAST(21000000 AS Decimal(18, 0)), CAST(23000000 AS Decimal(18, 0)), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 10, 3, 2, N'laptop-asus-zenbook-14-ux425ea-ki429t-5-ksp.jpg', 0, N'Laptop ASUS ZenBook 14 UX425EA-KI429T - Hiện đại và đa năng', N'<h2 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: sans-serif; line-height: 1.2; color: #0a263c; font-size: 21px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Laptop ASUS ZenBook 14 UX425EA-KI429T - Hi&ecirc;̣n đại và đa năng</span></h2>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 15px; line-height: 1.5; color: #444444; font-family: sans-serif; background-color: #ffffff; text-align: justify;"><em style="box-sizing: border-box; margin: 0px; padding: 0px;">Hi&ecirc;̣u năng vượt tr&ocirc;̣i, thi&ecirc;́t k&ecirc;́ hi&ecirc;̣n đại cùng ph&acirc;̀n cứng đa năng chính là những y&ecirc;́u t&ocirc;́ làm n&ecirc;n&nbsp;</em><em style="box-sizing: border-box; margin: 0px; padding: 0px;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;"><a style="box-sizing: border-box; margin: 0px; padding: 0px; background-color: transparent; color: #d70018; text-decoration-line: none;" title="Laptop Asus Zenbook" href="https://cellphones.com.vn/laptop/asus/zenbook.html">laptop ASUS ZenBook</a>&nbsp;14 UX425EA-KI429T</span>&nbsp;- sản ph&acirc;̉m laptop doanh nh&acirc;n được ưa chu&ocirc;̣ng khắp nơi.</em></p>
<h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: sans-serif; font-weight: 500; line-height: 1.2; color: #0a263c; font-size: 1.75rem; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Vẻ ngoài hi&ecirc;̣n đại và cứng cáp với màn hình 14 inch FHD</span></h3>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 15px; line-height: 1.5; color: #444444; font-family: sans-serif; background-color: #ffffff; text-align: justify;">Laptop ASUS ZenBook UX425EA-KI429T mang thi&ecirc;́t k&ecirc;́ của m&ocirc;̣t chi&ecirc;́c laptop doanh nh&acirc;n: hi&ecirc;̣n đại, cứng cáp và linh hoạt. Vẻ ngoài của ASUS ZenBook UX425EA-KI429T mang t&ocirc;ng xám chủ đạo, cùng mặt lưng ánh kim đ&ocirc;̀ng t&acirc;m trứ danh của ASUS và được bao phủ bởi lớp vỏ hợp kim nguy&ecirc;n kh&ocirc;́i cứng cáp. Trọng lượng si&ecirc;u nhẹ của máy sẽ đáp ứng nhu c&acirc;̀u làm vi&ecirc;̣c linh hoạt và ti&ecirc;̣n lợi.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 15px; line-height: 1.5; color: #444444; font-family: sans-serif; background-color: #ffffff; text-align: justify;">K&ecirc;́t c&acirc;́u bàn phím và trackpad tr&ecirc;n laptop ASUS ZenBook UX425EA-KI429T được t&ocirc;́i ưu cho những thao tác làm vi&ecirc;̣c nhanh nhạy. Đặc bi&ecirc;̣t, b&ecirc;̀ mặt trackpad còn hi&ecirc;̣n di&ecirc;̣n b&ocirc;̣ phím s&ocirc;́ ảo NumberPad 2.0 góp ph&acirc;̀n gia tăng tính nhanh nhạy trong thao tác nh&acirc;̣p s&ocirc;́ li&ecirc;̣u.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 15px; line-height: 1.5; color: #444444; font-family: sans-serif; background-color: #ffffff; text-align: justify;"><img class="cpslazy loaded" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: top; opacity: 1; transition: opacity 0.3s ease 0s;" src="https://cdn.cellphones.com.vn/media/wysiwyg/laptop/laptop-asus-zenbook-ux425ea-ki429t-1.jpg" alt="Laptop ASUS ZenBook 14 UX425EA-KI429T" data-src="https://cdn.cellphones.com.vn/media/wysiwyg/laptop/laptop-asus-zenbook-ux425ea-ki429t-1.jpg" data-ll-status="loaded" /></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 15px; line-height: 1.5; color: #444444; font-family: sans-serif; background-color: #ffffff; text-align: justify;">Laptop ASUS ZenBook UX425EA-KI429T được trang bị màn hình hi&ecirc;̉n thị có kích thước 14 inch, đ&ocirc;̣ ph&acirc;n giải Full HD (1920 x 1080) cho ch&acirc;́t lượng ảnh sắc nét ở mọi góc đ&ocirc;̣. Thi&ecirc;́t k&ecirc;́ vi&ecirc;̀n bezel mỏng hai b&ecirc;n, k&ecirc;́t hợp cùng đ&ocirc;̣ hi&ecirc;̉n thị màu 100% sRGB và tính năng ch&ocirc;́ng chói sáng sẽ h&ocirc;̃ trợ bạn theo dõi hình ảnh chính xác, đ&acirc;̀y đủ và rõ ràng.</p>
<h3 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: sans-serif; font-weight: 500; line-height: 1.2; color: #0a263c; font-size: 1.75rem; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; margin: 0px; padding: 0px; font-weight: bold;">Vi xử lý mạnh mẽ kèm ti&ecirc;̣n ích ph&acirc;̀n cứng l&acirc;̃n ph&acirc;̀n m&ecirc;̀m</span></h3>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 15px; line-height: 1.5; color: #444444; font-family: sans-serif; background-color: #ffffff; text-align: justify;">Laptop ASUS ZenBook UX425EA-KI429T chứa đựng b&ocirc;̣ CPU Intel core i5 th&ecirc;́ h&ecirc;̣ 11 cùng với h&ecirc;̣ đi&ecirc;̀u hành Windows 10, dung lượng RAM 8 GB và &ocirc;̉ cứng chu&acirc;̉n SSD 512 GB. Với b&ocirc;̣ ph&acirc;̀n cứng tr&ecirc;n, bạn sẽ d&ecirc;̃ dàng thực hi&ecirc;̣n c&ocirc;ng vi&ecirc;̣c m&ocirc;̣t cách mượt mà, nhanh chóng, lu&ocirc;n đảm bảo kịp ti&ecirc;́n đ&ocirc;̣.</p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 15px; line-height: 1.5; color: #444444; font-family: sans-serif; background-color: #ffffff; text-align: justify;"><img class="cpslazy loaded" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: top; opacity: 1; transition: opacity 0.3s ease 0s;" src="https://cdn.cellphones.com.vn/media/wysiwyg/laptop/laptop-asus-zenbook-ux425ea-ki429t-2.jpg" alt="Laptop ASUS ZenBook 14 UX425EA-KI429T" data-src="https://cdn.cellphones.com.vn/media/wysiwyg/laptop/laptop-asus-zenbook-ux425ea-ki429t-2.jpg" data-ll-status="loaded" /></p>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 15px; line-height: 1.5; color: #444444; font-family: sans-serif; background-color: #ffffff; text-align: justify;">Ngoài ra, ti&ecirc;̣n ích ph&acirc;̀n m&ecirc;̀m đi kèm trong laptop ASUS ZenBook UX-425EA-KI429T còn có &acirc;m thanh chu&acirc;̉n Harman Kardon s&ocirc;́ng đ&ocirc;̣ng, cùng tính năng nh&acirc;̣n di&ecirc;̣n khu&ocirc;n mặt Windows Hello tích hợp sẵn. Xung quanh máy được trang bị đ&acirc;̀y đủ phương thức k&ecirc;́t n&ocirc;́i, cũng như chứa đựng vi&ecirc;n pin 4 cell 67Wh giúp máy hoạt đ&ocirc;̣ng dài l&acirc;u.</p>
<h2 style="box-sizing: border-box; margin: 0px 0px 0.5rem; padding: 0px; font-family: sans-serif; line-height: 1.2; color: #0a263c; font-size: 21px; background-color: #ffffff; text-align: justify;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Sở hữu laptop ASUS ZenBook 14 UX425EA-KI429T chính hãng tại CellphoneS</span></h2>
<p style="box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; font-size: 15px; line-height: 1.5; color: #444444; font-family: sans-serif; background-color: #ffffff; text-align: justify;">H&ecirc;̣ th&ocirc;́ng CellphoneS ph&acirc;n ph&ocirc;́i đ&ecirc;́n khách hàng các sản ph&acirc;̉m đi&ecirc;̣n tử chính hãng đa dạng m&acirc;̃u mã, từ những thi&ecirc;́t bị laptop sinh vi&ecirc;n, laptop c&ocirc;ng sở cho đ&ecirc;́n laptop doanh nh&acirc;n như sản ph&acirc;̉m ASUS ZenBook UX425EA-KI429T. Khi chọn mua laptop ASUS ZenBook UX425EA-KI429T tại CellphoneS, ngoài giá giảm h&acirc;́p d&acirc;̃n bạn sẽ có cơ h&ocirc;̣i tham gia vào những chương trình khuy&ecirc;́n mãi dành cho khách hàng mua sắm tại h&ecirc;̣ th&ocirc;́ng. Đ&ecirc;̉ đặt mua sản ph&acirc;̉m với giá t&ocirc;́t, bạn hãy gọi đ&ecirc;́n hotline 1800.2097 đ&ecirc;̉ được tư v&acirc;́n cụ th&ecirc;̉.</p>')
SET IDENTITY_INSERT [dbo].[Item] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemType] ON 

INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (1, N'Trà sữa truyền thống', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (2, N'Trà sữa matcha', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (3, N'Trà sữa trái cây', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (4, N'Trà sữa kem cheese', 2)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (5, N'Trân châu đen', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (6, N'Trân châu trắng', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (7, N'Pudding trứng', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (8, N'Thạch phô mai', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (9, N'Bàn phím', 3)
INSERT [dbo].[ItemType] ([ID], [TypeName], [MenuID]) VALUES (10, N'Chuột', 3)
SET IDENTITY_INSERT [dbo].[ItemType] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (1, N'Loại', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (2, N'Trà sữa', NULL)
INSERT [dbo].[Menu] ([ID], [Name], [Link]) VALUES (3, N'Topping', NULL)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [Orderdate], [Deliverystatus], [Deliverydate], [Status], [Totalprice], [CustomerID]) VALUES (1, CAST(N'2025-06-08T18:10:01.240' AS DateTime), NULL, NULL, 0, CAST(75000 AS Decimal(18, 0)), 2)
INSERT [dbo].[Order] ([ID], [Orderdate], [Deliverystatus], [Deliverydate], [Status], [Totalprice], [CustomerID]) VALUES (2, CAST(N'2025-06-08T18:10:17.370' AS DateTime), NULL, NULL, 0, CAST(35000 AS Decimal(18, 0)), 2)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [Quantity], [ItemId], [OrderID], [Totalprice]) VALUES (1, 1, 1, 1, CAST(35000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [Quantity], [ItemId], [OrderID], [Totalprice]) VALUES (2, 1, 2, 1, CAST(40000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [Quantity], [ItemId], [OrderID], [Totalprice]) VALUES (3, 1, 12, 2, CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ID], [Quantity], [ItemId], [OrderID], [Totalprice]) VALUES (4, 1, 4, 2, CAST(30000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__536C85E467BB9AFE]    Script Date: 8/6/2025 6:49:14 PM ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Item] ADD  DEFAULT (getdate()) FOR [DateImport]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [Orderdate]
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([ID])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [dbo].[ItemType] ([ID])
GO
ALTER TABLE [dbo].[ItemType]  WITH CHECK ADD FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
USE [master]
GO
ALTER DATABASE [websitetrasua] SET  READ_WRITE 
GO
