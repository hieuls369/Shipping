USE [master]
GO
/****** Object:  Database [Shipping]    Script Date: 3/30/2020 1:44:16 AM ******/
CREATE DATABASE [Shipping]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shipping', FILENAME = N'F:\SQL\MSSQL14.MSSQLSERVER\MSSQL\DATA\Shipping.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Shipping_log', FILENAME = N'F:\SQL\MSSQL14.MSSQLSERVER\MSSQL\DATA\Shipping_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Shipping] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shipping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shipping] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shipping] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shipping] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shipping] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shipping] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shipping] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shipping] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shipping] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shipping] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shipping] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shipping] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shipping] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shipping] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shipping] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shipping] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Shipping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shipping] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shipping] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shipping] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shipping] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shipping] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shipping] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shipping] SET RECOVERY FULL 
GO
ALTER DATABASE [Shipping] SET  MULTI_USER 
GO
ALTER DATABASE [Shipping] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shipping] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shipping] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shipping] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Shipping] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Shipping', N'ON'
GO
ALTER DATABASE [Shipping] SET QUERY_STORE = OFF
GO
USE [Shipping]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/30/2020 1:44:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [varchar](6) NOT NULL,
	[name] [nvarchar](30) NULL,
	[describe] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 3/30/2020 1:44:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[ID] [varchar](8) NOT NULL,
	[name] [nvarchar](100) NULL,
	[cat_ID] [varchar](6) NULL,
	[image] [varchar](100) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[describe] [nvarchar](1000) NULL,
	[status] [nvarchar](20) NULL,
	[adddate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAdmin]    Script Date: 3/30/2020 1:44:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAdmin](
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](20) NULL,
	[Role] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([ID], [name], [describe]) VALUES (N'1', N'Các món ăn chính', N'Cơm rang, Cơm sinh viên, Cơm bình dân,..')
INSERT [dbo].[Categories] ([ID], [name], [describe]) VALUES (N'2', N'Đồ ăn nhanh', N'Xúc xích rán, Khoai tây chiên, Viên chiên,...')
INSERT [dbo].[Categories] ([ID], [name], [describe]) VALUES (N'3', N'Đồ ăn vặt', N'Dew, Coca, String, Pepsi,...')
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'A1', N'Phở Hà Nội', N'1', N'images/CMC/pho.jpg', 30000, 10, N'Phở ngon phải là phở “cổ điển”, nấu bằng thịt bò, nước dùng trong và ngọt. Bánh dẻo mà không nát, thịt mỡ gầu giòn chứ không dai, chanh ớt với hành tây đủ cả.

