USE [master]
GO
/****** Object:  Database [Project1]    Script Date: 30/10/2022 01:07:54 ******/
create database [Project_ass]

GO
USE [Project_ass]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 30/10/2022 01:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](20) NULL,
	[Password] [varchar](20) NULL,
	[role] [int] NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Avatar] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 30/10/2022 01:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentDate] [date] NULL,
	[PaymentMode] [nvarchar](50) NULL,
	[ExpireDate] [date] NULL,
	[Status] [bit] NULL,
	[order_id] [int] NULL,
 CONSTRAINT [PK__Bill__3214EC073A17D113] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 30/10/2022 01:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[total] [float] NULL,
	[notes] [nvarchar](50) NULL,
	[order_date] [date] NULL,
 CONSTRAINT [PK__Order__3214EC07B8277579] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 30/10/2022 01:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[detail_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK__OrderDet__3214EC0726B0B51B] PRIMARY KEY CLUSTERED 
(
	[detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 30/10/2022 01:07:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
	[Discount] [money] NULL,
	[CreateDate] [date] NULL,
	[img] [ntext] NULL,
	[description] [nvarchar](500) NULL,
 CONSTRAINT [PK__Product__3214EC07B6F335F4] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (1, N'bdmin', N'bdmin', 1, N'Hà Nội', N'0587350847', N'images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (2, N'thang', N'123', 1, N'Hà Nội', N'0587350847', N'images/avatar1.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (3, N'456', N'456', 0, N'Hà Nội ', N'253644218', N'images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (4, N'abc', N'abc', 0, N'TP Hồ Chí Minh ', N'209300255', N'images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (5, N'abcd', N'abcd', 0, N'Hà Nội', N'262162158', N'images/avatar1.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (6, N'111', N'111', 0, N'TP Hồ Chí Minh ', N'209300255', N'images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (7, N'222', N'222', 0, N'Hà Nội', N'262162158', N'images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (8, N'333', N'333', 0, N'Hà Nội ', N'252258379', N'images/avatar1.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (9, N'444', N'444', 0, N'HCM', N'234109666', N'images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (10, N'555', N'555', 0, N'Đà Nẵng ', N'201874859', N'images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (11, N'user', N'password', 0, N'Hà Nội', N'012328948', N'images/avatar1.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (12, N'abcde', N'abcde', 0, N'Hà nội', N'0388888888', N'images/avatar2.png')
GO
INSERT [dbo].[Admin] ([Id], [Username], [Password], [role], [Address], [Phone], [Avatar]) VALUES (13, N'666', N'666', 0, N'Hà nội', N'0388888888', N'images/avatar2.png')
GO
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (1, CAST(N'2023-01-01' AS Date), N'Card', CAST(N'2023-01-06' AS Date), 0, 4)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (2, CAST(N'2023-02-18' AS Date), N'Money', CAST(N'2023-02-22' AS Date), 1, 2)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (3, CAST(N'2023-03-02' AS Date), N'Money', CAST(N'2023-3-07' AS Date), 0, 6)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (4, CAST(N'2023-02-06' AS Date), N'Card', CAST(N'2023-02-09' AS Date), 0, 8)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (5, CAST(N'2023-01-05' AS Date), N'Card', CAST(N'2023-01-08' AS Date), 1, 9)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (6, CAST(N'2023-01-11' AS Date), N'Money', CAST(N'2022-02-17' AS Date), 1, 10)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (7, CAST(N'2023-01-24' AS Date), N'Card', CAST(N'2021-11-13' AS Date), 0, 3)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (8, CAST(N'2022-09-23' AS Date), N'Money', CAST(N'2022-10-02' AS Date), 1, 5)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (9, CAST(N'2022-02-04' AS Date), N'Card', CAST(N'2021-11-16' AS Date), 0, 7)
GO
INSERT [dbo].[Bill] ([Id], [PaymentDate], [PaymentMode], [ExpireDate], [Status], [order_id]) VALUES (10, CAST(N'2022-12-20' AS Date), N'Money', CAST(N'2022-02-20' AS Date), 1, 1)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (1, 4, 8, N'bảo hành sản phẩm trong khi vận chuyển ', CAST(N'2022-01-06' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (2, 4, 9, N'bảo hành sản phẩm trong khi vận chuyển ', CAST(N'2023-02-24' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (3, 5, 2, N'bảo hành sản phẩm trong khi vận chuyển', CAST(N'2023-03-8' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (4, 4, 9, N'không có', CAST(N'2023-02-10' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (5, 5, 6, N'không có', CAST(N'2023-01-12' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (6, 6, 2, N'bảo hành sản phẩm trong khi vận chuyển', CAST(N'2022-03-13' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (7, 1, 3, N'bảo hành sản phẩm trong khi vận chuyển', CAST(N'2022-04-21' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (8, 4, 9, N'không có', CAST(N'2022-09-12' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (9, 5, 6, N'không có', CAST(N'2022-02-28' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (10, 7, 10, N'không có', CAST(N'2022-01-24' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (11, 3, 6, N'bảo hành sản phẩm trong khi vận chuyển', CAST(N'2022-12-12' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (12, 7, 8, N'bảo hành sản phẩm trong khi vận chuyển', CAST(N'2022-05-06' AS Date))
GO
INSERT [dbo].[Order] ([order_id], [user_id], [total], [notes], [order_date]) VALUES (13, 8, 4, N'không có', CAST(N'2022-01-28' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (1, 3, 3, 220.58, 34)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (2, 6, 5, 40.88, 6)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (3, 1, 7, 20.56, 2)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (4, 8, 9, 450.78, 45)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (5, 5, 3, 78.04, 9)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (6, 2, 1, 50.78, 7)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (7, 4, 2, 110.23, 12)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (8, 7, 7, 122.67, 14)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (9, 9, 7, 145.68, 16)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (10, 10, 4, 34.78, 3)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (11, 11, 12, 24.78, 2)
GO
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (12, 12, 11, 145.78, 16)
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (1, N'Chăn lông cừu', 12, 140.3800, 100.7400, CAST(N'2022-12-23' AS Date), N'images/menu-1.png', N'Được làm hoàn toàn bằng lông cừu tự nhiên với cấu tạo hai lớp êm mịn, ấm áp.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (2, N'Chăn ruột lông vũ', 13, 240.4300, 200.8450, CAST(N'2023-01-04' AS Date), N'images/menu-2.png', N'Đây là một trong những chiếc chăn ga mền chất lượng, an toàn, thiết kế tinh tế được làm từ lông vũ.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (3, N'Chăn bông Polyester', 03, 165.4600, 112.7830, CAST(N'2023-03-03' AS Date), N'images/menu-3.png', N'Sử dụng những sợi bông mịn, thấm hút tốt giúp người dùng có được một cảm giác thật nhẹ nhàng, thoải mái mỗi lần sử dụng.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (4, N'Chăn lụa', 18, 192.3430, 145.5700, CAST(N'2022-12-27' AS Date), N'images/menu-4.png', N'Sử dụng chất liệu lụa mềm mại, thoáng khí, với dáng vẻ thời trang óng ả, tinh tế, mang lại cảm giác mỗi lần chạm ở đường nét tự nhiên, dễ chịu, nhẹ nhàng.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (5, N'Chăn cotton nhung', 23, 123.4000, 90.7840, CAST(N'2022-09-09' AS Date), N'images/menu-5.png', N'Sử dụng chất liệu cotton nhung có độ mềm mịn cao, giúp thấm hút mồ hôi siêu tốt đặc biệt trong quá trình sử dụng sẽ không lo chăn bị xù lông, nhăn hay phai màu trong quá trình giặt ủi.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (6, N'Chăn ga gối Hàn Quốc Anlee Home', 1, 30.7800, 15.5500, CAST(N'2023-03-06' AS Date), N'images/menu-6.png', N'Là một thương hiệu được người tiêu dùng Việt tin dùng trong những năm gần đây bởi hình dáng, kích thước bắt mắt, thu hút cùng chất liệu bền, đẹp, an toàn.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (7, N'Chăn bông Everon siêu nhẹ', 17, 200.3740, 160.8900, CAST(N'2023-01-01' AS Date), N'images/product-1.png', N'Sử dụng nguyên liệu nhập khẩu hoàn toàn từ Hàn Quốc với vỏ giữ bông cấu tạo gồm 50% cotton và 50% polyester, loại polyester 100% đã được xử lý qua silicon, giúp sản phẩm luôn giữ được tính nhẹ và giữ nhiệt tốt trong suốt thời gian sử dụng.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (8, N'Chăn bông siêu nhẹ Hàn Quốc Hanvico', 5, 342.7800, 211.4780, CAST(N'2023-02-10' AS Date), N'images/product-2.png', N'Chăn bông siêu nhẹ Hàn Quốc Hanvico nổi bật với tính vô trùng, sát khuẩn, thông khí tốt và thoát ẩm nhanh giúp bảo vệ tốt sức khỏe.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (9, N'Ruột chăn bông Hàn Quốc Hanja', 23, 100.3740, 82.7845, CAST(N'2023-02-14' AS Date), N'images/product-3.png', N'Sử dụng chất liệu vải cotton mịn màng, êm ái cho phần vỏ ruột, cùng với cấu tạo không chứa các thành phần gây ảnh hưởng xấu cho sức khỏe.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (10, N'Chăn sợi bông Hàn Quốc Julia', 15, 120.5600, 94.7800, CAST(N'2022-12-10' AS Date), N'images/menu-7.png', N'Chăn Julian Hàn Quốc đẳng cấp, sang trọng, đẹp mắt, nhẹ nhàng cho một giấc ngủ an lành sẽ là một lựa chọn khá hấp dẫn cho gia đình vào mùa đông này.')
GO
INSERT [dbo].[Product] ([Id], [Name], [Quantity], [Price], [Discount], [CreateDate], [img], [description]) VALUES (11, N'Chăn Lông Cừu Kyoryo', 4, 181.5670, 130.6870, CAST(N'2022-12-30' AS Date), N'images/menu-8.png', N'Chất liệu lông Cừu nhập khẩu từ Nhật mềm mại, êm ái.')
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Order]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Admin] FOREIGN KEY([user_id])
REFERENCES [dbo].[Admin] ([Id])

GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Admin]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
USE [master]
GO
ALTER DATABASE [Project_ass] SET  READ_WRITE 
GO


