USE [TestProgramDataBase]
GO
/****** Object:  Table [dbo].[NewsPosts]    Script Date: 3/21/2019 9:51:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsPosts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NewsSourceId] [int] NOT NULL,
	[NewsName] [nvarchar](max) NULL,
	[NewsDescription] [nvarchar](max) NULL,
	[DateOfPublication] [datetime] NULL,
	[ResourceID] [nvarchar](max) NULL,
 CONSTRAINT [PK_TableDateBase] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsSources]    Script Date: 3/21/2019 9:51:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsSources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
 CONSTRAINT [PK_NewsSourcse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[NewsPosts]  WITH CHECK ADD  CONSTRAINT [FK_NewsPosts_NewsSources] FOREIGN KEY([NewsSourceId])
REFERENCES [dbo].[NewsSources] ([Id])
GO
ALTER TABLE [dbo].[NewsPosts] CHECK CONSTRAINT [FK_NewsPosts_NewsSources]
GO