Rau thơm tươi, hồ tiêu bắc, giọt chanh cốm gắt, lại điểm thêm một ít cà cuống, thoảng nhẹ như một nghi ngờ.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'A2', N'Phở cuốn Hà Nội', N'1', N'images/CMC/phocuon.jpg', 25000, 10, N'Thịt bò được cuốn trong bánh phở lớn, kết hợp với các loại rau thơm, xà lách tạo nên một món ăn hấp dẫn, ngon miệng và được rất nhiều người yêu thích', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'A3', N'Bún thang', N'1', N'images/CMC/bunthang.jpg', 30000, 10, N'Có thể kể ra các nguyên liệu chính: trứng gà rán mỏng thái nhỏ, lườn gà xé, giò lụa thái mỏng, tôm, mực, rau răm, mùi tàu… tất cả được rắc lên trên bát bún đẹp như một bức tranh.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'A4', N'Bún chả', N'1', N'images/CMC/buncha.jpg', 25000, 10, N'Món bún chả của người Hà Nội là bún dùng với tô nước đu đủ muối chua ngọt phía trong là chả miếng, chả viên chín tới, hơi sém chút than nhưng thơm lừng, ngọt thịt, nạc mà không bị khô.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'A5', N'Bún riêu cua', N'1', N'images/CMC/bunieucua.jpg', 30000, 10, N'Bát bún riêu ngon có sự góp mặt của bún trắng, gạch cua nâu hồng, cà chua đỏ, hành xanh, chút mắm tôm cho dậy mùi, hành phi thơm, cầu kỳ hơn có thể thêm đậu rán vàng, miếng giò tai rồi ăn kèm với các thức rau sống như kinh giới, xà lách, rau mùi.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'A6', N'Bún đậu mắm tôm', N'1', N'images/CMC/bundaumamtom.jpg', 30000, 10, N'Bún đậu vốn là món ăn ngon rất bình dân với vài chiếc bún lá cắt nhỏ, một vài thanh đậu cắt nhỏ rán ngập trong mỡ đến giòn và vàng đều thì gắp ra ăn cùng với mắm tôm đã pha chế cùng ớt, đường, chút quất.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'B1', N'Bánh mỳ sốt vang', N'2', N'images/CMC/bmsotvang.jpg', 20000, 10, N'Khi gió lạnh về thưởng thức bát bánh mì sốt vang thì không còn gì bằng. Bánh mì nóng giòn, ngả màu vàng ruộm ăn cùng với bát sốt vang đậm đà, dậy mùi vang, lại đầy ắp những thịt. Thịt bò gân mềm vừa đủ, dai vừa độ, ăn đến đâu thấm thía đến đó.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'B2', N'Bánh khúc', N'2', N'images/CMC/banhkhuc.jpg', 7000, 10, N'Bánh khúc hay xôi khúc, xôi cúc là loại bánh có nguồn gốc từ vùng đồng bằng Bắc Bộ, làm từ lá rau khúc, gạo nếp, nhân đậu xanh, thịt lợn mỡ. Bánh thường được làm vào mùa rau khúc – dịp tháng 2, tháng 3 Âm lịch.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'B3', N'Bánh giò', N'2', N'images/CMC/banhjo.jpg', 7000, 10, N'Bánh giò luôn phải nóng hổi, là sự kết hợp rất hoàn hảo giữa lớp vỏ bánh làm từ bột gạo cùng phần nhân thịt xay đầy đặn và mộc nhĩ. Bánh giò thường được ăn kèm thêm với giò chả, tương ớt. Một số nơi có bán cả dưa chuột muối để ăn kèm.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'B4', N'Bánh đúc nóng', N'2', N'images/CMC/banhduc.jpg', 10000, 10, N'Bánh đúc dẻo quánh, chìm trong lớp nước chan trong vắt, đậm đà. Nhân bánh đúc gồm thịt băm xào cùng mộc nhĩ, chút rau mùi thái nhỏ, hành phi thơm nức mũi. Ăn lúc còn nóng hôi hổi vào tầm chiều chiều thì quả là tuyệt cú mèo.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'B5', N'Nộm bò khô', N'2', N'images/CMC/nombokho.jpg', 10000, 10, N'Là món ngon ăn chơi yêu thích của người Hà Nội. Vị ngọt đậm đà, chút cay cay của thịt bò khô kết hợp với đu đủ giòn giòn đã tạo nên món ngon Hà Nội hấp dẫn.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'B6', N'Nem chua rán', N'2', N'images/CMC/nemchuaran.jpg', 15000, 10, N'Nem được lăn qua một lớp bột mỳ rán làm hai lần để có độ giòn. Cảm giác giòn tan, béo ngậy của lớp vỏ nhưng vẫn giữ được hương vị miếng nem chua bên trong hòa quyện trong vị cay cay của tương ớt cũng làm say lòng biết bao người.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'C1', N'Tào phớ', N'3', N'images/CMC/taopho.jpg', 10000, 10, N'Tào phớ ở Hà Nội thường được bán rong; hình ảnh người bán hàng gánh một đầu là thùng tào phớ, đầu kia là một chạn nhỏ rong ruổi khắp các con đường, miệng rao ” Ai…phớơơ đây” trở nên quen thuộc tại thành phố này.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'C2', N'Hoa quả dầm', N'3', N'images/CMC/hoaquadam.jpg', 10000, 10, N'Hoa quả dầm là một trong những món ăn vặt nổi tiếng rất được giới trẻ yêu thích.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'C3', N'Sữa chua', N'3', N'images/CMC/suachua.jpg', 10000, 10, N'Nói đến sữa chua là những món sữa chua được làm theo phương thức truyền thống. Sữa chua được làm nhiều hương vị khác nhau như cam, dừa, dâu, bạc hà ..', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'C4', N'Caramen', N'3', N'images/CMC/carame.jpg', 7000, 10, N'Bên cạnh món caramen truyền thống hiện nay caramen còn được biến tấu rất “quyến rũ” khi có độ béo ngậy của trứng gà với sữa, quyện cùng hương cà phê thơm đắng rất vừa phải khiến người ăn có khả năng húp xì xụp đĩa chỉ trong một phút là sạch bách.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'C5', N'Cốm hà nội', N'3', N'images/CMC/comhaloi.jpg', 10000, 10, N'Cốm được làm từ nếp cái hoa vàng, ăn vào thấy thơm hương lúa nếp, man mác ngọn gió thu và thoang thoảng mùi lá sen, lá ráy.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'C6', N'Ô mai', N'3', N'images/CMC/omai.jpg', 7000, 10, N'Nhắc đến những món ăn vặt của các cô nàng thì chắc có lẽ không thể thiếu hai từ “ô mai”. Chỉ cần vang lên hai từ đó thôi cũng đủ làm nước miếng chua chua nơi đầu lưỡi. Và ô mai ở Hà Nội nó cũng có hồn vía khác hẳn, có độ ngọt đậm của đường, vị cay nồng của gừng hoặc vị cam thảo nhẹ chứ không ngọt.', N'còn hàng', CAST(N'2019-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[UserAdmin] ([Username], [Password], [Role]) VALUES (N'admin', N'admin', 1)
INSERT [dbo].[UserAdmin] ([Username], [Password], [Role]) VALUES (N'hieuls123', N'asd', 2)
INSERT [dbo].[UserAdmin] ([Username], [Password], [Role]) VALUES (N'lollol', N'lolllol', 2)
INSERT [dbo].[UserAdmin] ([Username], [Password], [Role]) VALUES (N'qwert', N'12345', 2)
INSERT [dbo].[UserAdmin] ([Username], [Password], [Role]) VALUES (N'qwerty', N'qwerty', 2)
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([cat_ID])
REFERENCES [dbo].[Categories] ([ID])
GO
USE [master]
GO
ALTER DATABASE [Shipping] SET  READ_WRITE 
GO
