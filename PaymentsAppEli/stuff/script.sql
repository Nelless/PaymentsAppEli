USE [Рayments]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 13.01.2023 9:52:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id_category] [int] IDENTITY(1,1) NOT NULL,
	[name_category] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id_category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 13.01.2023 9:52:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_payment] [date] NULL,
	[category_id] [int] NULL,
	[user_id] [int] NULL,
	[name] [nvarchar](100) NULL,
	[count] [int] NULL,
	[price] [float] NULL,
	[cost]  AS ([price]*[count]),
 CONSTRAINT [PK_Pay] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 13.01.2023 9:52:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id_user] [int] NOT NULL,
	[last_name] [nvarchar](50) NULL,
	[first_name] [nvarchar](50) NULL,
	[patronymic_name] [nvarchar](50) NULL,
	[login] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[pin_code] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id_category], [name_category]) VALUES (1, N'Коммунальные платежи')
INSERT [dbo].[Category] ([id_category], [name_category]) VALUES (2, N'Автомобиль')
INSERT [dbo].[Category] ([id_category], [name_category]) VALUES (3, N'Питание и быт')
INSERT [dbo].[Category] ([id_category], [name_category]) VALUES (4, N'Медицина')
INSERT [dbo].[Category] ([id_category], [name_category]) VALUES (5, N'Разное')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (1, CAST(N'2015-03-01' AS Date), 1, 10, N'Квартплата', 1, 2964.58)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (2, CAST(N'2015-03-01' AS Date), 1, 20, N'Интернет', 1, 450)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (3, CAST(N'2015-03-01' AS Date), 1, 30, N'Телефон', 1, 170)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (4, CAST(N'2015-03-01' AS Date), 1, 40, N'Мобильный', 1, 300)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (5, CAST(N'2015-03-01' AS Date), 1, 50, N'Электроэнергия', 1, 184)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (6, CAST(N'2015-03-01' AS Date), 1, 60, N'Газоснабжение', 1, 3120)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (7, CAST(N'2015-03-01' AS Date), 1, 70, N'Водоснабжение', 1, 16.41)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (8, CAST(N'2015-03-01' AS Date), 2, 10, N'Взнос за гараж', 1, 5000)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (9, CAST(N'2015-03-30' AS Date), 2, 20, N'Бензин', 1, 2238)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (10, CAST(N'2015-03-01' AS Date), 3, 30, N'Сметана', 1, 45)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (11, CAST(N'2015-03-02' AS Date), 3, 40, N'Томатный сок', 1, 15)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (12, CAST(N'2015-03-03' AS Date), 3, 50, N'Губка для обуви', 1, 40)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (13, CAST(N'2015-03-04' AS Date), 3, 60, N'Еда', 1, 159.2)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (14, CAST(N'2015-03-05' AS Date), 3, 70, N'Булочки и тесто', 1, 240)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (15, CAST(N'2015-03-06' AS Date), 3, 10, N'Творог и сметана', 1, 94.96)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (16, CAST(N'2015-03-07' AS Date), 3, 20, N'Семечки', 2, 35)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (17, CAST(N'2015-03-08' AS Date), 3, 30, N'Хачапури и морс', 1, 82)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (18, CAST(N'2015-03-09' AS Date), 3, 40, N'Столовая', 1, 119.93)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (19, CAST(N'2015-03-10' AS Date), 3, 50, N'Столовая', 1, 127.66)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (20, CAST(N'2015-03-11' AS Date), 3, 60, N'Еда', 1, 258.84)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (21, CAST(N'2015-03-12' AS Date), 3, 70, N'Еда', 1, 213.31)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (22, CAST(N'2015-03-13' AS Date), 3, 10, N'Еда', 1, 137.18)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (23, CAST(N'2015-03-14' AS Date), 3, 20, N'Еда', 1, 127.82)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (24, CAST(N'2015-03-15' AS Date), 3, 30, N'Еда', 1, 195.39)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (25, CAST(N'2015-03-16' AS Date), 3, 40, N'Гипермаркет', 1, 3726)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (26, CAST(N'2015-03-17' AS Date), 3, 50, N'Гипермаркет', 1, 2484)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (27, CAST(N'2015-03-18' AS Date), 3, 60, N'Макароны', 1, 33)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (28, CAST(N'2015-03-19' AS Date), 3, 70, N'Еда', 1, 144.75)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (29, CAST(N'2015-03-20' AS Date), 3, 10, N'Еда', 1, 138.73)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (30, CAST(N'2015-03-21' AS Date), 3, 20, N'Еда', 1, 24)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (31, CAST(N'2015-03-22' AS Date), 3, 30, N'Еда', 1, 261.21)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (32, CAST(N'2015-03-23' AS Date), 3, 40, N'Столовая', 1, 19.42)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (33, CAST(N'2015-03-24' AS Date), 3, 50, N'Еда', 1, 80)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (34, CAST(N'2015-03-25' AS Date), 3, 60, N'Столовая', 1, 58.86)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (35, CAST(N'2015-03-26' AS Date), 3, 70, N'Еда', 1, 82)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (36, CAST(N'2015-03-27' AS Date), 3, 10, N'Еда', 1, 81)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (37, CAST(N'2015-03-01' AS Date), 4, 20, N'Прием врача', 1, 450)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (38, CAST(N'2015-03-03' AS Date), 4, 30, N'Прием врача', 1, 400)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (39, CAST(N'2015-03-05' AS Date), 4, 40, N'Прием врача', 1, 330)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (40, CAST(N'2015-03-07' AS Date), 4, 50, N'ЭКГ', 1, 455)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (41, CAST(N'2015-03-09' AS Date), 4, 60, N'Анализы', 1, 280)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (42, CAST(N'2015-03-11' AS Date), 4, 70, N'Прием врача', 1, 220)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (43, CAST(N'2015-03-13' AS Date), 4, 10, N'Контейнер для анализов', 1, 20)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (44, CAST(N'2015-03-15' AS Date), 4, 20, N'Наринэ', 1, 449.5)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (45, CAST(N'2015-03-17' AS Date), 4, 30, N'Магнелис', 1, 202.4)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (46, CAST(N'2015-03-19' AS Date), 4, 40, N'Прием врача', 1, 800)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (47, CAST(N'2015-03-21' AS Date), 4, 50, N'Прием врача', 1, 400)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (48, CAST(N'2015-03-23' AS Date), 4, 60, N'Анализы', 1, 1740)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (49, CAST(N'2015-03-25' AS Date), 4, 70, N'Термометр для ванн', 1, 152.5)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (50, CAST(N'2015-03-27' AS Date), 4, 10, N'Юниспорт', 1, 3500)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (51, CAST(N'2015-03-01' AS Date), 5, 20, N'Туфли', 1, 699)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (52, CAST(N'2015-03-04' AS Date), 5, 30, N'Диски, кейс, стяжки', 1, 933)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (53, CAST(N'2015-03-07' AS Date), 5, 40, N'Маникюр', 1, 550)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (54, CAST(N'2015-03-10' AS Date), 5, 50, N'Ушивание брюк', 1, 150)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (55, CAST(N'2015-03-13' AS Date), 5, 60, N'Одежда', 1, 2871.84)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (56, CAST(N'2015-03-16' AS Date), 5, 70, N'Плавательный набор', 1, 1040)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (57, CAST(N'2015-03-19' AS Date), 5, 10, N'CD', 1, 165)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (58, CAST(N'2015-03-22' AS Date), 5, 20, N'Маркеры', 1, 120)
INSERT [dbo].[Payment] ([id], [date_payment], [category_id], [user_id], [name], [count], [price]) VALUES (59, CAST(N'2015-03-25' AS Date), 5, 30, N'Сбор на кафедру', 2, 500)
SET IDENTITY_INSERT [dbo].[Payment] OFF
INSERT [dbo].[Users] ([id_user], [last_name], [first_name], [patronymic_name], [login], [password], [pin_code]) VALUES (10, N'Бойко', N'Игорь', N'Петрович', N'Boico', N'aut_aliasg', 6039)
INSERT [dbo].[Users] ([id_user], [last_name], [first_name], [patronymic_name], [login], [password], [pin_code]) VALUES (20, N'Василенко', N'Василий', N'Александрович', N'Vasilenco', N'qwerty', 8797)
INSERT [dbo].[Users] ([id_user], [last_name], [first_name], [patronymic_name], [login], [password], [pin_code]) VALUES (30, N'Контеенко', N'Дмитрий', N'Семенович', N'Konteenco', N'placeat1972l', 961)
INSERT [dbo].[Users] ([id_user], [last_name], [first_name], [patronymic_name], [login], [password], [pin_code]) VALUES (40, N'Лазарьков', N'Петр', N'Михайлович', N'Lazarkov', N'equam442', 4842)
INSERT [dbo].[Users] ([id_user], [last_name], [first_name], [patronymic_name], [login], [password], [pin_code]) VALUES (50, N'Кузнецов', N'Василий', N'Семенович', N'Kuznetsov', N'libero%88f', 8720)
INSERT [dbo].[Users] ([id_user], [last_name], [first_name], [patronymic_name], [login], [password], [pin_code]) VALUES (60, N'Дорофеева', N'Анна', N'Геннадьевна', N'Test', N'12345', 9812)
INSERT [dbo].[Users] ([id_user], [last_name], [first_name], [patronymic_name], [login], [password], [pin_code]) VALUES (70, N'Прокопьева', N'Елена', N'Петровна', N'Ann', N'porro_autu', 9553)
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Pay_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id_category])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Pay_Category]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Pay_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id_user])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Pay_Users]
GO
