USE [MateuszChmielowskiLab3ZadDom]
GO
/****** Object:  Table [dbo].[Arena]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arena](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[Adress] [text] NOT NULL,
	[Capacity] [int] NOT NULL,
 CONSTRAINT [PK_Arena] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CoachingStaff]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CoachingStaff](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonID] [int] NOT NULL,
	[TeamID] [int] NOT NULL,
	[Role] [varchar](200) NOT NULL,
	[ContractID] [int] NOT NULL,
 CONSTRAINT [PK_CoachingStaff] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateStart] [date] NOT NULL,
	[DateEnd] [date] NULL,
	[MonthlySalary] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Game]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonID] [int] NOT NULL,
	[HomeTeam] [int] NOT NULL,
	[GuestTeam] [int] NOT NULL,
	[DateAndTime] [datetime] NOT NULL,
	[RankID] [int] NULL,
	[ArenaID] [int] NULL,
	[Audience] [int] NULL,
	[Overtime] [int] NULL,
	[HomeTeamWin] [bit] NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GameReferee]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameReferee](
	[GameID] [int] NOT NULL,
	[RefereeID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[League]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[League](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
 CONSTRAINT [PK_League] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nationality]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nationality](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Country] [nvarchar](100) NOT NULL,
	[Short] [varchar](10) NOT NULL,
	[Flag] [image] NULL,
 CONSTRAINT [PK_Nationality] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Surname] [nvarchar](200) NOT NULL,
	[BirthDate] [date] NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Player]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Player](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Surname] [nvarchar](200) NOT NULL,
	[Sex] [char](1) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Height] [int] NOT NULL,
	[NationalityID] [int] NOT NULL,
	[Injury] [int] NULL,
	[Number] [int] NOT NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlayerGameStat]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerGameStat](
	[PlayerID] [int] NOT NULL,
	[GameID] [int] NOT NULL,
	[StatID] [int] NOT NULL,
	[Value] [decimal](10, 3) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlayerPosition]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerPosition](
	[PlayerID] [int] NOT NULL,
	[PositionID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PlayerTeamContract]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlayerTeamContract](
	[TeamID] [int] NOT NULL,
	[PlayerID] [int] NOT NULL,
	[ContractID] [int] NOT NULL,
	[Role] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Position]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Position](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rank]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rank](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Rank] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Referee]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Surname] [nvarchar](200) NOT NULL,
	[BirthDate] [date] NULL,
 CONSTRAINT [PK_Referee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RefereeLeagueLicense]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefereeLeagueLicense](
	[RefereeID] [int] NOT NULL,
	[LeagueID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Season]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Season](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[LeagueID] [int] NOT NULL,
	[DateStart] [date] NOT NULL,
	[DateEnd] [date] NOT NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stat]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stat](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StatName] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Stat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Team]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[ArenaID] [int] NOT NULL,
	[YearOfFoundation] [int] NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[GuestTeamPlayersStats]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GuestTeamPlayersStats]
AS
SELECT        dbo.Team.Name, dbo.Player.Name AS Expr1, dbo.Player.Surname, dbo.Player.Number, dbo.Stat.StatName, dbo.PlayerGameStat.Value
FROM            dbo.Game INNER JOIN
                         dbo.PlayerGameStat ON dbo.Game.ID = dbo.PlayerGameStat.GameID INNER JOIN
                         dbo.Player ON dbo.PlayerGameStat.PlayerID = dbo.Player.ID INNER JOIN
                         dbo.Team ON dbo.Game.GuestTeam = dbo.Team.ID INNER JOIN
                         dbo.Stat ON dbo.PlayerGameStat.StatID = dbo.Stat.ID INNER JOIN
                         dbo.PlayerTeamContract ON dbo.Player.ID = dbo.PlayerTeamContract.PlayerID AND dbo.Team.ID = dbo.PlayerTeamContract.TeamID

GO
/****** Object:  View [dbo].[GuestTeamStats]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GuestTeamStats]
AS
SELECT        TOP (100) PERCENT dbo.Stat.StatName, SUM(dbo.PlayerGameStat.Value) AS Expr1
FROM            dbo.Player INNER JOIN
                         dbo.PlayerGameStat ON dbo.Player.ID = dbo.PlayerGameStat.PlayerID INNER JOIN
                         dbo.Stat ON dbo.PlayerGameStat.StatID = dbo.Stat.ID INNER JOIN
                         dbo.PlayerTeamContract ON dbo.Player.ID = dbo.PlayerTeamContract.PlayerID INNER JOIN
                         dbo.Team ON dbo.PlayerTeamContract.TeamID = dbo.Team.ID INNER JOIN
                         dbo.Game ON dbo.PlayerGameStat.GameID = dbo.Game.ID AND dbo.Team.ID = dbo.Game.GuestTeam
WHERE        (dbo.Stat.StatName NOT LIKE 'Czas gry') AND (dbo.Stat.StatName NOT LIKE 'Eval') AND (dbo.Stat.StatName NOT LIKE '+/-')
GROUP BY dbo.Stat.StatName, dbo.Stat.ID
ORDER BY dbo.Stat.ID

GO
/****** Object:  View [dbo].[HomeTeamPlayersStats]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[HomeTeamPlayersStats]
AS
SELECT        dbo.Team.Name, dbo.Player.Name AS Expr1, dbo.Player.Surname, dbo.Player.Number, dbo.Stat.StatName, dbo.PlayerGameStat.Value
FROM            dbo.Game INNER JOIN
                         dbo.PlayerGameStat ON dbo.Game.ID = dbo.PlayerGameStat.GameID INNER JOIN
                         dbo.Player ON dbo.PlayerGameStat.PlayerID = dbo.Player.ID INNER JOIN
                         dbo.Team ON dbo.Game.HomeTeam = dbo.Team.ID INNER JOIN
                         dbo.Stat ON dbo.PlayerGameStat.StatID = dbo.Stat.ID INNER JOIN
                         dbo.PlayerTeamContract ON dbo.Player.ID = dbo.PlayerTeamContract.PlayerID AND dbo.Team.ID = dbo.PlayerTeamContract.TeamID

GO
/****** Object:  View [dbo].[HomeTeamStats]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[HomeTeamStats]
AS
SELECT        TOP (100) PERCENT dbo.Stat.StatName, SUM(dbo.PlayerGameStat.Value) AS Expr1
FROM            dbo.Player INNER JOIN
                         dbo.PlayerGameStat ON dbo.Player.ID = dbo.PlayerGameStat.PlayerID INNER JOIN
                         dbo.Stat ON dbo.PlayerGameStat.StatID = dbo.Stat.ID INNER JOIN
                         dbo.PlayerTeamContract ON dbo.Player.ID = dbo.PlayerTeamContract.PlayerID INNER JOIN
                         dbo.Team ON dbo.PlayerTeamContract.TeamID = dbo.Team.ID INNER JOIN
                         dbo.Game ON dbo.PlayerGameStat.GameID = dbo.Game.ID AND dbo.Team.ID = dbo.Game.HomeTeam
WHERE        (dbo.Stat.StatName NOT LIKE 'Czas gry') AND (dbo.Stat.StatName NOT LIKE 'Eval') AND (dbo.Stat.StatName NOT LIKE '+/-')
GROUP BY dbo.Stat.StatName, dbo.Stat.ID
ORDER BY dbo.Stat.ID

GO
/****** Object:  View [dbo].[TeamRoster]    Script Date: 2015-05-17 21:15:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TeamRoster]
AS
SELECT        TOP (100) PERCENT dbo.Player.Name, dbo.Player.Surname, dbo.Player.Number, dbo.Team.Name AS Team, dbo.Player.ID
FROM            dbo.Player INNER JOIN
                         dbo.PlayerTeamContract ON dbo.Player.ID = dbo.PlayerTeamContract.PlayerID INNER JOIN
                         dbo.Team ON dbo.PlayerTeamContract.TeamID = dbo.Team.ID INNER JOIN
                         dbo.Contract ON dbo.PlayerTeamContract.ContractID = dbo.Contract.ID
WHERE        (dbo.Contract.DateEnd > GETDATE()) OR
                         (dbo.Contract.DateEnd IS NULL)

GO
SET IDENTITY_INSERT [dbo].[Arena] ON 

INSERT [dbo].[Arena] ([ID], [Name], [Adress], [Capacity]) VALUES (1, N'Hala Orbita', N'ul. Wejherowska 34, 54-239 Wrocław', 3000)
INSERT [dbo].[Arena] ([ID], [Name], [Adress], [Capacity]) VALUES (2, N'PGE Turów Arena', N'ul. Lubańska 59-900 Zgorzelec', 3500)
INSERT [dbo].[Arena] ([ID], [Name], [Adress], [Capacity]) VALUES (3, N'Hala MOSiR w Zielonej Górze', N'ul. Sulechowska 41, Zielona Góra', 5000)
INSERT [dbo].[Arena] ([ID], [Name], [Adress], [Capacity]) VALUES (5, N'Hala Widowiskowo-Sportowa', N'ul. Śniadeckich 2, 75-453 Koszalin', 2242)
INSERT [dbo].[Arena] ([ID], [Name], [Adress], [Capacity]) VALUES (6, N'Gdynia Arena', N'ul. Kazimierza Górskiego 8, 81-304 Gdynia', 4120)
SET IDENTITY_INSERT [dbo].[Arena] OFF
SET IDENTITY_INSERT [dbo].[CoachingStaff] ON 

INSERT [dbo].[CoachingStaff] ([ID], [PersonID], [TeamID], [Role], [ContractID]) VALUES (1, 1, 1, N'Trener', 39)
INSERT [dbo].[CoachingStaff] ([ID], [PersonID], [TeamID], [Role], [ContractID]) VALUES (2, 2, 2, N'Trener', 40)
SET IDENTITY_INSERT [dbo].[CoachingStaff] OFF
SET IDENTITY_INSERT [dbo].[Contract] ON 

INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (1, CAST(0x01380B00 AS Date), NULL, CAST(5000.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (2, CAST(0x01380B00 AS Date), NULL, CAST(7000.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (3, CAST(0x9C360B00 AS Date), CAST(0x923D0B00 AS Date), CAST(6740.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (4, CAST(0x8B350B00 AS Date), CAST(0x413D0B00 AS Date), CAST(5007.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (5, CAST(0x62380B00 AS Date), CAST(0x793C0B00 AS Date), CAST(8415.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (6, CAST(0x6D350B00 AS Date), CAST(0x9E3D0B00 AS Date), CAST(7304.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (7, CAST(0xDD390B00 AS Date), CAST(0xCD3B0B00 AS Date), CAST(6205.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (8, CAST(0x1B380B00 AS Date), CAST(0x373D0B00 AS Date), CAST(5760.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (9, CAST(0x48390B00 AS Date), CAST(0x943C0B00 AS Date), CAST(8552.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (10, CAST(0x0B370B00 AS Date), CAST(0x923C0B00 AS Date), CAST(8142.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (11, CAST(0x5A380B00 AS Date), CAST(0xA23C0B00 AS Date), CAST(8925.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (12, CAST(0x46360B00 AS Date), CAST(0xA83C0B00 AS Date), CAST(6063.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (13, CAST(0x9B370B00 AS Date), CAST(0xA93C0B00 AS Date), CAST(7130.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (14, CAST(0xDB350B00 AS Date), CAST(0x1F3C0B00 AS Date), CAST(5193.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (15, CAST(0x70370B00 AS Date), CAST(0x753D0B00 AS Date), CAST(6462.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (16, CAST(0xBC350B00 AS Date), CAST(0x803C0B00 AS Date), CAST(9760.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (17, CAST(0x95390B00 AS Date), CAST(0x893D0B00 AS Date), CAST(5947.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (18, CAST(0x76370B00 AS Date), CAST(0x133D0B00 AS Date), CAST(7603.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (19, CAST(0x54370B00 AS Date), CAST(0xC03C0B00 AS Date), CAST(9029.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (20, CAST(0x85380B00 AS Date), CAST(0x0C3D0B00 AS Date), CAST(6483.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (21, CAST(0xB9370B00 AS Date), CAST(0xD43D0B00 AS Date), CAST(8576.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (22, CAST(0xA3350B00 AS Date), CAST(0x833C0B00 AS Date), CAST(9062.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (23, CAST(0x5B390B00 AS Date), CAST(0xAE3D0B00 AS Date), CAST(6664.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (24, CAST(0x0D390B00 AS Date), CAST(0x003D0B00 AS Date), CAST(7599.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (25, CAST(0xC4380B00 AS Date), CAST(0x733D0B00 AS Date), CAST(6146.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (26, CAST(0x9A350B00 AS Date), CAST(0x1B3C0B00 AS Date), CAST(9514.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (27, CAST(0x03370B00 AS Date), CAST(0xDB3D0B00 AS Date), CAST(6034.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (28, CAST(0x1D380B00 AS Date), CAST(0x363C0B00 AS Date), CAST(6629.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (29, CAST(0x5D390B00 AS Date), CAST(0xB03D0B00 AS Date), CAST(6970.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (30, CAST(0x2C390B00 AS Date), CAST(0xAD3D0B00 AS Date), CAST(9724.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (31, CAST(0x93370B00 AS Date), CAST(0xAC3D0B00 AS Date), CAST(5615.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (32, CAST(0xE7380B00 AS Date), CAST(0xF73B0B00 AS Date), CAST(6347.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (33, CAST(0xD5390B00 AS Date), CAST(0xCE3B0B00 AS Date), CAST(7911.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (34, CAST(0x17370B00 AS Date), CAST(0x133C0B00 AS Date), CAST(9326.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (35, CAST(0xE4370B00 AS Date), CAST(0xD33C0B00 AS Date), CAST(8730.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (36, CAST(0xD5380B00 AS Date), CAST(0x9F3D0B00 AS Date), CAST(6777.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (37, CAST(0x26370B00 AS Date), CAST(0xFA3B0B00 AS Date), CAST(9941.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (38, CAST(0x1B390B00 AS Date), CAST(0x863D0B00 AS Date), CAST(8523.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (39, CAST(0x6F390B00 AS Date), CAST(0x8E3B0B00 AS Date), CAST(7657.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (40, CAST(0xA1350B00 AS Date), CAST(0x6D3C0B00 AS Date), CAST(5748.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (41, CAST(0x90390B00 AS Date), CAST(0xAD3C0B00 AS Date), CAST(9413.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (42, CAST(0x7B370B00 AS Date), CAST(0xCB3C0B00 AS Date), CAST(8383.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (43, CAST(0x52380B00 AS Date), CAST(0xDA3D0B00 AS Date), CAST(6665.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (44, CAST(0x12380B00 AS Date), CAST(0x253D0B00 AS Date), CAST(9884.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (45, CAST(0x39370B00 AS Date), CAST(0xA63C0B00 AS Date), CAST(6261.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (46, CAST(0xC1370B00 AS Date), CAST(0xA93B0B00 AS Date), CAST(5858.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (47, CAST(0x72370B00 AS Date), CAST(0xC93C0B00 AS Date), CAST(9071.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (48, CAST(0x89370B00 AS Date), CAST(0xE93C0B00 AS Date), CAST(7934.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (49, CAST(0x19390B00 AS Date), CAST(0x283C0B00 AS Date), CAST(9466.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (50, CAST(0xE8380B00 AS Date), CAST(0x743B0B00 AS Date), CAST(5854.00 AS Decimal(10, 2)))
INSERT [dbo].[Contract] ([ID], [DateStart], [DateEnd], [MonthlySalary]) VALUES (51, CAST(0x25390B00 AS Date), CAST(0x783B0B00 AS Date), CAST(8714.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Contract] OFF
SET IDENTITY_INSERT [dbo].[Game] ON 

INSERT [dbo].[Game] ([ID], [SeasonID], [HomeTeam], [GuestTeam], [DateAndTime], [RankID], [ArenaID], [Audience], [Overtime], [HomeTeamWin]) VALUES (1, 1, 1, 2, CAST(0x0000A3B901499700 AS DateTime), 1, 1, 3000, 0, NULL)
SET IDENTITY_INSERT [dbo].[Game] OFF
INSERT [dbo].[GameReferee] ([GameID], [RefereeID]) VALUES (1, 1)
INSERT [dbo].[GameReferee] ([GameID], [RefereeID]) VALUES (1, 2)
INSERT [dbo].[GameReferee] ([GameID], [RefereeID]) VALUES (1, 3)
SET IDENTITY_INSERT [dbo].[League] ON 

INSERT [dbo].[League] ([ID], [Name]) VALUES (1, N'Tauron Basket Liga')
SET IDENTITY_INSERT [dbo].[League] OFF
SET IDENTITY_INSERT [dbo].[Nationality] ON 

INSERT [dbo].[Nationality] ([ID], [Country], [Short], [Flag]) VALUES (1, N'Polska', N'POL', NULL)
INSERT [dbo].[Nationality] ([ID], [Country], [Short], [Flag]) VALUES (2, N'Stany Zjednoczone', N'USA', NULL)
INSERT [dbo].[Nationality] ([ID], [Country], [Short], [Flag]) VALUES (3, N'Serbia', N'RS', NULL)
INSERT [dbo].[Nationality] ([ID], [Country], [Short], [Flag]) VALUES (4, N'Ukraina', N'UA', NULL)
INSERT [dbo].[Nationality] ([ID], [Country], [Short], [Flag]) VALUES (5, N'Rumunia', N'RO', NULL)
INSERT [dbo].[Nationality] ([ID], [Country], [Short], [Flag]) VALUES (6, N'Chorwacja', N'HR', NULL)
INSERT [dbo].[Nationality] ([ID], [Country], [Short], [Flag]) VALUES (7, N'Litwa', N'LT', NULL)
SET IDENTITY_INSERT [dbo].[Nationality] OFF
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([ID], [Name], [Surname], [BirthDate]) VALUES (1, N'Emil', N'Rajković', CAST(0xA1050B00 AS Date))
INSERT [dbo].[Person] ([ID], [Name], [Surname], [BirthDate]) VALUES (2, N'Miodrag', N'Rajković', CAST(0xE9FA0A00 AS Date))
SET IDENTITY_INSERT [dbo].[Person] OFF
SET IDENTITY_INSERT [dbo].[Player] ON 

INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (1, N'Jakub', N'Dłoniak', N'm', CAST(0xF30C0B00 AS Date), 194, 1, 0, 11)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (2, N'Michał', N'Gabiński', N'm', CAST(0xA4110B00 AS Date), 201, 1, 0, 15)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (3, N'Radosław', N'Hyży', N'm', CAST(0x5D030B00 AS Date), 204, 1, 0, 8)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (4, N'Denis', N'Ikovlev', N'm', CAST(0x65100B00 AS Date), 200, 2, 0, 14)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (5, N'Lawrence', N'Kinnard', N'm', CAST(0xCA100B00 AS Date), 203, 2, 0, 12)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (6, N'Marcel', N'Kliniewski', N'm', CAST(0xB91E0B00 AS Date), 212, 1, 0, 0)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (7, N'Maksym', N'Kulon', N'm', CAST(0x211A0B00 AS Date), 191, 1, 0, 17)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (8, N'Aleksandar', N'Mladenović', N'm', CAST(0x830E0B00 AS Date), 207, 3, 0, 7)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (9, N'Vuk', N'Radivojević', N'm', CAST(0x980C0B00 AS Date), 196, 3, 0, 3)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (10, N'Marc-Oscar', N'Sanny', N'm', CAST(0xA01F0B00 AS Date), 185, 1, 0, 19)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (11, N'Robert', N'Tomaszek', N'm', CAST(0x92090B00 AS Date), 205, 1, 0, 10)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (12, N'Roderick', N'Trice', N'm', CAST(0xD80D0B00 AS Date), 185, 2, 0, 5)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (13, N'Łukasz', N'Wiśniewski', N'm', CAST(0x880E0B00 AS Date), 186, 1, 0, 2)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (14, N'Artur', N'Wnętrzak', N'm', CAST(0xFA1D0B00 AS Date), 195, 1, 0, 18)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (15, N'Michał', N'Chyliński', N'm', CAST(0x42100B00 AS Date), 196, 1, 0, 8)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (16, N'Mardy', N'Collins', N'm', CAST(0x0B0E0B00 AS Date), 198, 2, 0, 1)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (17, N'Aleksander', N'Czyż', N'm', CAST(0x00160B00 AS Date), 201, 1, 0, 15)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (18, N'Filip', N'Dylewicz', N'm', CAST(0x96070B00 AS Date), 202, 1, 0, 13)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (19, N'Michael', N'Gospodarek', N'm', CAST(0x7D180B00 AS Date), 186, 1, 0, 11)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (20, N'Nemanja', N'Jaramaz', N'm', CAST(0xEE170B00 AS Date), 200, 3, 0, 10)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (21, N'Bartosz', N'Jyż', N'm', CAST(0xCC200B00 AS Date), 197, 1, 0, 17)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (22, N'Jakub', N'Karolak', N'm', CAST(0x171B0B00 AS Date), 196, 1, 0, 9)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (23, N'Mateusz', N'Kostrzewski', N'm', CAST(0x5A150B00 AS Date), 200, 1, 0, 0)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (24, N'Damian', N'Kulig', N'm', CAST(0x28120B00 AS Date), 205, 1, 0, 7)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (25, N'Robert', N'Kurzyński', N'm', CAST(0xDE200B00 AS Date), 180, 1, 0, 6)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (26, N'Vlad-Sorin', N'Moldoveanu', N'm', CAST(0x11130B00 AS Date), 206, 5, 0, 14)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (27, N'Kyryło', N'Natiażko', N'm', CAST(0x10170B00 AS Date), 208, 4, 0, 27)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (28, N'Tony', N'Taylor', N'm', CAST(0x9F160B00 AS Date), 185, 2, 0, 21)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (29, N'Adam', N'Węckowski', N'm', CAST(0x07200B00 AS Date), 191, 1, 0, 25)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (30, N'Chris', N'Wright', N'm', CAST(0xF9130B00 AS Date), 203, 2, 0, 33)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (31, N'Aaron', N'Cel', N'm', CAST(0xB9110B00 AS Date), 203, 1, 0, 5)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (32, N'Kamil', N'Chanas', N'm', CAST(0x0E0F0B00 AS Date), 190, 1, 0, 13)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (33, N'Jakub', N'Der', N'm', CAST(0x301F0B00 AS Date), 191, 1, 0, 0)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (34, N'Quinton', N'Hosley', N'm', CAST(0x870D0B00 AS Date), 201, 2, 0, 14)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (35, N'Adam', N'Hrycaniuk', N'm', CAST(0x7D0D0B00 AS Date), 206, 1, 0, 34)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (36, N'Łukasz', N'Koszarek', N'm', CAST(0x3E0D0B00 AS Date), 187, 1, 0, 55)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (37, N'Maciej', N'Kucharek', N'm', CAST(0xD31A0B00 AS Date), 204, 1, 0, 20)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (38, N'Jure', N'Lalić', N'm', CAST(0x34100B00 AS Date), 209, 6, 0, 24)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (39, N'Patryk', N'Pełka', N'm', CAST(0xF3140B00 AS Date), 202, 1, 0, 4)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (40, N'Rafał', N'Rajewicz', N'm', CAST(0x9F130B00 AS Date), 204, 1, 0, 21)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (41, N'Russell', N'Robinson', N'm', CAST(0x25100B00 AS Date), 185, 2, 0, 2)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (42, N'Chevon', N'Troutman', N'm', CAST(0x340A0B00 AS Date), 202, 2, 0, 8)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (43, N'Przemysław', N'Zamojski', N'm', CAST(0x6B110B00 AS Date), 193, 1, 0, 35)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (44, N'Kamil', N'Zywert', N'm', CAST(0x881E0B00 AS Date), 184, 1, 0, 7)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (45, N'Marek', N'Zywert', N'm', CAST(0x881E0B00 AS Date), 187, 1, 0, 9)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (46, N'Devon', N'Austin', N'm', CAST(0x8F120B00 AS Date), 202, 2, 0, 5)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (47, N'Piotr', N'Dąbrowski', N'm', CAST(0xDF0F0B00 AS Date), 192, 1, 0, 9)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (48, N'Adam', N'Kadej', N'm', CAST(0x6F1E0B00 AS Date), 201, 1, 0, 14)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (49, N'Szymon', N'Łukasiak', N'm', CAST(0x70120B00 AS Date), 205, 1, 0, 0)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (50, N'Artur', N'Mielczarek', N'm', CAST(0x4B0D0B00 AS Date), 196, 1, 0, 55)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (51, N'Łukasz', N'Pacocha', N'm', CAST(0xED0A0B00 AS Date), 185, 1, 0, 17)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (52, N'Ivan', N'Radenović', N'm', CAST(0xD40D0B00 AS Date), 209, 3, 0, 12)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (53, N'Oskar', N'Rybicki', N'm', CAST(0x9A1E0B00 AS Date), 188, 1, 0, 25)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (54, N'Piotr', N'Stelmach', N'm', CAST(0x680D0B00 AS Date), 205, 1, 0, 19)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (55, N'Dante', N'Swanson', N'm', CAST(0x02090B00 AS Date), 178, 2, 0, 10)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (56, N'Szymon', N'Szewczyk', N'm', CAST(0xBB0B0B00 AS Date), 209, 1, 0, 33)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (57, N'Krzysztof', N'Szubarga', N'm', CAST(0xED0D0B00 AS Date), 178, 1, 0, 7)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (58, N'Goran', N'Vrbanc', N'm', CAST(0x4C0E0B00 AS Date), 193, 6, 0, 24)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (59, N'Qyntel', N'Woods', N'm', CAST(0x1A090B00 AS Date), 202, 2, 0, 6)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (60, N'Wojciech', N'Czerlonko', N'm', CAST(0x241E0B00 AS Date), 195, 1, 0, 14)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (61, N'Przemysław', N'Frasunkiewicz', N'm', CAST(0x18060B00 AS Date), 201, 1, 0, 15)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (62, N'Ovidijus', N'Galdikas', N'm', CAST(0xDF130B00 AS Date), 217, 7, 0, 5)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (63, N'Daniel', N'Grujić', N'm', CAST(0xC7160B00 AS Date), 201, 1, 0, 18)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (64, N'Sebastian', N'Kowalczyk', N'm', CAST(0x5E1A0B00 AS Date), 188, 1, 0, 7)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (65, N'Filip', N'Matczak', N'm', CAST(0x0F1B0B00 AS Date), 187, 1, 0, 8)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (66, N'Chris', N'Paredes', N'm', CAST(0x9E160B00 AS Date), 194, 1, 0, 21)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (67, N'Jakub', N'Parzeński', N'm', CAST(0x80180B00 AS Date), 212, 1, 0, 41)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (68, N'Lazar', N'Radosavljević', N'm', CAST(0x92170B00 AS Date), 204, 3, 0, 11)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (69, N'Piotr', N'Szczotka', N'm', CAST(0x93090B00 AS Date), 196, 1, 0, 20)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (70, N'Roman', N'Szymański', N'm', CAST(0x92170B00 AS Date), 211, 1, 0, 19)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (71, N'A.J.', N'Walton', N'm', CAST(0x24170B00 AS Date), 184, 2, 0, 22)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (72, N'Przemysław', N'Żołnierewicz', N'm', CAST(0x9C1D0B00 AS Date), 196, 1, 0, 10)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (78, N'Henryk', N'Szczepański', N'm', CAST(0x5E110B00 AS Date), 206, 1, 0, 69)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (79, N'Zdzisław', N'Andrzejewski', N'm', CAST(0x491B0B00 AS Date), 205, 1, 0, 75)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (82, N'Mariusz', N'Walczak', N'm', CAST(0x791A0B00 AS Date), 200, 1, 0, 60)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (83, N'Rafał', N'Wróblewski', N'm', CAST(0x1D110B00 AS Date), 204, 1, 0, 64)
INSERT [dbo].[Player] ([ID], [Name], [Surname], [Sex], [BirthDate], [Height], [NationalityID], [Injury], [Number]) VALUES (84, N'Krzysztof', N'Kamiński', N'm', CAST(0xB6090B00 AS Date), 200, 1, 0, 9)
SET IDENTITY_INSERT [dbo].[Player] OFF
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 3, CAST(23.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 4, CAST(12.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 5, CAST(16.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 6, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 7, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 8, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 9, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 10, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 11, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 12, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 13, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 14, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 15, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 16, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 17, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 18, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 19, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 20, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (1, 1, 21, CAST(23.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 3, CAST(20.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 4, CAST(12.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 5, CAST(11.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 6, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 7, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 8, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 9, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 10, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 11, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 12, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 13, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 14, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 15, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 16, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 17, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 18, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 19, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 20, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (11, 1, 21, CAST(29.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 3, CAST(27.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 4, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 5, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 6, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 7, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 8, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 9, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 10, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 11, CAST(10.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 12, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 13, CAST(6.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 14, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 15, CAST(10.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 16, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 17, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 18, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 19, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 20, CAST(16.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (3, 1, 21, CAST(21.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 3, CAST(33.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 4, CAST(21.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 5, CAST(17.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 6, CAST(9.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 7, CAST(9.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 8, CAST(6.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 9, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 10, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 11, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 12, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 13, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 14, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 15, CAST(7.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 16, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 17, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 18, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 19, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 20, CAST(-9.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (4, 1, 21, CAST(35.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 3, CAST(30.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 4, CAST(7.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 5, CAST(10.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 6, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 7, CAST(7.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 8, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 9, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 10, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 11, CAST(9.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 12, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 13, CAST(10.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 14, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 15, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 16, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 17, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 18, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 19, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 20, CAST(18.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (12, 1, 21, CAST(26.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 3, CAST(34.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 4, CAST(21.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 5, CAST(14.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 6, CAST(7.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 7, CAST(7.000 AS Decimal(10, 3)))
GO
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 8, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 9, CAST(7.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 10, CAST(7.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 11, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 12, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 13, CAST(7.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 14, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 15, CAST(7.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 16, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 17, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 18, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 19, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 20, CAST(6.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (8, 1, 21, CAST(40.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 3, CAST(15.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 4, CAST(14.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 5, CAST(7.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 6, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 7, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 8, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 9, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 10, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 11, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 12, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 13, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 14, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 15, CAST(7.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 16, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 17, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 18, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 19, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 20, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (7, 1, 21, CAST(32.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 3, CAST(30.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 4, CAST(13.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 5, CAST(16.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 6, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 7, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 8, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 9, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 10, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 11, CAST(9.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 12, CAST(6.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 13, CAST(10.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 14, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 15, CAST(6.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 16, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 17, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 18, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 19, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 20, CAST(-12.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (14, 1, 21, CAST(31.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 3, CAST(32.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 4, CAST(19.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 5, CAST(9.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 6, CAST(6.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 7, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 8, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 9, CAST(6.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 10, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 11, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 12, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 13, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 14, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 15, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 16, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 17, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 18, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 19, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 20, CAST(-17.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (15, 1, 21, CAST(27.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 3, CAST(35.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 4, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 5, CAST(10.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 6, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 7, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 8, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 9, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 10, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 11, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 12, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 13, CAST(9.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 14, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 15, CAST(6.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 16, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 17, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 18, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 19, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (16, 1, 20, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 21, CAST(28.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 3, CAST(23.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 4, CAST(19.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 5, CAST(11.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 6, CAST(7.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 7, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 8, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 9, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 10, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 11, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 12, CAST(0.000 AS Decimal(10, 3)))
GO
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 13, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 14, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 15, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 16, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 17, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 18, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 19, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 20, CAST(13.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (17, 1, 21, CAST(25.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 3, CAST(16.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 4, CAST(14.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 5, CAST(15.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 6, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 7, CAST(10.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 8, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 9, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 10, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 11, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 12, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 13, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 14, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 15, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 16, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 17, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 18, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 19, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 20, CAST(9.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (23, 1, 21, CAST(15.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 3, CAST(30.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 4, CAST(19.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 5, CAST(9.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 6, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 7, CAST(6.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 8, CAST(6.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 9, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 10, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 11, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 12, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 13, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 14, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 15, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 16, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 17, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 18, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 19, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 20, CAST(-18.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (21, 1, 21, CAST(40.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 3, CAST(30.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 4, CAST(27.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 5, CAST(14.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 6, CAST(9.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 7, CAST(7.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 8, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 9, CAST(7.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 10, CAST(4.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 11, CAST(9.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 12, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 13, CAST(8.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 14, CAST(3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 15, CAST(1.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 16, CAST(5.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 17, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 18, CAST(2.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 19, CAST(0.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 20, CAST(-3.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerGameStat] ([PlayerID], [GameID], [StatID], [Value]) VALUES (25, 1, 21, CAST(36.000 AS Decimal(10, 3)))
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (1, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (1, 3)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (2, 4)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (3, 4)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (4, 3)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (5, 4)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (6, 5)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (7, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (7, 3)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (8, 5)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (9, 1)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (9, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (10, 1)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (11, 5)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (12, 1)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (12, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (13, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (14, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (15, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (16, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (17, 4)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (18, 4)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (19, 1)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (20, 1)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (20, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (21, 4)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (22, 3)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (23, 3)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (24, 5)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (25, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (26, 4)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (27, 5)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (28, 1)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (29, 1)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (30, 1)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (31, 4)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (32, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (33, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (34, 3)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (35, 5)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (36, 1)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (37, 3)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (38, 5)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (39, 4)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (40, 5)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (41, 1)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (41, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (42, 4)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (42, 5)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (43, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (43, 3)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (44, 1)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (45, 2)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (46, 3)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (47, 3)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (48, 3)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (48, 4)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (49, 4)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (49, 5)
INSERT [dbo].[PlayerPosition] ([PlayerID], [PositionID]) VALUES (50, 3)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (1, 1, 1, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (1, 3, 3, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (1, 4, 4, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (1, 5, 5, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (1, 6, 6, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (1, 7, 7, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (1, 8, 8, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (1, 9, 9, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (1, 10, 10, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (1, 11, 11, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (1, 12, 12, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (1, 13, 13, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (1, 14, 14, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 15, 15, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 16, 16, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 17, 17, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 18, 18, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 19, 19, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 20, 20, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 21, 21, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 22, 22, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 23, 23, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 24, 24, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 25, 25, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 26, 26, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 27, 27, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 28, 28, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 29, 29, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (2, 30, 30, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 31, 31, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 32, 32, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 33, 33, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 34, 34, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 35, 35, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 36, 36, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 37, 37, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 38, 38, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 39, 39, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 40, 40, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 41, 41, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 42, 42, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 43, 43, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 44, 44, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (3, 45, 45, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (4, 46, 46, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (4, 47, 47, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (4, 48, 48, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (4, 49, 49, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (4, 50, 50, NULL)
INSERT [dbo].[PlayerTeamContract] ([TeamID], [PlayerID], [ContractID], [Role]) VALUES (4, 51, 51, NULL)
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([ID], [Name]) VALUES (1, N'Rozgrywający')
INSERT [dbo].[Position] ([ID], [Name]) VALUES (2, N'Rzucający obrońca')
INSERT [dbo].[Position] ([ID], [Name]) VALUES (3, N'Niski skrzydłowy')
INSERT [dbo].[Position] ([ID], [Name]) VALUES (4, N'Silny skrzydłowy')
INSERT [dbo].[Position] ([ID], [Name]) VALUES (5, N'Center')
SET IDENTITY_INSERT [dbo].[Position] OFF
SET IDENTITY_INSERT [dbo].[Rank] ON 

INSERT [dbo].[Rank] ([ID], [Name]) VALUES (1, N'Sezon zasadniczy 1')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (2, N'Sezon zasadniczy 2')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (3, N'Sezon zasadniczy 3')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (4, N'Sezon zasadniczy 4')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (5, N'Sezon zasadniczy 5')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (6, N'Sezon zasadniczy 6')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (7, N'Sezon zasadniczy 7')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (8, N'Sezon zasadniczy 8')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (9, N'Sezon zasadniczy 9')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (10, N'Sezon zasadniczy 10')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (11, N'Sezon zasadniczy 11')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (12, N'Sezon zasadniczy 12')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (13, N'Sezon zasadniczy 13')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (14, N'Sezon zasadniczy 14')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (15, N'Sezon zasadniczy 15')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (16, N'Sezon zasadniczy 16')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (17, N'Sezon zasadniczy 17')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (18, N'Sezon zasadniczy 18')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (19, N'Sezon zasadniczy 19')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (20, N'Sezon zasadniczy 20')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (21, N'Sezon zasadniczy 21')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (22, N'Sezon zasadniczy 22')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (23, N'Sezon zasadniczy 23')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (24, N'Sezon zasadniczy 24')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (25, N'Sezon zasadniczy 25')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (26, N'Sezon zasadniczy 26')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (27, N'Sezon zasadniczy 27')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (28, N'Sezon zasadniczy 28')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (29, N'Sezon zasadniczy 29')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (30, N'Sezon zasadniczy 30')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (31, N'Ćwierćfinał 1')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (32, N'Ćwierćfinał 2')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (33, N'Ćwierćfinał 3')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (34, N'Ćwierćfinał 4')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (35, N'Ćwierćfinał 5')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (36, N'Półfinał 1')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (37, N'Półfinał 2')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (38, N'Półfinał 3')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (39, N'Półfinał 4')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (40, N'Półfinał 5')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (41, N'Finał 1')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (42, N'Finał 2')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (43, N'Finał 3')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (44, N'Finał 4')
INSERT [dbo].[Rank] ([ID], [Name]) VALUES (45, N'Finał 5')
SET IDENTITY_INSERT [dbo].[Rank] OFF
SET IDENTITY_INSERT [dbo].[Referee] ON 

INSERT [dbo].[Referee] ([ID], [Name], [Surname], [BirthDate]) VALUES (1, N'Mariusz', N'Adameczek', NULL)
INSERT [dbo].[Referee] ([ID], [Name], [Surname], [BirthDate]) VALUES (2, N'Paweł', N'Białas', NULL)
INSERT [dbo].[Referee] ([ID], [Name], [Surname], [BirthDate]) VALUES (3, N'Michał', N'Chrkowiecki', NULL)
INSERT [dbo].[Referee] ([ID], [Name], [Surname], [BirthDate]) VALUES (5, N'Karina', N'Kamińska', NULL)
SET IDENTITY_INSERT [dbo].[Referee] OFF
INSERT [dbo].[RefereeLeagueLicense] ([RefereeID], [LeagueID]) VALUES (1, 1)
INSERT [dbo].[RefereeLeagueLicense] ([RefereeID], [LeagueID]) VALUES (2, 1)
INSERT [dbo].[RefereeLeagueLicense] ([RefereeID], [LeagueID]) VALUES (3, 1)
INSERT [dbo].[RefereeLeagueLicense] ([RefereeID], [LeagueID]) VALUES (5, 1)
SET IDENTITY_INSERT [dbo].[Season] ON 

INSERT [dbo].[Season] ([ID], [Name], [LeagueID], [DateStart], [DateEnd]) VALUES (1, N'TBL 2014/2015', 1, CAST(0x14390B00 AS Date), CAST(0xE1390B00 AS Date))
SET IDENTITY_INSERT [dbo].[Season] OFF
SET IDENTITY_INSERT [dbo].[Stat] ON 

INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (2, N'Mecze')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (3, N'Czas gry')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (4, N'Punkty')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (5, N'Oddane rzuty z gry')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (6, N'Celne rzuty z gry')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (7, N'Rzuty za 2')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (8, N'Celne rzuty za 2')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (9, N'Rzuty za 3')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (10, N'Celne rzuty za 3')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (11, N'Rzuty wolne')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (12, N'Celne rzuty wolne')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (13, N'Zbiórki w obronie')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (14, N'Zbiórki w ataku')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (15, N'Asysty')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (16, N'Straty')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (17, N'Przechwyty')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (18, N'Bloki')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (19, N'Faule')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (20, N'+/-')
INSERT [dbo].[Stat] ([ID], [StatName]) VALUES (21, N'Eval')
SET IDENTITY_INSERT [dbo].[Stat] OFF
SET IDENTITY_INSERT [dbo].[Team] ON 

INSERT [dbo].[Team] ([ID], [Name], [ArenaID], [YearOfFoundation]) VALUES (1, N'Śląsk Wrocław', 1, 1948)
INSERT [dbo].[Team] ([ID], [Name], [ArenaID], [YearOfFoundation]) VALUES (2, N'Turów Zgorzelec', 2, 1948)
INSERT [dbo].[Team] ([ID], [Name], [ArenaID], [YearOfFoundation]) VALUES (3, N'Stelmet Zielona Góra', 3, 1946)
INSERT [dbo].[Team] ([ID], [Name], [ArenaID], [YearOfFoundation]) VALUES (4, N'AZS Koszalin', 5, 1968)
INSERT [dbo].[Team] ([ID], [Name], [ArenaID], [YearOfFoundation]) VALUES (6, N'Asseco Prokom Gdynia', 6, 1995)
SET IDENTITY_INSERT [dbo].[Team] OFF
ALTER TABLE [dbo].[Player] ADD  CONSTRAINT [DF_Player_Injury]  DEFAULT ((0)) FOR [Injury]
GO
ALTER TABLE [dbo].[CoachingStaff]  WITH CHECK ADD  CONSTRAINT [FK_CoachingStaff_Contract] FOREIGN KEY([ContractID])
REFERENCES [dbo].[Contract] ([ID])
GO
ALTER TABLE [dbo].[CoachingStaff] CHECK CONSTRAINT [FK_CoachingStaff_Contract]
GO
ALTER TABLE [dbo].[CoachingStaff]  WITH CHECK ADD  CONSTRAINT [FK_CoachingStaff_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([ID])
GO
ALTER TABLE [dbo].[CoachingStaff] CHECK CONSTRAINT [FK_CoachingStaff_Person]
GO
ALTER TABLE [dbo].[CoachingStaff]  WITH CHECK ADD  CONSTRAINT [FK_CoachingStaff_Team] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Team] ([ID])
GO
ALTER TABLE [dbo].[CoachingStaff] CHECK CONSTRAINT [FK_CoachingStaff_Team]
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_Arena] FOREIGN KEY([ArenaID])
REFERENCES [dbo].[Arena] ([ID])
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_Arena]
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_Rank] FOREIGN KEY([RankID])
REFERENCES [dbo].[Rank] ([ID])
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_Rank]
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([ID])
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_Season]
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_Team] FOREIGN KEY([HomeTeam])
REFERENCES [dbo].[Team] ([ID])
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_Team]
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_Team1] FOREIGN KEY([GuestTeam])
REFERENCES [dbo].[Team] ([ID])
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_Team1]
GO
ALTER TABLE [dbo].[GameReferee]  WITH CHECK ADD  CONSTRAINT [FK_GameReferee_Game1] FOREIGN KEY([GameID])
REFERENCES [dbo].[Game] ([ID])
GO
ALTER TABLE [dbo].[GameReferee] CHECK CONSTRAINT [FK_GameReferee_Game1]
GO
ALTER TABLE [dbo].[GameReferee]  WITH CHECK ADD  CONSTRAINT [FK_GameReferee_Referee] FOREIGN KEY([RefereeID])
REFERENCES [dbo].[Referee] ([ID])
GO
ALTER TABLE [dbo].[GameReferee] CHECK CONSTRAINT [FK_GameReferee_Referee]
GO
ALTER TABLE [dbo].[Player]  WITH CHECK ADD  CONSTRAINT [FK_Player_Nationality] FOREIGN KEY([NationalityID])
REFERENCES [dbo].[Nationality] ([ID])
GO
ALTER TABLE [dbo].[Player] CHECK CONSTRAINT [FK_Player_Nationality]
GO
ALTER TABLE [dbo].[PlayerGameStat]  WITH CHECK ADD  CONSTRAINT [FK_PlayerGameStat_Game] FOREIGN KEY([GameID])
REFERENCES [dbo].[Game] ([ID])
GO
ALTER TABLE [dbo].[PlayerGameStat] CHECK CONSTRAINT [FK_PlayerGameStat_Game]
GO
ALTER TABLE [dbo].[PlayerGameStat]  WITH CHECK ADD  CONSTRAINT [FK_PlayerGameStat_Player] FOREIGN KEY([PlayerID])
REFERENCES [dbo].[Player] ([ID])
GO
ALTER TABLE [dbo].[PlayerGameStat] CHECK CONSTRAINT [FK_PlayerGameStat_Player]
GO
ALTER TABLE [dbo].[PlayerGameStat]  WITH CHECK ADD  CONSTRAINT [FK_PlayerGameStat_Stat] FOREIGN KEY([StatID])
REFERENCES [dbo].[Stat] ([ID])
GO
ALTER TABLE [dbo].[PlayerGameStat] CHECK CONSTRAINT [FK_PlayerGameStat_Stat]
GO
ALTER TABLE [dbo].[PlayerPosition]  WITH CHECK ADD  CONSTRAINT [FK_PlayerPosition_Player] FOREIGN KEY([PlayerID])
REFERENCES [dbo].[Player] ([ID])
GO
ALTER TABLE [dbo].[PlayerPosition] CHECK CONSTRAINT [FK_PlayerPosition_Player]
GO
ALTER TABLE [dbo].[PlayerPosition]  WITH CHECK ADD  CONSTRAINT [FK_PlayerPosition_Position] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Position] ([ID])
GO
ALTER TABLE [dbo].[PlayerPosition] CHECK CONSTRAINT [FK_PlayerPosition_Position]
GO
ALTER TABLE [dbo].[PlayerTeamContract]  WITH CHECK ADD  CONSTRAINT [FK_PlayerTeamContract_Contract] FOREIGN KEY([ContractID])
REFERENCES [dbo].[Contract] ([ID])
GO
ALTER TABLE [dbo].[PlayerTeamContract] CHECK CONSTRAINT [FK_PlayerTeamContract_Contract]
GO
ALTER TABLE [dbo].[PlayerTeamContract]  WITH CHECK ADD  CONSTRAINT [FK_PlayerTeamContract_Player] FOREIGN KEY([PlayerID])
REFERENCES [dbo].[Player] ([ID])
GO
ALTER TABLE [dbo].[PlayerTeamContract] CHECK CONSTRAINT [FK_PlayerTeamContract_Player]
GO
ALTER TABLE [dbo].[PlayerTeamContract]  WITH CHECK ADD  CONSTRAINT [FK_PlayerTeamContract_Team] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Team] ([ID])
GO
ALTER TABLE [dbo].[PlayerTeamContract] CHECK CONSTRAINT [FK_PlayerTeamContract_Team]
GO
ALTER TABLE [dbo].[RefereeLeagueLicense]  WITH CHECK ADD  CONSTRAINT [FK_RefereeLeagueLicense_League] FOREIGN KEY([LeagueID])
REFERENCES [dbo].[League] ([ID])
GO
ALTER TABLE [dbo].[RefereeLeagueLicense] CHECK CONSTRAINT [FK_RefereeLeagueLicense_League]
GO
ALTER TABLE [dbo].[RefereeLeagueLicense]  WITH CHECK ADD  CONSTRAINT [FK_RefereeLeagueLicense_Referee] FOREIGN KEY([RefereeID])
REFERENCES [dbo].[Referee] ([ID])
GO
ALTER TABLE [dbo].[RefereeLeagueLicense] CHECK CONSTRAINT [FK_RefereeLeagueLicense_Referee]
GO
ALTER TABLE [dbo].[Season]  WITH CHECK ADD  CONSTRAINT [FK_Season_League] FOREIGN KEY([LeagueID])
REFERENCES [dbo].[League] ([ID])
GO
ALTER TABLE [dbo].[Season] CHECK CONSTRAINT [FK_Season_League]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Arena] FOREIGN KEY([ArenaID])
REFERENCES [dbo].[Arena] ([ID])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Arena]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Game"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PlayerGameStat"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Player"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Team"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 136
               Right = 848
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stat"
            Begin Extent = 
               Top = 6
               Left = 886
               Bottom = 102
               Right = 1056
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PlayerTeamContract"
            Begin Extent = 
               Top = 102
               Left = 886
               Bottom = 215
               Right = 1056
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GuestTeamPlayersStats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GuestTeamPlayersStats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GuestTeamPlayersStats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[3] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Player"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PlayerGameStat"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 136
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stat"
            Begin Extent = 
               Top = 6
               Left = 486
               Bottom = 102
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PlayerTeamContract"
            Begin Extent = 
               Top = 6
               Left = 710
               Bottom = 119
               Right = 896
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Team"
            Begin Extent = 
               Top = 6
               Left = 934
               Bottom = 136
               Right = 1136
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Game"
            Begin Extent = 
               Top = 102
               Left = 486
               Bottom = 232
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GuestTeamStats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'       Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GuestTeamStats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'GuestTeamStats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[58] 4[3] 2[19] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Game"
            Begin Extent = 
               Top = 132
               Left = 569
               Bottom = 376
               Right = 739
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Player"
            Begin Extent = 
               Top = 8
               Left = 822
               Bottom = 240
               Right = 992
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PlayerGameStat"
            Begin Extent = 
               Top = 4
               Left = 331
               Bottom = 178
               Right = 501
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Team"
            Begin Extent = 
               Top = 252
               Left = 872
               Bottom = 450
               Right = 1058
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stat"
            Begin Extent = 
               Top = 23
               Left = 49
               Bottom = 142
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PlayerTeamContract"
            Begin Extent = 
               Top = 107
               Left = 1062
               Bottom = 237
               Right = 1232
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HomeTeamPlayersStats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'500
         Width = 1500
         Width = 1500
         Width = 2775
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HomeTeamPlayersStats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HomeTeamPlayersStats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[25] 4[11] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Player"
            Begin Extent = 
               Top = 16
               Left = 467
               Bottom = 146
               Right = 637
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PlayerGameStat"
            Begin Extent = 
               Top = 169
               Left = 232
               Bottom = 299
               Right = 402
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stat"
            Begin Extent = 
               Top = 152
               Left = 12
               Bottom = 248
               Right = 182
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Team"
            Begin Extent = 
               Top = 189
               Left = 927
               Bottom = 319
               Right = 1113
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PlayerTeamContract"
            Begin Extent = 
               Top = 21
               Left = 683
               Bottom = 134
               Right = 853
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Game"
            Begin Extent = 
               Top = 173
               Left = 459
               Bottom = 425
               Right = 629
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2040
         Width' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HomeTeamStats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 1470
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1470
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HomeTeamStats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HomeTeamStats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[50] 4[11] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Player"
            Begin Extent = 
               Top = 21
               Left = 256
               Bottom = 273
               Right = 426
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PlayerTeamContract"
            Begin Extent = 
               Top = 39
               Left = 514
               Bottom = 232
               Right = 684
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Contract"
            Begin Extent = 
               Top = 266
               Left = 731
               Bottom = 396
               Right = 901
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Team"
            Begin Extent = 
               Top = 6
               Left = 722
               Bottom = 136
               Right = 908
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 3075
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TeamRoster'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TeamRoster'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TeamRoster'
GO
