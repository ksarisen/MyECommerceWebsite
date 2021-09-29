USE [master]
GO
/****** Object:  Database [MyECommerce]    Script Date: 2021-09-29 11:23:36 AM ******/
CREATE DATABASE [MyECommerce]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyECommerce', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MyECommerce.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MyECommerce_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MyECommerce_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MyECommerce] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyECommerce].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyECommerce] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyECommerce] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyECommerce] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyECommerce] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyECommerce] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyECommerce] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyECommerce] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyECommerce] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyECommerce] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyECommerce] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyECommerce] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyECommerce] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyECommerce] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyECommerce] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyECommerce] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MyECommerce] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyECommerce] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyECommerce] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyECommerce] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyECommerce] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyECommerce] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyECommerce] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyECommerce] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MyECommerce] SET  MULTI_USER 
GO
ALTER DATABASE [MyECommerce] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyECommerce] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyECommerce] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyECommerce] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MyECommerce] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MyECommerce] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MyECommerce] SET QUERY_STORE = OFF
GO
USE [MyECommerce]
GO
/****** Object:  Table [dbo].[tblBrands]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBrands](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGender]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGender](
	[GenderID] [int] IDENTITY(1,1) NOT NULL,
	[GenderName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[GenderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductImages]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductImages](
	[PIMGID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Extention] [nvarchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProducts]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProducts](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[PName] [nvarchar](max) NULL,
	[PPrice] [money] NULL,
	[PSelPrice] [money] NULL,
	[PBrandID] [int] NULL,
	[PCategoryID] [int] NULL,
	[PSubCatID] [int] NULL,
	[PGender] [int] NULL,
	[PDescription] [nvarchar](max) NULL,
	[PProductDetails] [nvarchar](max) NULL,
	[PMaterialCare] [nvarchar](max) NULL,
	[FreeDelivery] [int] NULL,
	[30DayRet] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductSizeQuantity]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductSizeQuantity](
	[PrdSizeQuantID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NULL,
	[SizeID] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PrdSizeQuantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSizes]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSizes](
	[SizeID] [int] IDENTITY(1,1) NOT NULL,
	[SizeName] [nvarchar](500) NULL,
	[BrandID] [int] NULL,
	[CategoryID] [int] NULL,
	[SubCategoryID] [int] NULL,
	[GenderID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSubCategory]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSubCategory](
	[SubCatID] [int] IDENTITY(1,1) NOT NULL,
	[SubCatName] [nvarchar](max) NULL,
	[MainCatID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubCatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[Usertype] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblUsers] ADD  DEFAULT ('User') FOR [Usertype]
GO
ALTER TABLE [dbo].[tblProductImages]  WITH CHECK ADD  CONSTRAINT [FK_tblProductImages_ToTable] FOREIGN KEY([PID])
REFERENCES [dbo].[tblProducts] ([PID])
GO
ALTER TABLE [dbo].[tblProductImages] CHECK CONSTRAINT [FK_tblProductImages_ToTable]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_ToTable] FOREIGN KEY([PBrandID])
REFERENCES [dbo].[tblBrands] ([BrandID])
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [FK_tblProducts_ToTable]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_ToTable1] FOREIGN KEY([PCategoryID])
REFERENCES [dbo].[tblCategory] ([CatID])
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [FK_tblProducts_ToTable1]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_ToTable2] FOREIGN KEY([PSubCatID])
REFERENCES [dbo].[tblSubCategory] ([SubCatID])
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [FK_tblProducts_ToTable2]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_ToTable3] FOREIGN KEY([PGender])
REFERENCES [dbo].[tblGender] ([GenderID])
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [FK_tblProducts_ToTable3]
GO
ALTER TABLE [dbo].[tblProductSizeQuantity]  WITH CHECK ADD  CONSTRAINT [FK_tblProductSizeQuantity_ToTable] FOREIGN KEY([PID])
REFERENCES [dbo].[tblProducts] ([PID])
GO
ALTER TABLE [dbo].[tblProductSizeQuantity] CHECK CONSTRAINT [FK_tblProductSizeQuantity_ToTable]
GO
ALTER TABLE [dbo].[tblProductSizeQuantity]  WITH CHECK ADD  CONSTRAINT [FK_tblProductSizeQuantity_ToTable1] FOREIGN KEY([SizeID])
REFERENCES [dbo].[tblSizes] ([SizeID])
GO
ALTER TABLE [dbo].[tblProductSizeQuantity] CHECK CONSTRAINT [FK_tblProductSizeQuantity_ToTable1]
GO
ALTER TABLE [dbo].[tblSizes]  WITH CHECK ADD  CONSTRAINT [FK_tblSizes_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[tblGender] ([GenderID])
GO
ALTER TABLE [dbo].[tblSizes] CHECK CONSTRAINT [FK_tblSizes_Gender]
GO
ALTER TABLE [dbo].[tblSizes]  WITH CHECK ADD  CONSTRAINT [FK_tblSizes_SubCat] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[tblSubCategory] ([SubCatID])
GO
ALTER TABLE [dbo].[tblSizes] CHECK CONSTRAINT [FK_tblSizes_SubCat]
GO
ALTER TABLE [dbo].[tblSizes]  WITH CHECK ADD  CONSTRAINT [FK_tblSizes_ToBrand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[tblBrands] ([BrandID])
GO
ALTER TABLE [dbo].[tblSizes] CHECK CONSTRAINT [FK_tblSizes_ToBrand]
GO
ALTER TABLE [dbo].[tblSizes]  WITH CHECK ADD  CONSTRAINT [FK_tblSizes_ToCat] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tblCategory] ([CatID])
GO
ALTER TABLE [dbo].[tblSizes] CHECK CONSTRAINT [FK_tblSizes_ToCat]
GO
ALTER TABLE [dbo].[tblSubCategory]  WITH CHECK ADD  CONSTRAINT [FK_tblSubCategory_tblCategory] FOREIGN KEY([MainCatID])
REFERENCES [dbo].[tblCategory] ([CatID])
GO
ALTER TABLE [dbo].[tblSubCategory] CHECK CONSTRAINT [FK_tblSubCategory_tblCategory]
GO
/****** Object:  StoredProcedure [dbo].[procBindAllProducts]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[procBindAllProducts]
AS
select A.*,B.*,C.Name ,A.PPrice-A.PSelPrice as DiscAmount,B.Name as ImageName, C.Name as BrandName from tblProducts A
inner join tblBrands C on C.BrandID =A.PBrandID
cross apply(
select top 1 * from tblProductImages B where B.PID= A.PID order by B.PID desc
)B
order by A.PID desc

Return 0
GO
/****** Object:  StoredProcedure [dbo].[procBindAllProductsManPants]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[procBindAllProductsManPants]
AS
select A.*,B.*,C.Name ,A.PPrice-A.PSelPrice as DiscAmount,B.Name as ImageName, C.Name as BrandName 
from tblProducts A
inner join tblBrands C on C.BrandID =A.PBrandID
inner join tblCategory as t2 on t2.CatID=A.PCategoryID
inner join tblSubCategory as t3 on t3.SubCatID=A.PSubCatID
inner join tblGender as t4 on t4.GenderID=A.[PGender]
cross apply(
select top 1 * from tblProductImages B where B.PID= A.PID order by B.PID desc
)B where t2.CatName='Clothing' AND (t3.SubCatName='Trousers') AND t4.GenderName='Men'
order by A.PID desc

Return 0
GO
/****** Object:  StoredProcedure [dbo].[procBindAllProductsManTop]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[procBindAllProductsManTop]
AS
select A.*,B.*,C.Name ,A.PPrice-A.PSelPrice as DiscAmount,B.Name as ImageName, C.Name as BrandName 
from tblProducts A
inner join tblBrands C on C.BrandID =A.PBrandID
inner join tblCategory as t2 on t2.CatID=A.PCategoryID
inner join tblSubCategory as t3 on t3.SubCatID=A.PSubCatID
inner join tblGender as t4 on t4.GenderID=A.[PGender]
cross apply(
select top 1 * from tblProductImages B where B.PID= A.PID order by B.PID desc
)B where t2.CatName='Clothing' AND (t3.SubCatName='T-shirt' OR t3.SubCatName='Shirt') AND t4.GenderName='Men'
order by A.PID desc

Return 0
GO
/****** Object:  StoredProcedure [dbo].[procBindAllProductsWomanLegging]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[procBindAllProductsWomanLegging]
AS
select A.*,B.*,C.Name ,A.PPrice-A.PSelPrice as DiscAmount,B.Name as ImageName, C.Name as BrandName 
from tblProducts A
inner join tblBrands C on C.BrandID =A.PBrandID
inner join tblCategory as t2 on t2.CatID=A.PCategoryID
inner join tblSubCategory as t3 on t3.SubCatID=A.PSubCatID
inner join tblGender as t4 on t4.GenderID=A.[PGender]
cross apply(
select top 1 * from tblProductImages B where B.PID= A.PID order by B.PID desc
)B where t2.CatName='Clothing' AND (t3.SubCatName='Trousers') AND t4.GenderName='Women'
order by A.PID desc

Return 0
GO
/****** Object:  StoredProcedure [dbo].[procBindAllProductsWomanTop]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[procBindAllProductsWomanTop]
AS
select A.*,B.*,C.Name ,A.PPrice-A.PSelPrice as DiscAmount,B.Name as ImageName, C.Name as BrandName 
from tblProducts A
inner join tblBrands C on C.BrandID =A.PBrandID
inner join tblCategory as t2 on t2.CatID=A.PCategoryID
inner join tblSubCategory as t3 on t3.SubCatID=A.PSubCatID
inner join tblGender as t4 on t4.GenderID=A.[PGender]
cross apply(
select top 1 * from tblProductImages B where B.PID= A.PID order by B.PID desc
)B where t2.CatName='Clothing' AND (t3.SubCatName='Shirt' OR t3.SubCatName='T-shirt') AND t4.GenderName='Women'
order by A.PID desc

Return 0
GO
/****** Object:  StoredProcedure [dbo].[SP_BindProductDetails]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BindProductDetails]
(
@PID int
)
AS
SELECT * FROM tblProducts where PID = @PID
GO
/****** Object:  StoredProcedure [dbo].[SP_BindProductImages]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_BindProductImages]
(
@PID int
)
AS
SELECT * FROM tblProductImages where PID = @PID
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertProduct]    Script Date: 2021-09-29 11:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_InsertProduct]
(
@PName nvarchar(MAX),
@PPrice money,
@PSelPrice money,
@PBrandID int,
@PCategoryID int,
@PSubCatID int,
@PGender int,
@PDescription nvarchar(MAX),
@PProductDetails nvarchar(MAX),
@PMaterialCare nvarchar(MAX),
@FreeDelivery int,
@30DayRet int
)
AS

insert into tblProducts values(@PName,@PPrice,@PSelPrice,@PBrandID,@PCategoryID,
@PSubCatID,@PGender,@PDescription,@PProductDetails,@PMaterialCare,@FreeDelivery,
@30DayRet) 
select SCOPE_IDENTITY()
Return 0
GO
USE [master]
GO
ALTER DATABASE [MyECommerce] SET  READ_WRITE 
GO
