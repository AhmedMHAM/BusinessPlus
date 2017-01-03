USE [ERPBusinessPlus]
GO
/****** Object:  Schema [SystemSetting]    Script Date: 05/07/2016 21:17:38 ******/
CREATE SCHEMA [SystemSetting] AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[unitsofmeasure]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[unitsofmeasure](
	[unitid] [int] IDENTITY(1,1) NOT NULL,
	[unitname] [varchar](15) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[unitid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tendersuppliers]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tendersuppliers](
	[tenderid] [int] NOT NULL,
	[supplierid] [varchar](10) NOT NULL,
	[email] [varchar](40) NOT NULL,
	[responded] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tenderid] ASC,
	[supplierid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TenderItem]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TenderItem](
	[tenderid] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[quantity] [varchar](40) NOT NULL,
	[units] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tenderid] ASC,
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tender]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tender](
	[tenderid] [int] NOT NULL,
	[location] [varchar](5) NOT NULL,
	[address1] [varchar](40) NOT NULL,
	[address2] [varchar](40) NOT NULL,
	[address3] [varchar](40) NOT NULL,
	[address4] [varchar](40) NOT NULL,
	[address5] [varchar](20) NOT NULL,
	[address6] [varchar](15) NOT NULL,
	[telephone] [varchar](25) NOT NULL,
	[closed] [int] NOT NULL,
	[requiredbydate] [datetime] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tenderid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taxprovinces]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taxprovinces](
	[taxprovinceid] [int] IDENTITY(1,1) NOT NULL,
	[taxprovincename] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taxprovinceid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[woserialnos]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[woserialnos](
	[wo] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[serialno] [varchar](30) NOT NULL,
	[quantity] [int] NOT NULL,
	[qualitytext] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wo] ASC,
	[stockid] ASC,
	[serialno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taxgroups]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taxgroups](
	[taxgroupid] [int] IDENTITY(1,1) NOT NULL,
	[taxgroupdescription] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taxgroupid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taxcategories]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taxcategories](
	[taxcatid] [int] IDENTITY(1,1) NOT NULL,
	[taxcatname] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taxcatid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SupplierType]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SupplierType](
	[typeid] [int] IDENTITY(1,1) NOT NULL,
	[typename] [varchar](100) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[supplierdiscounts]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[supplierdiscounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplierno] [varchar](10) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[discountnarrative] [varchar](20) NOT NULL,
	[discountpercent] [int] NOT NULL,
	[discountamount] [int] NOT NULL,
	[effectivefrom] [date] NOT NULL,
	[effectiveto] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tag](
	[tagref] [int] IDENTITY(1,1) NOT NULL,
	[tagdescription] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tagref] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SysType]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysType](
	[typeid] [int] NOT NULL,
	[typename] [char](50) NOT NULL,
	[typeno] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockcatproperties]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockcatproperties](
	[stkcatpropid] [int] IDENTITY(1,1) NOT NULL,
	[categoryid] [char](6) NOT NULL,
	[label] [text] NOT NULL,
	[controltype] [int] NOT NULL,
	[defaultvalue] [varchar](100) NOT NULL,
	[maximumvalue] [int] NOT NULL,
	[reqatsalesorder] [int] NOT NULL,
	[minimumvalue] [int] NOT NULL,
	[numericvalue] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stkcatpropid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockCategory]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockCategory](
	[categoryid] [varchar](6) NOT NULL,
	[categorydescription] [char](20) NOT NULL,
	[stocktype] [char](1) NOT NULL,
	[stockact] [varchar](20) NOT NULL,
	[adjglact] [varchar](20) NOT NULL,
	[issueglact] [varchar](20) NOT NULL,
	[purchpricevaract] [varchar](20) NOT NULL,
	[materialuseagevarac] [varchar](20) NOT NULL,
	[wipact] [varchar](20) NOT NULL,
	[defaulttaxcatid] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shipper](
	[shipper_id] [int] IDENTITY(1,1) NOT NULL,
	[shippername] [char](40) NOT NULL,
	[mincharge] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shipper_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockdescriptiontranslations]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockdescriptiontranslations](
	[stockid] [varchar](20) NOT NULL,
	[language_id] [varchar](10) NOT NULL,
	[descriptiontranslation] [varchar](50) NULL,
	[longdescriptiontranslation] [text] NULL,
	[needsrevision] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stockid] ASC,
	[language_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[purchorderauth]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[purchorderauth](
	[userid] [varchar](20) NOT NULL,
	[currabrev] [char](3) NOT NULL,
	[cancreate] [int] NOT NULL,
	[authlevel] [int] NOT NULL,
	[offhold] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC,
	[currabrev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[relateditems]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[relateditems](
	[stockid] [varchar](20) NOT NULL,
	[related] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stockid] ASC,
	[related] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[regions]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[regions](
	[region_id] [int] IDENTITY(1,1) NOT NULL,
	[region_name] [varchar](25) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesMan]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesMan](
	[salesmancode] [varchar](4) NOT NULL,
	[salesmanname] [char](30) NOT NULL,
	[smantel] [char](20) NOT NULL,
	[smanfax] [char](20) NOT NULL,
	[commissionrate1] [int] NOT NULL,
	[breakpoint] [decimal](10, 0) NOT NULL,
	[commissionrate2] [int] NOT NULL,
	[currents] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[salesmancode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salesglpostings]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salesglpostings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[area] [varchar](3) NOT NULL,
	[stkcat] [varchar](6) NOT NULL,
	[discountglcode] [varchar](20) NOT NULL,
	[salesglcode] [varchar](20) NOT NULL,
	[salestype] [char](2) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salescattranslations]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salescattranslations](
	[salescatid] [int] NOT NULL,
	[language_id] [varchar](10) NOT NULL,
	[salescattranslation] [varchar](40) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[salescatid] ASC,
	[language_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reports]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reports](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[reportname] [varchar](30) NOT NULL,
	[reporttype] [char](3) NOT NULL,
	[groupname] [varchar](9) NOT NULL,
	[defaultreport] [int] NOT NULL,
	[papersize] [varchar](15) NOT NULL,
	[paperorientation] [int] NOT NULL,
	[margintop] [int] NOT NULL,
	[marginbottom] [int] NOT NULL,
	[marginleft] [int] NOT NULL,
	[marginright] [int] NOT NULL,
	[coynamefont] [varchar](20) NOT NULL,
	[coynamefontsize] [int] NOT NULL,
	[coynamefontcolor] [varchar](11) NOT NULL,
	[coynamealign] [char](1) NOT NULL,
	[coynameshow] [int] NOT NULL,
	[title1desc] [varchar](50) NOT NULL,
	[title1font] [varchar](20) NOT NULL,
	[title1fontsize] [int] NOT NULL,
	[title1fontcolor] [varchar](11) NOT NULL,
	[title1fontalign] [varchar](3) NOT NULL,
	[title1show] [varchar](3) NOT NULL,
	[title2desc] [varchar](50) NOT NULL,
	[title2font] [varchar](20) NOT NULL,
	[title2fontsize] [int] NOT NULL,
	[title2fontcolor] [varchar](11) NOT NULL,
	[title2fontalign] [varchar](3) NOT NULL,
	[title2show] [varchar](3) NOT NULL,
	[filterfont] [varchar](10) NOT NULL,
	[filterfontsize] [int] NOT NULL,
	[filterfontcolor] [varchar](11) NOT NULL,
	[filterfontalign] [varchar](3) NOT NULL,
	[datafont] [varchar](10) NOT NULL,
	[datafontsize] [int] NOT NULL,
	[datafontcolor] [varchar](10) NOT NULL,
	[datafontalign] [varchar](3) NOT NULL,
	[totalsfont] [varchar](10) NOT NULL,
	[totalsfontsize] [int] NOT NULL,
	[totalsfontcolor] [varchar](11) NOT NULL,
	[totalsfontalign] [varchar](3) NOT NULL,
	[col1width] [int] NOT NULL,
	[col2width] [int] NOT NULL,
	[col3width] [int] NOT NULL,
	[col4width] [int] NOT NULL,
	[col5width] [int] NOT NULL,
	[col6width] [int] NOT NULL,
	[col7width] [int] NOT NULL,
	[col8width] [int] NOT NULL,
	[col9width] [int] NOT NULL,
	[col10width] [int] NOT NULL,
	[col11width] [int] NOT NULL,
	[col12width] [int] NOT NULL,
	[col13width] [int] NOT NULL,
	[col14width] [int] NOT NULL,
	[col15width] [int] NOT NULL,
	[col16width] [int] NOT NULL,
	[col17width] [int] NOT NULL,
	[col18width] [int] NOT NULL,
	[col19width] [int] NOT NULL,
	[col20width] [int] NOT NULL,
	[table1] [varchar](25) NOT NULL,
	[table2] [varchar](25) NULL,
	[table2criteria] [varchar](75) NULL,
	[table3] [varchar](25) NULL,
	[table3criteria] [varchar](75) NULL,
	[table4] [varchar](25) NULL,
	[table4criteria] [varchar](75) NULL,
	[table5] [varchar](25) NULL,
	[table5criteria] [varchar](75) NULL,
	[table6] [varchar](25) NULL,
	[table6criteria] [varchar](75) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reportlinks]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reportlinks](
	[table1] [varchar](25) NOT NULL,
	[table2] [varchar](25) NOT NULL,
	[equation] [varchar](75) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reportheaders]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reportheaders](
	[reportid] [int] IDENTITY(1,1) NOT NULL,
	[reportheading] [varchar](80) NOT NULL,
	[groupbydata1] [varchar](15) NOT NULL,
	[newpageafter1] [int] NOT NULL,
	[lower1] [varchar](10) NOT NULL,
	[upper1] [varchar](10) NOT NULL,
	[groupbydata2] [varchar](15) NULL,
	[newpageafter2] [int] NOT NULL,
	[lower2] [varchar](10) NULL,
	[upper2] [varchar](10) NULL,
	[groupbydata3] [varchar](15) NULL,
	[newpageafter3] [int] NOT NULL,
	[lower3] [varchar](10) NULL,
	[upper3] [varchar](10) NULL,
	[groupbydata4] [varchar](15) NOT NULL,
	[newpageafter4] [int] NOT NULL,
	[upper4] [varchar](10) NOT NULL,
	[lower4] [varchar](10) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[reportid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reportfields]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reportfields](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[reportid] [int] NOT NULL,
	[entrytype] [varchar](15) NOT NULL,
	[seqnum] [int] NOT NULL,
	[fieldname] [varchar](80) NOT NULL,
	[displaydesc] [varchar](25) NOT NULL,
	[visible] [int] NOT NULL,
	[columnbreak] [int] NOT NULL,
	[params] [text] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesType]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesType](
	[typeabbrev] [char](2) NOT NULL,
	[sales_type] [varchar](40) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typeabbrev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salescat]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salescat](
	[salescatid] [int] IDENTITY(1,1) NOT NULL,
	[parentcatid] [int] NULL,
	[salescatname] [varchar](50) NULL,
	[active] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[salescatid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[scripts]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[scripts](
	[script] [varchar](78) NOT NULL,
	[pagesecurity] [int] NOT NULL,
	[descriptionn] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[script] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sellthroughsupport]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sellthroughsupport](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplierno] [varchar](10) NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[categoryid] [char](6) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[narrative] [varchar](20) NOT NULL,
	[rebatepercent] [int] NOT NULL,
	[rebateamount] [int] NOT NULL,
	[effectivefrom] [date] NOT NULL,
	[effectiveto] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[securitytokens]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[securitytokens](
	[tokenid] [int] NOT NULL,
	[tokenname] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tokenid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[securityroles]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[securityroles](
	[secroleid] [int] IDENTITY(1,1) NOT NULL,
	[secrolename] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[secroleid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[periods]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[periods](
	[periodno] [int] NOT NULL,
	[lastdate_in_period] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[periodno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCTypeTabs]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCTypeTabs](
	[typetabcode] [varchar](20) NOT NULL,
	[typetabdescription] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typetabcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pcashdetails]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pcashdetails](
	[counterindex] [int] IDENTITY(1,1) NOT NULL,
	[tabcode] [varchar](20) NOT NULL,
	[datee] [date] NOT NULL,
	[codeexpense] [varchar](20) NOT NULL,
	[amount] [int] NOT NULL,
	[authorized] [date] NOT NULL,
	[posted] [int] NOT NULL,
	[notes] [text] NOT NULL,
	[receipt] [text] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[counterindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[paymentterms]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[paymentterms](
	[termsindicator] [char](2) NOT NULL,
	[terms] [char](40) NOT NULL,
	[daysbeforedue] [int] NOT NULL,
	[dayinfollowingmonth] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[termsindicator] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[paymentid] [int] IDENTITY(1,1) NOT NULL,
	[paymentname] [varchar](15) NOT NULL,
	[paymenttype] [int] NOT NULL,
	[receipttype] [int] NOT NULL,
	[usepreprintedstationery] [int] NOT NULL,
	[opencashdrawer] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[paymentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mrpplannedorders]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mrpplannedorders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[part] [char](20) NULL,
	[duedate] [date] NULL,
	[supplyquantity] [int] NULL,
	[ordertype] [varchar](6) NULL,
	[orderno] [int] NULL,
	[mrpdate] [date] NULL,
	[updateflag] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mrpdemandtypes]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mrpdemandtypes](
	[mrpdemandtype] [varchar](6) NOT NULL,
	[description] [char](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mrpdemandtype] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[recurringsalesorders]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[recurringsalesorders](
	[recurrorderno] [int] IDENTITY(1,1) NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[branchcode] [varchar](10) NOT NULL,
	[customerref] [varchar](50) NOT NULL,
	[buyername] [varchar](50) NULL,
	[comments] [text] NULL,
	[orddate] [date] NOT NULL,
	[ordertype] [char](2) NOT NULL,
	[shipvia] [int] NOT NULL,
	[deladd1] [varchar](40) NOT NULL,
	[deladd2] [varchar](40) NOT NULL,
	[deladd3] [varchar](40) NOT NULL,
	[deladd4] [varchar](40) NULL,
	[deladd5] [varchar](20) NOT NULL,
	[deladd6] [varchar](15) NOT NULL,
	[contactphone] [varchar](25) NULL,
	[contactemail] [varchar](25) NULL,
	[deliverto] [varchar](40) NOT NULL,
	[freightcost] [int] NOT NULL,
	[fromstkloc] [varchar](5) NOT NULL,
	[lastrecurrence] [date] NOT NULL,
	[stopdate] [date] NOT NULL,
	[frequency] [int] NOT NULL,
	[autoinvoice] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[recurrorderno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qatests]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qatests](
	[testid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[method] [varchar](20) NULL,
	[groupby] [varchar](20) NULL,
	[units] [varchar](20) NOT NULL,
	[typee] [varchar](15) NOT NULL,
	[defaultvalue] [varchar](150) NOT NULL,
	[numericvalue] [int] NOT NULL,
	[showoncert] [int] NOT NULL,
	[showonspec] [int] NOT NULL,
	[showontestplan] [int] NOT NULL,
	[active] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[testid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pricematrix]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pricematrix](
	[salestype] [char](2) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[quantitybreak] [int] NOT NULL,
	[price] [int] NOT NULL,
	[currabrev] [char](3) NOT NULL,
	[startdate] [date] NOT NULL,
	[enddate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[salestype] ASC,
	[stockid] ASC,
	[currabrev] ASC,
	[quantitybreak] ASC,
	[startdate] ASC,
	[enddate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[locationusers]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[locationusers](
	[loccode] [varchar](5) NOT NULL,
	[userid] [varchar](20) NOT NULL,
	[canview] [int] NOT NULL,
	[canupd] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[loccode] ASC,
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mrpcalendar]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mrpcalendar](
	[calendardate] [date] NOT NULL,
	[daynumber] [int] NOT NULL,
	[manufacturingflag] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[calendardate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[manufacturers]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[manufacturers](
	[manufacturers_id] [int] IDENTITY(1,1) NOT NULL,
	[manufacturers_name] [varchar](32) NOT NULL,
	[manufacturers_url] [varchar](50) NOT NULL,
	[manufacturers_image] [varchar](64) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[manufacturers_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mailgroups]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mailgroups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupname] [varchar](100) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lastcostrollup]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lastcostrollup](
	[stockid] [varchar](20) NOT NULL,
	[totalonhand] [int] NOT NULL,
	[matcost] [decimal](20, 4) NOT NULL,
	[labcost] [decimal](20, 4) NOT NULL,
	[oheadcost] [decimal](20, 4) NOT NULL,
	[categoryid] [char](6) NOT NULL,
	[stockact] [varchar](20) NOT NULL,
	[adjglact] [varchar](20) NOT NULL,
	[newmatcost] [decimal](20, 4) NOT NULL,
	[newlabcost] [decimal](20, 4) NOT NULL,
	[newoheadcost] [decimal](20, 4) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[labels]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[labels](
	[labelid] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[pagewidth] [int] NOT NULL,
	[pageheight] [int] NOT NULL,
	[height] [int] NOT NULL,
	[width] [int] NOT NULL,
	[topmargin] [int] NOT NULL,
	[leftmargin] [int] NOT NULL,
	[rowheight] [int] NOT NULL,
	[columnwidth] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[labelid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[labelfields]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[labelfields](
	[labelfieldid] [int] IDENTITY(1,1) NOT NULL,
	[labelid] [int] NOT NULL,
	[fieldvalue] [varchar](20) NOT NULL,
	[vpos] [int] NOT NULL,
	[hpos] [int] NOT NULL,
	[fontsize] [int] NOT NULL,
	[barcode] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[labelfieldid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[jobs]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jobs](
	[job_id] [varchar](10) NOT NULL,
	[job_title] [varchar](35) NOT NULL,
	[min_salary] [decimal](8, 0) NULL,
	[max_salary] [decimal](8, 0) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employees]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employees](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](20) NULL,
	[last_name] [varchar](25) NOT NULL,
	[email] [varchar](25) NOT NULL,
	[phone_number] [varchar](20) NULL,
	[hire_date] [date] NOT NULL,
	[job_id] [varchar](10) NOT NULL,
	[salary] [decimal](8, 2) NOT NULL,
	[commission_pct] [decimal](2, 2) NULL,
	[manager_id] [int] NULL,
	[department_id] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[countries]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[countries](
	[country_id] [char](2) NOT NULL,
	[country_name] [varchar](40) NULL,
	[region_id] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loca]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loca](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[street_address] [varchar](40) NULL,
	[postal_code] [varchar](12) NULL,
	[city] [varchar](30) NOT NULL,
	[state_province] [varchar](25) NULL,
	[country_id] [char](2) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dept]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dept](
	[department_id] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [varchar](30) NOT NULL,
	[manager_id] [int] NULL,
	[location_id] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[job_history]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[job_history](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[job_id] [varchar](10) NOT NULL,
	[department_id] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[holdreasons]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[holdreasons](
	[reasoncode] [int] NOT NULL,
	[reasondescription] [char](30) NOT NULL,
	[dissallowinvoices] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[reasoncode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FixedAssetTransaction]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FixedAssetTransaction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[assetid] [int] NOT NULL,
	[transtype] [int] NOT NULL,
	[transdate] [date] NOT NULL,
	[transno] [int] NOT NULL,
	[periodno] [int] NOT NULL,
	[inputdate] [date] NOT NULL,
	[fixedassettranstype] [varchar](8) NOT NULL,
	[amount] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FixedAssetTask]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FixedAssetTask](
	[taskid] [int] IDENTITY(1,1) NOT NULL,
	[assetid] [int] NOT NULL,
	[taskdescription] [text] NOT NULL,
	[frequencydays] [int] NOT NULL,
	[lastcompleted] [date] NOT NULL,
	[userresponsible] [varchar](20) NOT NULL,
	[manager] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taskid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FixedAssetLocation]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FixedAssetLocation](
	[locationid] [char](6) NOT NULL,
	[locationdescription] [char](20) NOT NULL,
	[parentlocationid] [char](6) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[locationid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FixedAssetCategory]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FixedAssetCategory](
	[categoryid] [char](6) NOT NULL,
	[categorydescription] [char](20) NOT NULL,
	[costact] [varchar](20) NOT NULL,
	[depnact] [varchar](20) NOT NULL,
	[disposalact] [varchar](20) NOT NULL,
	[accumdepnact] [varchar](20) NOT NULL,
	[defaultdepnrate] [int] NOT NULL,
	[defaultdepntype] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FixedAsset]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FixedAsset](
	[assetid] [int] IDENTITY(1,1) NOT NULL,
	[serialno] [varchar](30) NOT NULL,
	[barcode] [varchar](20) NOT NULL,
	[assetlocation] [varchar](6) NOT NULL,
	[cost] [int] NOT NULL,
	[accumdepn] [int] NOT NULL,
	[datepurchased] [date] NOT NULL,
	[disposalproceeds] [int] NOT NULL,
	[assetcategoryid] [varchar](6) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[longdescription] [text] NOT NULL,
	[depntype] [int] NOT NULL,
	[depnrate] [int] NOT NULL,
	[disposaldate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[assetid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[factorcompanies]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[factorcompanies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[coyname] [varchar](50) NOT NULL,
	[address1] [varchar](40) NOT NULL,
	[address2] [varchar](40) NOT NULL,
	[address3] [varchar](40) NOT NULL,
	[address4] [varchar](40) NOT NULL,
	[address5] [varchar](20) NOT NULL,
	[address6] [varchar](15) NOT NULL,
	[contact] [varchar](25) NOT NULL,
	[telephone] [varchar](25) NOT NULL,
	[fax] [varchar](25) NOT NULL,
	[email] [varchar](55) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[custnotes]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[custnotes](
	[noteid] [int] IDENTITY(1,1) NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[href] [varchar](100) NOT NULL,
	[note] [text] NOT NULL,
	[date] [date] NOT NULL,
	[priority] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[noteid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[geocode_param]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[geocode_param](
	[geocodeid] [int] IDENTITY(1,1) NOT NULL,
	[geocode_key] [varchar](20) NOT NULL,
	[center_long] [varchar](20) NOT NULL,
	[center_lat] [varchar](20) NOT NULL,
	[map_height] [varchar](10) NOT NULL,
	[map_width] [varchar](10) NOT NULL,
	[map_host] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[geocodeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[emailsettings]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[emailsettings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[host] [varchar](30) NOT NULL,
	[port] [char](5) NOT NULL,
	[heloaddress] [varchar](20) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](30) NULL,
	[timeoutt] [int] NULL,
	[companyname] [varchar](50) NULL,
	[auth] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[edimessageformat]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[edimessageformat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[partnercode] [varchar](10) NOT NULL,
	[messagetype] [varchar](6) NOT NULL,
	[section] [varchar](7) NOT NULL,
	[sequenceno] [int] NOT NULL,
	[linetext] [varchar](70) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ediitemmapping]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ediitemmapping](
	[supporcust] [varchar](4) NOT NULL,
	[partnercode] [varchar](10) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[partnerstockid] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[supporcust] ASC,
	[partnercode] ASC,
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[edi_orders_segs]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[edi_orders_segs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segtag] [char](3) NOT NULL,
	[seggroup] [int] NOT NULL,
	[maxoccur] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[edi_orders_seg_groups]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[edi_orders_seg_groups](
	[seggroupno] [int] NOT NULL,
	[maxoccur] [int] NOT NULL,
	[parentseggroup] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seggroupno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[debtortypenotes]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[debtortypenotes](
	[noteid] [int] IDENTITY(1,1) NOT NULL,
	[typeid] [int] NOT NULL,
	[href] [varchar](100) NOT NULL,
	[note] [varchar](200) NOT NULL,
	[datee] [date] NOT NULL,
	[priority] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[noteid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[debtortype]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[debtortype](
	[typeid] [int] IDENTITY(1,1) NOT NULL,
	[typename] [varchar](100) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[departments]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[departments](
	[departmentid] [int] IDENTITY(1,1) NOT NULL,
	[descriptions] [varchar](100) NOT NULL,
	[authoriser] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[departmentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[custcontacts]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[custcontacts](
	[contid] [int] IDENTITY(1,1) NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[contactname] [varchar](40) NOT NULL,
	[role] [varchar](40) NOT NULL,
	[phoneno] [varchar](20) NOT NULL,
	[notes] [varchar](255) NOT NULL,
	[email] [varchar](55) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[coycode] [int] NOT NULL,
	[coyname] [varchar](50) NOT NULL,
	[gstno] [varchar](20) NOT NULL,
	[companynumber] [varchar](20) NOT NULL,
	[regoffice1] [varchar](40) NOT NULL,
	[regoffice2] [varchar](40) NOT NULL,
	[regoffice3] [varchar](40) NOT NULL,
	[regoffice4] [varchar](40) NOT NULL,
	[regoffice5] [varchar](20) NOT NULL,
	[regoffice6] [varchar](15) NOT NULL,
	[telephone] [varchar](25) NOT NULL,
	[fax] [varchar](25) NOT NULL,
	[email] [varchar](55) NOT NULL,
	[currencydefault] [varchar](4) NOT NULL,
	[debtorsact] [varchar](20) NOT NULL,
	[pytdiscountact] [varchar](20) NOT NULL,
	[creditorsact] [varchar](20) NOT NULL,
	[payrollact] [varchar](20) NOT NULL,
	[grnact] [varchar](20) NOT NULL,
	[exchangediffact] [varchar](20) NOT NULL,
	[purchasesexchangediffact] [varchar](20) NOT NULL,
	[retainedearnings] [varchar](20) NOT NULL,
	[gllink_debtors] [int] NULL,
	[gllink_creditors] [int] NULL,
	[gllink_stock] [int] NULL,
	[freightact] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[coycode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cogsglpostings]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cogsglpostings](
	[id] [int] NOT NULL,
	[area] [char](3) NOT NULL,
	[stkcat] [varchar](6) NOT NULL,
	[glcode] [varchar](20) NOT NULL,
	[salestype] [char](2) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccountSection]    Script Date: 05/07/2016 21:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccountSection](
	[sectionid] [int] IDENTITY(1,1) NOT NULL,
	[sectionname] [text] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sectionid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AssetManager]    Script Date: 05/07/2016 21:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AssetManager](
	[id] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[serialno] [varchar](30) NOT NULL,
	[location] [varchar](15) NOT NULL,
	[cost] [int] NOT NULL,
	[depn] [int] NOT NULL,
	[datepurchased] [date] NOT NULL,
	[disposalvalue] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 05/07/2016 21:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Areas](
	[areacode] [char](3) NOT NULL,
	[areadescription] [varchar](25) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[areacode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankAccountUser]    Script Date: 05/07/2016 21:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankAccountUser](
	[accountcode] [varchar](20) NOT NULL,
	[userid] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Currency](
	[currency] [char](20) NOT NULL,
	[currabrev] [char](3) NOT NULL,
	[country] [char](50) NOT NULL,
	[hundredsname] [char](15) NOT NULL,
	[decimalplaces] [int] NOT NULL,
	[rate] [int] NOT NULL,
	[webcart] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[currabrev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[AddNewAccountSection]    Script Date: 05/07/2016 21:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[AddNewAccountSection]( 
@sectionname text ) 
 

as  
begin  
   Insert into AccountSection (sectionname) values(@sectionname) 
End
GO
/****** Object:  Table [dbo].[AccountGroup]    Script Date: 05/07/2016 21:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccountGroup](
	[groupname] [char](30) NOT NULL,
	[sectioninaccounts] [int] NOT NULL,
	[pandl] [int] NOT NULL,
	[sequenceintb] [int] NOT NULL,
	[parentgroupname] [varchar](1) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[groupname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DebtorTransaction]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DebtorTransaction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transno] [int] NOT NULL,
	[typee] [int] NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[branchcode] [varchar](10) NOT NULL,
	[trandate] [datetime] NOT NULL,
	[inputdate] [datetime] NOT NULL,
	[prd] [int] NOT NULL,
	[settled] [int] NOT NULL,
	[reference] [varchar](20) NOT NULL,
	[tpe] [char](2) NOT NULL,
	[order_] [int] NOT NULL,
	[rate] [int] NOT NULL,
	[ovamount] [int] NOT NULL,
	[ovgst] [int] NOT NULL,
	[ovfreight] [int] NOT NULL,
	[ovdiscount] [int] NOT NULL,
	[diffonexch] [int] NOT NULL,
	[alloc] [int] NOT NULL,
	[invtext] [text] NULL,
	[shipvia] [int] NOT NULL,
	[edisent] [int] NOT NULL,
	[consignment] [varchar](20) NOT NULL,
	[packages] [int] NOT NULL,
	[salesperson] [varchar](4) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DebtorMaster]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DebtorMaster](
	[debtorno] [varchar](10) NOT NULL,
	[name] [varchar](40) NOT NULL,
	[address1] [varchar](40) NOT NULL,
	[address2] [varchar](40) NOT NULL,
	[address3] [varchar](40) NOT NULL,
	[address4] [varchar](50) NOT NULL,
	[address5] [varchar](20) NOT NULL,
	[address6] [varchar](40) NOT NULL,
	[currcode] [char](3) NOT NULL,
	[salestype] [char](2) NOT NULL,
	[clientsince] [datetime] NOT NULL,
	[holdreason] [int] NOT NULL,
	[paymentterms] [char](2) NOT NULL,
	[discount] [int] NOT NULL,
	[pymtdiscount] [int] NOT NULL,
	[lastpaid] [int] NOT NULL,
	[lastpaiddate] [datetime] NULL,
	[creditlimit] [int] NOT NULL,
	[invaddrbranch] [int] NOT NULL,
	[discountcode] [char](2) NOT NULL,
	[ediinvoices] [int] NOT NULL,
	[ediorders] [int] NOT NULL,
	[edireference] [varchar](20) NOT NULL,
	[editransport] [varchar](5) NOT NULL,
	[ediaddress] [varchar](50) NOT NULL,
	[ediserveruser] [varchar](20) NOT NULL,
	[ediserverpwd] [varchar](20) NOT NULL,
	[taxref] [varchar](20) NOT NULL,
	[customerpoline] [int] NOT NULL,
	[typeid] [int] NOT NULL,
	[language_id] [varchar](10) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[debtorno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[discountmatrix]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[discountmatrix](
	[salestype] [char](2) NOT NULL,
	[discountcategory] [char](2) NOT NULL,
	[quantitybreak] [int] NOT NULL,
	[discountrate] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[salestype] ASC,
	[discountcategory] ASC,
	[quantitybreak] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[GetAllAccountSection]    Script Date: 05/07/2016 21:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetAllAccountSection]

as  
begin  
   select * from AccountSection
End
GO
/****** Object:  Table [dbo].[internalstockcatrole]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[internalstockcatrole](
	[categoryid] [varchar](6) NOT NULL,
	[secroleid] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC,
	[secroleid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[locations]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[locations](
	[loccode] [varchar](5) NOT NULL,
	[locationname] [varchar](50) NOT NULL,
	[deladd1] [varchar](40) NOT NULL,
	[deladd2] [varchar](40) NOT NULL,
	[deladd3] [varchar](40) NOT NULL,
	[deladd4] [varchar](40) NOT NULL,
	[deladd5] [varchar](20) NOT NULL,
	[deladd6] [varchar](15) NOT NULL,
	[tel] [varchar](30) NOT NULL,
	[fax] [varchar](30) NOT NULL,
	[email] [varchar](55) NOT NULL,
	[contact] [varchar](30) NOT NULL,
	[taxprovinceid] [int] NOT NULL,
	[cashsalecustomer] [varchar](10) NULL,
	[managed] [int] NULL,
	[cashsalebranch] [varchar](10) NULL,
	[internalrequest] [int] NOT NULL,
	[usedforwo] [int] NOT NULL,
	[glaccountcode] [varchar](20) NOT NULL,
	[allowinvoicing] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[loccode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[prodspecs]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[prodspecs](
	[keyval] [varchar](25) NOT NULL,
	[testid] [int] NOT NULL,
	[defaultvalue] [varchar](150) NOT NULL,
	[targetvalue] [varchar](30) NOT NULL,
	[rangemin] [float] NULL,
	[rangemax] [float] NULL,
	[showoncert] [int] NOT NULL,
	[showonspec] [int] NOT NULL,
	[showontestplan] [int] NOT NULL,
	[active] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[keyval] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[securitygroups]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[securitygroups](
	[secroleid] [int] NOT NULL,
	[tokenid] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[secroleid] ASC,
	[tokenid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sampleresults]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sampleresults](
	[resultid] [int] IDENTITY(1,1) NOT NULL,
	[sampleid] [int] NOT NULL,
	[testid] [int] NOT NULL,
	[defaultvalue] [varchar](150) NOT NULL,
	[targetvalue] [varchar](30) NOT NULL,
	[rangemin] [int] NULL,
	[rangemax] [int] NULL,
	[testvalue] [varchar](30) NOT NULL,
	[testdate] [date] NOT NULL,
	[testedby] [varchar](15) NOT NULL,
	[comments] [varchar](255) NOT NULL,
	[isinspec] [int] NOT NULL,
	[showoncert] [int] NOT NULL,
	[showontestplan] [int] NOT NULL,
	[manuallyadded] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[resultid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salesanalysis]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salesanalysis](
	[typeabbrev] [char](2) NOT NULL,
	[periodno] [int] NOT NULL,
	[amt] [int] NOT NULL,
	[cost] [int] NOT NULL,
	[cust] [varchar](10) NOT NULL,
	[custbranch] [varchar](10) NOT NULL,
	[qty] [int] NOT NULL,
	[disc] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[area] [varchar](3) NOT NULL,
	[budgetoractual] [int] NOT NULL,
	[salesperson] [char](3) NOT NULL,
	[stkcategory] [varchar](6) NOT NULL,
	[id] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reportcolumns]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reportcolumns](
	[reportid] [int] NOT NULL,
	[colno] [int] NOT NULL,
	[heading1] [varchar](15) NOT NULL,
	[heading2] [varchar](15) NULL,
	[calculation] [int] NOT NULL,
	[periodfrom] [int] NULL,
	[periodto] [int] NULL,
	[datatype] [varchar](15) NULL,
	[colnumerator] [int] NULL,
	[coldenominator] [int] NULL,
	[calcoperator] [char](1) NULL,
	[budgetoractual] [int] NOT NULL,
	[valformat] [char](1) NOT NULL,
	[constant_] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[reportid] ASC,
	[colno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockMaster]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockMaster](
	[stockid] [varchar](20) NOT NULL,
	[categoryid] [varchar](6) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[longdescription] [text] NOT NULL,
	[units] [varchar](20) NOT NULL,
	[mbflag] [char](1) NOT NULL,
	[actualcost] [decimal](20, 4) NOT NULL,
	[lastcost] [decimal](20, 4) NOT NULL,
	[materialcost] [decimal](20, 4) NOT NULL,
	[labourcost] [decimal](20, 4) NOT NULL,
	[overheadcost] [decimal](20, 4) NOT NULL,
	[lowestlevel] [int] NOT NULL,
	[discontinued] [int] NOT NULL,
	[controlled] [int] NOT NULL,
	[eoq] [int] NOT NULL,
	[volume] [decimal](20, 4) NOT NULL,
	[grossweight] [decimal](20, 4) NOT NULL,
	[barcode] [varchar](50) NOT NULL,
	[discountcategory] [char](2) NOT NULL,
	[taxcatid] [int] NOT NULL,
	[serialised] [int] NOT NULL,
	[appendfile] [varchar](40) NOT NULL,
	[perishable] [int] NOT NULL,
	[decimalplaces] [int] NOT NULL,
	[pansize] [int] NOT NULL,
	[shrinkfactor] [int] NOT NULL,
	[nextserialno] [int] NOT NULL,
	[netweight] [decimal](20, 4) NOT NULL,
	[lastcostupdate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[supplierid] [varchar](10) NOT NULL,
	[suppname] [varchar](40) NOT NULL,
	[address1] [varchar](40) NOT NULL,
	[address2] [varchar](40) NOT NULL,
	[address3] [varchar](40) NOT NULL,
	[address4] [varchar](50) NOT NULL,
	[address5] [varchar](20) NOT NULL,
	[address6] [varchar](40) NOT NULL,
	[supptype] [int] NOT NULL,
	[lat] [float] NOT NULL,
	[lng] [float] NOT NULL,
	[currcode] [char](3) NOT NULL,
	[suppliersince] [date] NOT NULL,
	[paymentterms] [char](2) NOT NULL,
	[lastpaid] [int] NOT NULL,
	[lastpaiddate] [datetime] NULL,
	[bankact] [varchar](30) NOT NULL,
	[bankref] [varchar](12) NOT NULL,
	[bankpartics] [varchar](12) NOT NULL,
	[remittance] [int] NOT NULL,
	[taxgroupid] [int] NOT NULL,
	[factorcompanyid] [int] NOT NULL,
	[taxref] [varchar](20) NOT NULL,
	[phn] [varchar](50) NOT NULL,
	[port] [varchar](200) NOT NULL,
	[email] [varchar](55) NULL,
	[fax] [varchar](25) NULL,
	[telephone] [varchar](25) NULL,
	[url] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[supplierid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Offer]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Offer](
	[offerid] [int] IDENTITY(1,1) NOT NULL,
	[tenderid] [int] NOT NULL,
	[supplierid] [varchar](10) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[quantity] [int] NOT NULL,
	[uom] [varchar](15) NOT NULL,
	[price] [int] NOT NULL,
	[expirydate] [date] NOT NULL,
	[currcode] [char](3) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[offerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[supptrans]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[supptrans](
	[transno] [int] NOT NULL,
	[typee] [int] NOT NULL,
	[supplierno] [varchar](10) NOT NULL,
	[suppreference] [varchar](20) NOT NULL,
	[trandate] [date] NOT NULL,
	[duedate] [date] NOT NULL,
	[inputdate] [datetime] NOT NULL,
	[settled] [int] NOT NULL,
	[rate] [int] NOT NULL,
	[ovamount] [int] NOT NULL,
	[ovgst] [int] NOT NULL,
	[diffonexch] [int] NOT NULL,
	[alloc] [int] NOT NULL,
	[transtext] [text] NULL,
	[hold] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[userid] [varchar](20) NOT NULL,
	[password] [text] NOT NULL,
	[realname] [varchar](35) NOT NULL,
	[customerid] [varchar](10) NOT NULL,
	[supplierid] [varchar](10) NOT NULL,
	[salesman] [char](3) NOT NULL,
	[phone] [varchar](30) NOT NULL,
	[email] [varchar](55) NULL,
	[defaultlocation] [varchar](5) NOT NULL,
	[fullaccess] [int] NOT NULL,
	[cancreatetender] [int] NOT NULL,
	[lastvisitdate] [datetime] NULL,
	[branchcode] [varchar](10) NOT NULL,
	[pagesize] [varchar](20) NOT NULL,
	[modulesallowed] [varchar](25) NOT NULL,
	[showdashboard] [int] NOT NULL,
	[blocked] [int] NOT NULL,
	[displayrecordsmax] [int] NOT NULL,
	[theme] [varchar](30) NOT NULL,
	[languagee] [varchar](10) NOT NULL,
	[pdflanguage] [int] NOT NULL,
	[department] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[workorders]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[workorders](
	[wo] [int] NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[requiredby] [date] NOT NULL,
	[startdate] [date] NOT NULL,
	[costissued] [int] NOT NULL,
	[closed] [int] NOT NULL,
	[closecomments] [text] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[workcentres]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[workcentres](
	[code] [char](5) NOT NULL,
	[location] [varchar](5) NOT NULL,
	[description] [char](20) NOT NULL,
	[capacity] [int] NOT NULL,
	[overheadperhour] [decimal](10, 0) NOT NULL,
	[overheadrecoveryact] [varchar](20) NOT NULL,
	[setuphrs] [decimal](10, 0) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[suppliercontacts]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suppliercontacts](
	[supplierid] [varchar](10) NOT NULL,
	[contact] [varchar](30) NOT NULL,
	[position] [varchar](30) NOT NULL,
	[tel] [varchar](30) NOT NULL,
	[fax] [varchar](30) NOT NULL,
	[mobile] [varchar](30) NOT NULL,
	[email] [varchar](55) NOT NULL,
	[ordercontact] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[supplierid] ASC,
	[contact] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockSerialItem]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockSerialItem](
	[stockid] [varchar](20) NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[serialno] [varchar](30) NOT NULL,
	[expirationdate] [datetime] NOT NULL,
	[quantity] [int] NOT NULL,
	[qualitytext] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stockid] ASC,
	[serialno] ASC,
	[loccode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockitemproperties]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockitemproperties](
	[stockid] [varchar](20) NOT NULL,
	[stkcatpropid] [int] NOT NULL,
	[value] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stockid] ASC,
	[stkcatpropid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockcounts]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockcounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[qtycounted] [int] NOT NULL,
	[reference] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockcheckfreeze]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockcheckfreeze](
	[stockid] [varchar](20) NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[qoh] [int] NOT NULL,
	[stockcheckdate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stockid] ASC,
	[loccode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shipment](
	[shiptref] [int] NOT NULL,
	[voyageref] [varchar](20) NOT NULL,
	[vessel] [varchar](50) NOT NULL,
	[eta] [datetime] NOT NULL,
	[accumvalue] [int] NOT NULL,
	[supplierid] [varchar](10) NOT NULL,
	[closed] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shiptref] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockmoves]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockmoves](
	[stkmoveno] [int] IDENTITY(1,1) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[typee] [int] NOT NULL,
	[transno] [int] NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[trandate] [date] NOT NULL,
	[userid] [varchar](20) NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[branchcode] [varchar](10) NOT NULL,
	[price] [decimal](21, 5) NOT NULL,
	[prd] [int] NOT NULL,
	[reference] [varchar](100) NOT NULL,
	[qty] [int] NOT NULL,
	[discountpercent] [int] NOT NULL,
	[standardcost] [int] NOT NULL,
	[show_on_inv_crds] [int] NOT NULL,
	[newqoh] [int] NOT NULL,
	[hidemovt] [int] NOT NULL,
	[narrative] [text] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stkmoveno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockRequest]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockRequest](
	[dispatchid] [int] IDENTITY(1,1) NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[departmentid] [int] NOT NULL,
	[despatchdate] [date] NOT NULL,
	[authorised] [int] NOT NULL,
	[closed] [int] NOT NULL,
	[narrative] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dispatchid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salescatprod]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salescatprod](
	[salescatid] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[manufacturers_id] [int] NOT NULL,
	[featured] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[salescatid] ASC,
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[recurrsalesorderdetails]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[recurrsalesorderdetails](
	[recurrorderno] [int] NOT NULL,
	[stkcode] [varchar](20) NOT NULL,
	[unitprice] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[discountpercent] [int] NOT NULL,
	[narrative] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurchOrder]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurchOrder](
	[orderno] [int] IDENTITY(1,1) NOT NULL,
	[supplierno] [varchar](10) NOT NULL,
	[comments] [text] NULL,
	[orddate] [datetime] NOT NULL,
	[rate] [int] NOT NULL,
	[dateprinted] [datetime] NULL,
	[allowprint] [int] NOT NULL,
	[initiatorr] [varchar](20) NULL,
	[requisitionno] [varchar](15) NULL,
	[intostocklocation] [varchar](5) NOT NULL,
	[deladd1] [varchar](40) NOT NULL,
	[deladd2] [varchar](40) NOT NULL,
	[deladd3] [varchar](40) NOT NULL,
	[deladd4] [varchar](40) NOT NULL,
	[deladd5] [varchar](20) NOT NULL,
	[deladd6] [varchar](15) NOT NULL,
	[tel] [varchar](30) NOT NULL,
	[suppdeladdress1] [varchar](40) NOT NULL,
	[suppdeladdress2] [varchar](40) NOT NULL,
	[suppdeladdress3] [varchar](40) NOT NULL,
	[suppdeladdress4] [varchar](40) NOT NULL,
	[suppdeladdress5] [varchar](20) NOT NULL,
	[suppdeladdress6] [varchar](15) NOT NULL,
	[suppliercontact] [varchar](30) NOT NULL,
	[supptel] [varchar](30) NOT NULL,
	[contact] [varchar](30) NOT NULL,
	[version_] [decimal](3, 2) NOT NULL,
	[revised] [date] NOT NULL,
	[realorderno] [varchar](16) NOT NULL,
	[deliveryby] [varchar](100) NOT NULL,
	[deliverydate] [date] NOT NULL,
	[statuss_] [varchar](12) NOT NULL,
	[stat_comment] [text] NOT NULL,
	[paymentterms] [char](2) NOT NULL,
	[port] [varchar](40) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[purchdata]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[purchdata](
	[supplierno] [varchar](10) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[price] [decimal](20, 4) NOT NULL,
	[suppliersuom] [char](50) NOT NULL,
	[conversionfactor] [int] NOT NULL,
	[supplierdescription] [char](50) NOT NULL,
	[leadtime] [int] NOT NULL,
	[preferred] [int] NOT NULL,
	[effectivefrom] [date] NOT NULL,
	[suppliers_partno] [varchar](50) NOT NULL,
	[minorderqty] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[supplierno] ASC,
	[stockid] ASC,
	[effectivefrom] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesOrder]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesOrder](
	[orderno] [int] NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[branchcode] [varchar](10) NOT NULL,
	[customerref] [varchar](50) NOT NULL,
	[buyername] [varchar](50) NULL,
	[comments] [text] NULL,
	[orddate] [date] NOT NULL,
	[ordertype] [char](2) NOT NULL,
	[shipvia] [int] NOT NULL,
	[deladd1] [varchar](40) NOT NULL,
	[deladd2] [varchar](40) NOT NULL,
	[deladd3] [varchar](40) NOT NULL,
	[deladd4] [varchar](40) NULL,
	[deladd5] [varchar](20) NOT NULL,
	[deladd6] [varchar](15) NOT NULL,
	[contactphone] [varchar](25) NULL,
	[contactemail] [varchar](40) NULL,
	[deliverto] [varchar](40) NOT NULL,
	[deliverblind] [int] NULL,
	[freightcost] [int] NOT NULL,
	[fromstkloc] [varchar](5) NOT NULL,
	[deliverydate] [date] NOT NULL,
	[confirmeddate] [date] NOT NULL,
	[printedpackingslip] [int] NOT NULL,
	[datepackingslipprinted] [date] NOT NULL,
	[quotation] [int] NOT NULL,
	[quotedate] [date] NOT NULL,
	[poplaced] [int] NOT NULL,
	[salesperson] [varchar](4) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[prices]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[prices](
	[stockid] [varchar](20) NOT NULL,
	[typeabbrev] [char](2) NOT NULL,
	[currabrev] [char](3) NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[price] [decimal](20, 4) NOT NULL,
	[branchcode] [varchar](10) NOT NULL,
	[startdate] [date] NOT NULL,
	[enddate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stockid] ASC,
	[typeabbrev] ASC,
	[currabrev] ASC,
	[debtorno] ASC,
	[branchcode] ASC,
	[startdate] ASC,
	[enddate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qasamples]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qasamples](
	[sampleid] [int] IDENTITY(1,1) NOT NULL,
	[prodspeckey] [varchar](25) NOT NULL,
	[lotkey] [varchar](25) NOT NULL,
	[identifier] [varchar](10) NOT NULL,
	[createdby_] [varchar](15) NOT NULL,
	[sampledate] [date] NOT NULL,
	[comments] [varchar](255) NOT NULL,
	[certt] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sampleid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mrpdemands]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mrpdemands](
	[demandid] [int] IDENTITY(1,1) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[mrpdemandtype] [varchar](6) NOT NULL,
	[quantity] [int] NOT NULL,
	[duedate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[demandid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loctransfers]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loctransfers](
	[reference] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[shipqty] [int] NOT NULL,
	[recqty] [int] NOT NULL,
	[shipdate] [datetime] NOT NULL,
	[recdate] [datetime] NOT NULL,
	[shiploc] [varchar](5) NOT NULL,
	[recloc] [varchar](5) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[locstock]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[locstock](
	[loccode] [varchar](5) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[quantity] [int] NOT NULL,
	[reorderlevel] [int] NOT NULL,
	[bin_] [varchar](10) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[loccode] ASC,
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[freightcosts]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[freightcosts](
	[shipcostfromid] [int] IDENTITY(1,1) NOT NULL,
	[locationfrom] [varchar](5) NOT NULL,
	[destinationcountry] [varchar](40) NOT NULL,
	[destination] [varchar](40) NOT NULL,
	[shipperid] [int] NOT NULL,
	[cubrate] [int] NOT NULL,
	[kgrate] [int] NOT NULL,
	[maxkgs] [int] NOT NULL,
	[maxcub] [int] NOT NULL,
	[fixedprice] [int] NOT NULL,
	[minimumchg] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shipcostfromid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[custitem]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[custitem](
	[debtorno] [varchar](10) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[cust_part] [varchar](20) NOT NULL,
	[cust_description] [varchar](30) NOT NULL,
	[customersuom] [char](50) NOT NULL,
	[conversionfactor] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[debtorno] ASC,
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[custbranch]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[custbranch](
	[branchcode] [varchar](10) NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[brname] [varchar](40) NOT NULL,
	[braddress1] [varchar](40) NOT NULL,
	[braddress2] [varchar](40) NOT NULL,
	[braddress3] [varchar](40) NOT NULL,
	[braddress4] [varchar](50) NOT NULL,
	[braddress5] [varchar](20) NOT NULL,
	[braddress6] [varchar](40) NOT NULL,
	[lat] [int] NOT NULL,
	[lng] [int] NOT NULL,
	[estdeliverydays] [int] NOT NULL,
	[area] [char](3) NOT NULL,
	[salesman] [varchar](4) NOT NULL,
	[fwddate] [int] NOT NULL,
	[phoneno] [varchar](20) NOT NULL,
	[faxno] [varchar](20) NOT NULL,
	[contactname] [varchar](30) NOT NULL,
	[email] [varchar](55) NOT NULL,
	[defaultlocation] [varchar](5) NOT NULL,
	[taxgroupid] [int] NOT NULL,
	[defaultshipvia] [int] NOT NULL,
	[deliverblind] [int] NULL,
	[disabletrans] [int] NOT NULL,
	[brpostaddr1] [varchar](40) NOT NULL,
	[brpostaddr2] [varchar](40) NOT NULL,
	[brpostaddr3] [varchar](40) NOT NULL,
	[brpostaddr4] [varchar](50) NOT NULL,
	[brpostaddr5] [varchar](20) NOT NULL,
	[brpostaddr6] [varchar](40) NOT NULL,
	[specialinstructions] [text] NOT NULL,
	[custbranchcode] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[debtorno] ASC,
	[branchcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[custallocns]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[custallocns](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amt] [decimal](20, 4) NOT NULL,
	[datealloc] [date] NOT NULL,
	[transid_allocfrom] [int] NOT NULL,
	[transid_allocto] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChartMaster]    Script Date: 05/07/2016 21:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChartMaster](
	[accountcode] [varchar](20) NOT NULL,
	[accountname] [char](50) NOT NULL,
	[group_] [char](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[accountcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChartDetail]    Script Date: 05/07/2016 21:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChartDetail](
	[accountcode] [varchar](20) NOT NULL,
	[period] [int] NOT NULL,
	[budget] [int] NOT NULL,
	[actual] [int] NOT NULL,
	[bfwd] [int] NOT NULL,
	[bfwdbudget] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[accountcode] ASC,
	[period] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bom]    Script Date: 05/07/2016 21:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bom](
	[parent] [varchar](20) NOT NULL,
	[sequencee] [int] NOT NULL,
	[component] [varchar](20) NOT NULL,
	[workcentreadded] [char](5) NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[effectiveafter] [date] NOT NULL,
	[effectiveto] [date] NOT NULL,
	[quantity] [int] NOT NULL,
	[autoissue] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[parent] ASC,
	[component] ASC,
	[workcentreadded] ASC,
	[loccode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contractbom]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contractbom](
	[contractref] [varchar](20) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[workcentreadded] [char](5) NOT NULL,
	[quantity] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contractref] ASC,
	[stockid] ASC,
	[workcentreadded] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contract](
	[contractref] [varchar](20) NOT NULL,
	[contractdescription] [text] NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[branchcode] [varchar](10) NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[statuss] [int] NOT NULL,
	[categoryid] [varchar](6) NOT NULL,
	[orderno] [int] NOT NULL,
	[customerref] [varchar](20) NOT NULL,
	[margin] [int] NOT NULL,
	[wo] [int] NOT NULL,
	[requireddate] [date] NOT NULL,
	[drawing] [varchar](50) NOT NULL,
	[exrate] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contractref] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankAccount]    Script Date: 05/07/2016 21:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankAccount](
	[accountcode] [varchar](20) NOT NULL,
	[currcode] [char](3) NOT NULL,
	[invoice] [int] NOT NULL,
	[bankaccountcode] [varchar](50) NOT NULL,
	[bankaccountname] [char](50) NOT NULL,
	[bankaccountnumber] [char](50) NOT NULL,
	[bankaddress] [char](50) NULL,
	[importformat] [varchar](10) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[accountcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AuditTrail]    Script Date: 05/07/2016 21:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AuditTrail](
	[transactiondate] [datetime] NOT NULL,
	[userid] [varchar](20) NOT NULL,
	[querystring] [text] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mailgroupdetails]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mailgroupdetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupname] [varchar](100) NOT NULL,
	[userid] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GLTransaction]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GLTransaction](
	[counterindex] [int] IDENTITY(1,1) NOT NULL,
	[typee] [int] NOT NULL,
	[typeno] [int] NOT NULL,
	[chequeno] [int] NOT NULL,
	[trandate] [date] NOT NULL,
	[periodno] [int] NOT NULL,
	[account] [varchar](20) NOT NULL,
	[narrative] [varchar](200) NOT NULL,
	[amount] [int] NOT NULL,
	[posted] [int] NOT NULL,
	[jobref] [varchar](20) NOT NULL,
	[tag] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[counterindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orderdeliverydifferenceslog]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orderdeliverydifferenceslog](
	[orderno] [int] NOT NULL,
	[invoiceno] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[quantitydiff] [int] NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[branch] [varchar](10) NOT NULL,
	[can_or_bo] [char](3) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCTabs]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCTabs](
	[tabcode] [varchar](20) NOT NULL,
	[usercode] [varchar](20) NOT NULL,
	[typetabcode] [varchar](20) NOT NULL,
	[currency] [char](3) NOT NULL,
	[tablimit] [int] NOT NULL,
	[assigner] [varchar](20) NOT NULL,
	[authorizer] [varchar](20) NOT NULL,
	[glaccountassignment] [varchar](20) NOT NULL,
	[glaccountpcash] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tabcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[purchorderdetails]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[purchorderdetails](
	[podetailitem] [int] IDENTITY(1,1) NOT NULL,
	[orderno] [int] NOT NULL,
	[itemcode] [varchar](20) NOT NULL,
	[deliverydate] [date] NOT NULL,
	[itemdescription] [varchar](100) NOT NULL,
	[glcode] [varchar](20) NOT NULL,
	[qtyinvoiced] [int] NOT NULL,
	[unitprice] [int] NOT NULL,
	[actprice] [int] NOT NULL,
	[stdcostunit] [int] NOT NULL,
	[quantityord] [int] NOT NULL,
	[quantityrecd] [int] NOT NULL,
	[shiptref] [int] NOT NULL,
	[jobref] [varchar](20) NOT NULL,
	[completed] [int] NOT NULL,
	[suppliersunit] [varchar](50) NULL,
	[suppliers_partno] [varchar](50) NOT NULL,
	[assetid] [int] NOT NULL,
	[conversionfactor] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[podetailitem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCEexpenses]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCEexpenses](
	[codeexpense] [varchar](20) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[glaccount] [varchar](20) NOT NULL,
	[tag] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codeexpense] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pickinglists]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pickinglists](
	[pickinglistno] [int] NOT NULL,
	[orderno] [int] NOT NULL,
	[pickinglistdate] [date] NOT NULL,
	[dateprinted] [date] NOT NULL,
	[deliverynotedate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pickinglistno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salesorderdetails]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salesorderdetails](
	[orderlineno] [int] NOT NULL,
	[orderno] [int] NOT NULL,
	[stkcode] [varchar](20) NOT NULL,
	[qtyinvoiced] [int] NOT NULL,
	[unitprice] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[estimate] [int] NOT NULL,
	[discountpercent] [int] NOT NULL,
	[actualdispatchdate] [datetime] NOT NULL,
	[completed] [int] NOT NULL,
	[narrative] [text] NULL,
	[itemdue] [date] NULL,
	[poline] [varchar](10) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderlineno] ASC,
	[orderno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShipmentCharge]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShipmentCharge](
	[shiptchgid] [int] IDENTITY(1,1) NOT NULL,
	[shiptref] [int] NOT NULL,
	[transtype] [int] NOT NULL,
	[transno] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[value] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shiptchgid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[suppallocs]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suppallocs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amt] [int] NOT NULL,
	[datealloc] [date] NOT NULL,
	[transid_allocfrom] [int] NOT NULL,
	[transid_allocto] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockserialmoves]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockserialmoves](
	[stkitmmoveno] [int] IDENTITY(1,1) NOT NULL,
	[stockmoveno] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[serialno] [varchar](30) NOT NULL,
	[moveqty] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stkitmmoveno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taxauthorities]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taxauthorities](
	[taxid] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](20) NOT NULL,
	[taxglcode] [varchar](20) NOT NULL,
	[purchtaxglaccount] [varchar](20) NOT NULL,
	[bank] [varchar](50) NOT NULL,
	[bankacctype] [varchar](20) NOT NULL,
	[bankacc] [varchar](50) NOT NULL,
	[bankswift] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taxid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockrequestitems]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockrequestitems](
	[dispatchitemsid] [int] NOT NULL,
	[dispatchid] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[quantity] [int] NOT NULL,
	[qtydelivered] [int] NOT NULL,
	[decimalplaces] [int] NOT NULL,
	[uom] [varchar](20) NOT NULL,
	[completed] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dispatchitemsid] ASC,
	[dispatchid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[worequirements]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[worequirements](
	[wo] [int] NOT NULL,
	[parentstockid] [varchar](20) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[qtypu] [int] NOT NULL,
	[stdcost] [int] NOT NULL,
	[autoissue] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wo] ASC,
	[parentstockid] ASC,
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[woitems]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[woitems](
	[wo] [int] NOT NULL,
	[stockid] [char](20) NOT NULL,
	[qtyreqd] [int] NOT NULL,
	[qtyrecd] [int] NOT NULL,
	[stdcost] [int] NOT NULL,
	[nextlotsnref] [varchar](20) NULL,
	[comments] [text] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wo] ASC,
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taxgrouptaxes]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taxgrouptaxes](
	[taxgroupid] [int] NOT NULL,
	[taxauthid] [int] NOT NULL,
	[calculationorder] [int] NOT NULL,
	[taxontax] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taxgroupid] ASC,
	[taxauthid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taxauthrates]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taxauthrates](
	[taxauthority] [int] NOT NULL,
	[dispatchtaxprovince] [int] NOT NULL,
	[taxcatid] [int] NOT NULL,
	[taxrate] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taxauthority] ASC,
	[dispatchtaxprovince] ASC,
	[taxcatid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[supptranstaxes]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[supptranstaxes](
	[supptransid] [int] NOT NULL,
	[taxauthid] [int] NOT NULL,
	[taxamount] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[supptransid] ASC,
	[taxauthid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockmovestaxes]    Script Date: 05/07/2016 21:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockmovestaxes](
	[stkmoveno] [int] NOT NULL,
	[taxauthid] [int] NOT NULL,
	[taxrate] [int] NOT NULL,
	[taxontax] [int] NOT NULL,
	[taxcalculationorder] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stkmoveno] ASC,
	[taxauthid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pickinglistdetails]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pickinglistdetails](
	[pickinglistno] [int] NOT NULL,
	[pickinglistlineno] [int] NOT NULL,
	[orderlineno] [int] NOT NULL,
	[qtyexpected] [int] NOT NULL,
	[qtypicked] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pickinglistno] ASC,
	[pickinglistlineno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCTabExpenses]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCTabExpenses](
	[typetabcode] [varchar](20) NOT NULL,
	[codeexpense] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[grns]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[grns](
	[grnbatch] [int] NOT NULL,
	[grnno] [int] IDENTITY(1,1) NOT NULL,
	[podetailitem] [int] NOT NULL,
	[itemcode] [varchar](20) NOT NULL,
	[deliverydate] [date] NOT NULL,
	[itemdescription] [varchar](100) NOT NULL,
	[qtyrecd] [int] NOT NULL,
	[quantityinv] [int] NOT NULL,
	[supplierid] [varchar](10) NOT NULL,
	[stdcostunit] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[grnno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[deliverynotes]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[deliverynotes](
	[deliverynotenumber] [int] NOT NULL,
	[deliverynotelineno] [int] NOT NULL,
	[salesorderno] [int] NOT NULL,
	[salesorderlineno] [int] NOT NULL,
	[qtydelivered] [int] NOT NULL,
	[printed] [int] NOT NULL,
	[invoiced] [int] NOT NULL,
	[deliverydate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[deliverynotenumber] ASC,
	[deliverynotelineno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[debtortranstaxes]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[debtortranstaxes](
	[debtortransid] [int] NOT NULL,
	[taxauthid] [int] NOT NULL,
	[taxamount] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[debtortransid] ASC,
	[taxauthid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contractreqts]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contractreqts](
	[contractreqid] [int] IDENTITY(1,1) NOT NULL,
	[contractref] [varchar](20) NOT NULL,
	[requirement] [varchar](40) NOT NULL,
	[quantity] [int] NOT NULL,
	[costperunit] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contractreqid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contractcharges]    Script Date: 05/07/2016 21:18:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contractcharges](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contractref] [varchar](20) NOT NULL,
	[transtype] [int] NOT NULL,
	[transno] [int] NOT NULL,
	[amount] [int] NOT NULL,
	[narrative] [text] NOT NULL,
	[anticipated] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankTransaction]    Script Date: 05/07/2016 21:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankTransaction](
	[BankTransactionid] [int] NOT NULL,
	[typee] [int] NOT NULL,
	[transno] [bigint] NOT NULL,
	[bankact] [varchar](20) NOT NULL,
	[ref_] [nvarchar](50) NOT NULL,
	[amountcleared] [int] NOT NULL,
	[exrate] [int] NOT NULL,
	[functionalexrate] [int] NOT NULL,
	[transdate] [date] NOT NULL,
	[BankTransactiontype] [varchar](30) NOT NULL,
	[amount] [int] NOT NULL,
	[currcode] [char](3) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__AccountGr__group__73AD1350]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AccountGroup] ADD  DEFAULT ('') FOR [groupname]
GO
/****** Object:  Default [DF__AccountGr__pandl__74A13789]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AccountGroup] ADD  DEFAULT ('1') FOR [pandl]
GO
/****** Object:  Default [DF__AccountGr__seque__75955BC2]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AccountGroup] ADD  DEFAULT ('0') FOR [sequenceintb]
GO
/****** Object:  Default [DF__AccountGr__Creat__76897FFB]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AccountGroup] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__AccountGr__Statu__777DA434]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AccountGroup] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__AccountSe__Creat__6DF439FA]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AccountSection] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__AccountSe__Statu__6EE85E33]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AccountSection] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Areas__areadescr__7C425951]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[Areas] ADD  DEFAULT ('') FOR [areadescription]
GO
/****** Object:  Default [DF__Areas__CreatedBy__7D367D8A]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[Areas] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Areas__Status___7E2AA1C3]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[Areas] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__AssetMana__stock__02EF56E0]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__AssetMana__seria__03E37B19]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('') FOR [serialno]
GO
/****** Object:  Default [DF__AssetMana__locat__04D79F52]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('') FOR [location]
GO
/****** Object:  Default [DF__AssetManag__cost__05CBC38B]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('0') FOR [cost]
GO
/****** Object:  Default [DF__AssetManag__depn__06BFE7C4]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('0') FOR [depn]
GO
/****** Object:  Default [DF__AssetMana__datep__07B40BFD]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('0000-00-00') FOR [datepurchased]
GO
/****** Object:  Default [DF__AssetMana__dispo__08A83036]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('0') FOR [disposalvalue]
GO
/****** Object:  Default [DF__AssetMana__Creat__099C546F]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__AssetMana__Statu__0A9078A8]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__AuditTrai__trans__0C78C11A]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AuditTrail] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [transactiondate]
GO
/****** Object:  Default [DF__AuditTrai__useri__0D6CE553]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AuditTrail] ADD  DEFAULT ('') FOR [userid]
GO
/****** Object:  Default [DF__AuditTrai__Creat__0E61098C]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AuditTrail] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__AuditTrai__Statu__0F552DC5]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AuditTrail] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__BankAccou__accou__1419E2E2]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('0') FOR [accountcode]
GO
/****** Object:  Default [DF__BankAccou__invoi__150E071B]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('0') FOR [invoice]
GO
/****** Object:  Default [DF__BankAccou__banka__16022B54]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('') FOR [bankaccountcode]
GO
/****** Object:  Default [DF__BankAccou__banka__16F64F8D]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('') FOR [bankaccountname]
GO
/****** Object:  Default [DF__BankAccou__banka__17EA73C6]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('') FOR [bankaccountnumber]
GO
/****** Object:  Default [DF__BankAccou__banka__18DE97FF]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT (NULL) FOR [bankaddress]
GO
/****** Object:  Default [DF__BankAccou__impor__19D2BC38]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('''''') FOR [importformat]
GO
/****** Object:  Default [DF__BankAccou__Creat__1AC6E071]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__BankAccou__Statu__1BBB04AA]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__BankAccou__Creat__1DA34D1C]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankAccountUser] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__BankAccou__Statu__1E977155]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankAccountUser] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__BankTrans__typee__207FB9C7]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('0') FOR [typee]
GO
/****** Object:  Default [DF__BankTrans__trans__2173DE00]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('0') FOR [transno]
GO
/****** Object:  Default [DF__BankTrans__banka__22680239]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('0') FOR [bankact]
GO
/****** Object:  Default [DF__BankTransa__ref___235C2672]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('') FOR [ref_]
GO
/****** Object:  Default [DF__BankTrans__amoun__24504AAB]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('0') FOR [amountcleared]
GO
/****** Object:  Default [DF__BankTrans__exrat__25446EE4]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('1') FOR [exrate]
GO
/****** Object:  Default [DF__BankTrans__funct__2638931D]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('1') FOR [functionalexrate]
GO
/****** Object:  Default [DF__BankTrans__trans__272CB756]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('0000-00-00') FOR [transdate]
GO
/****** Object:  Default [DF__BankTrans__BankT__2820DB8F]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('') FOR [BankTransactiontype]
GO
/****** Object:  Default [DF__BankTrans__amoun__2914FFC8]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('0') FOR [amount]
GO
/****** Object:  Default [DF__BankTrans__currc__2A092401]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('') FOR [currcode]
GO
/****** Object:  Default [DF__BankTrans__Creat__2AFD483A]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__BankTrans__Statu__2BF16C73]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__bom__parent__30B62190]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('') FOR [parent]
GO
/****** Object:  Default [DF__bom__sequencee__31AA45C9]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('0') FOR [sequencee]
GO
/****** Object:  Default [DF__bom__component__329E6A02]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('') FOR [component]
GO
/****** Object:  Default [DF__bom__workcentrea__33928E3B]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('') FOR [workcentreadded]
GO
/****** Object:  Default [DF__bom__loccode__3486B274]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('') FOR [loccode]
GO
/****** Object:  Default [DF__bom__effectiveaf__357AD6AD]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('0000-00-00') FOR [effectiveafter]
GO
/****** Object:  Default [DF__bom__effectiveto__366EFAE6]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('9999-12-31') FOR [effectiveto]
GO
/****** Object:  Default [DF__bom__quantity__37631F1F]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('1') FOR [quantity]
GO
/****** Object:  Default [DF__bom__autoissue__38574358]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('0') FOR [autoissue]
GO
/****** Object:  Default [DF__bom__CreatedBy__394B6791]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__bom__Status___3A3F8BCA]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__ChartDeta__accou__3F0440E7]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('0') FOR [accountcode]
GO
/****** Object:  Default [DF__ChartDeta__perio__3FF86520]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('0') FOR [period]
GO
/****** Object:  Default [DF__ChartDeta__budge__40EC8959]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('0') FOR [budget]
GO
/****** Object:  Default [DF__ChartDeta__actua__41E0AD92]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('0') FOR [actual]
GO
/****** Object:  Default [DF__ChartDetai__bfwd__42D4D1CB]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('0') FOR [bfwd]
GO
/****** Object:  Default [DF__ChartDeta__bfwdb__43C8F604]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('0') FOR [bfwdbudget]
GO
/****** Object:  Default [DF__ChartDeta__Creat__44BD1A3D]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__ChartDeta__Statu__45B13E76]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__ChartMast__accou__4A75F393]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[ChartMaster] ADD  DEFAULT ('0') FOR [accountcode]
GO
/****** Object:  Default [DF__ChartMast__accou__4B6A17CC]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[ChartMaster] ADD  DEFAULT ('') FOR [accountname]
GO
/****** Object:  Default [DF__ChartMast__group__4C5E3C05]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[ChartMaster] ADD  DEFAULT ('') FOR [group_]
GO
/****** Object:  Default [DF__ChartMast__Creat__4D52603E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[ChartMaster] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__ChartMast__Statu__4E468477]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[ChartMaster] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__cogsglpost__area__530B3994]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[cogsglpostings] ADD  DEFAULT ('') FOR [area]
GO
/****** Object:  Default [DF__cogsglpos__stkca__53FF5DCD]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[cogsglpostings] ADD  DEFAULT ('') FOR [stkcat]
GO
/****** Object:  Default [DF__cogsglpos__glcod__54F38206]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[cogsglpostings] ADD  DEFAULT ('0') FOR [glcode]
GO
/****** Object:  Default [DF__cogsglpos__sales__55E7A63F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[cogsglpostings] ADD  DEFAULT ('AN') FOR [salestype]
GO
/****** Object:  Default [DF__cogsglpos__Creat__56DBCA78]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[cogsglpostings] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__cogsglpos__Statu__57CFEEB1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[cogsglpostings] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Company__coycode__5C94A3CE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('1') FOR [coycode]
GO
/****** Object:  Default [DF__Company__coyname__5D88C807]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [coyname]
GO
/****** Object:  Default [DF__Company__gstno__5E7CEC40]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [gstno]
GO
/****** Object:  Default [DF__Company__company__5F711079]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('0') FOR [companynumber]
GO
/****** Object:  Default [DF__Company__regoffi__606534B2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [regoffice1]
GO
/****** Object:  Default [DF__Company__regoffi__615958EB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [regoffice2]
GO
/****** Object:  Default [DF__Company__regoffi__624D7D24]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [regoffice3]
GO
/****** Object:  Default [DF__Company__regoffi__6341A15D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [regoffice4]
GO
/****** Object:  Default [DF__Company__regoffi__6435C596]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [regoffice5]
GO
/****** Object:  Default [DF__Company__regoffi__6529E9CF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [regoffice6]
GO
/****** Object:  Default [DF__Company__telepho__661E0E08]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [telephone]
GO
/****** Object:  Default [DF__Company__fax__67123241]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [fax]
GO
/****** Object:  Default [DF__Company__email__6806567A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__Company__currenc__68FA7AB3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [currencydefault]
GO
/****** Object:  Default [DF__Company__debtors__69EE9EEC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('70000') FOR [debtorsact]
GO
/****** Object:  Default [DF__Company__pytdisc__6AE2C325]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('55000') FOR [pytdiscountact]
GO
/****** Object:  Default [DF__Company__credito__6BD6E75E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('80000') FOR [creditorsact]
GO
/****** Object:  Default [DF__Company__payroll__6CCB0B97]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('84000') FOR [payrollact]
GO
/****** Object:  Default [DF__Company__grnact__6DBF2FD0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('72000') FOR [grnact]
GO
/****** Object:  Default [DF__Company__exchang__6EB35409]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('65000') FOR [exchangediffact]
GO
/****** Object:  Default [DF__Company__purchas__6FA77842]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('0') FOR [purchasesexchangediffact]
GO
/****** Object:  Default [DF__Company__retaine__709B9C7B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('90000') FOR [retainedearnings]
GO
/****** Object:  Default [DF__Company__gllink___718FC0B4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('1') FOR [gllink_debtors]
GO
/****** Object:  Default [DF__Company__gllink___7283E4ED]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('1') FOR [gllink_creditors]
GO
/****** Object:  Default [DF__Company__gllink___73780926]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('1') FOR [gllink_stock]
GO
/****** Object:  Default [DF__Company__freight__746C2D5F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('0') FOR [freightact]
GO
/****** Object:  Default [DF__Company__Created__75605198]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Company__Status___765475D1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Contract__contra__17B5699C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('') FOR [contractref]
GO
/****** Object:  Default [DF__Contract__debtor__18A98DD5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__Contract__branch__199DB20E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__Contract__loccod__1A91D647]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('') FOR [loccode]
GO
/****** Object:  Default [DF__Contract__status__1B85FA80]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('0') FOR [statuss]
GO
/****** Object:  Default [DF__Contract__catego__1C7A1EB9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('') FOR [categoryid]
GO
/****** Object:  Default [DF__Contract__ordern__1D6E42F2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('0') FOR [orderno]
GO
/****** Object:  Default [DF__Contract__custom__1E62672B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('') FOR [customerref]
GO
/****** Object:  Default [DF__Contract__margin__1F568B64]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('1') FOR [margin]
GO
/****** Object:  Default [DF__Contract__wo__204AAF9D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('0') FOR [wo]
GO
/****** Object:  Default [DF__Contract__requir__213ED3D6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('0000-00-00') FOR [requireddate]
GO
/****** Object:  Default [DF__Contract__drawin__2232F80F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('') FOR [drawing]
GO
/****** Object:  Default [DF__Contract__exrate__23271C48]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('1') FOR [exrate]
GO
/****** Object:  Default [DF__Contract__Create__241B4081]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Contract__Status__250F64BA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__contractb__contr__7B192AEE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractbom] ADD  DEFAULT ('0') FOR [contractref]
GO
/****** Object:  Default [DF__contractb__stock__7C0D4F27]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractbom] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__contractb__workc__7D017360]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractbom] ADD  DEFAULT ('') FOR [workcentreadded]
GO
/****** Object:  Default [DF__contractb__quant__7DF59799]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractbom] ADD  DEFAULT ('1') FOR [quantity]
GO
/****** Object:  Default [DF__contractb__Creat__7EE9BBD2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractbom] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__contractb__Statu__7FDDE00B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractbom] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__contractc__trans__04A29528]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractcharges] ADD  DEFAULT ('20') FOR [transtype]
GO
/****** Object:  Default [DF__contractc__trans__0596B961]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractcharges] ADD  DEFAULT ('0') FOR [transno]
GO
/****** Object:  Default [DF__contractc__amoun__068ADD9A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractcharges] ADD  DEFAULT ('0') FOR [amount]
GO
/****** Object:  Default [DF__contractc__antic__077F01D3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractcharges] ADD  DEFAULT ('0') FOR [anticipated]
GO
/****** Object:  Default [DF__contractc__Creat__0873260C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractcharges] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__contractc__Statu__09674A45]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractcharges] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__contractr__contr__0E2BFF62]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractreqts] ADD  DEFAULT ('0') FOR [contractref]
GO
/****** Object:  Default [DF__contractr__requi__0F20239B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractreqts] ADD  DEFAULT ('') FOR [requirement]
GO
/****** Object:  Default [DF__contractr__quant__101447D4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractreqts] ADD  DEFAULT ('1') FOR [quantity]
GO
/****** Object:  Default [DF__contractr__costp__11086C0D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractreqts] ADD  DEFAULT ('0') FOR [costperunit]
GO
/****** Object:  Default [DF__contractr__Creat__11FC9046]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractreqts] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__contractr__Statu__12F0B47F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractreqts] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__countries__Creat__6460AE1F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[countries] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__countries__Statu__6554D258]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[countries] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Currency__curren__29D419D7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('') FOR [currency]
GO
/****** Object:  Default [DF__Currency__currab__2AC83E10]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('') FOR [currabrev]
GO
/****** Object:  Default [DF__Currency__countr__2BBC6249]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('') FOR [country]
GO
/****** Object:  Default [DF__Currency__hundre__2CB08682]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('Cents') FOR [hundredsname]
GO
/****** Object:  Default [DF__Currency__decima__2DA4AABB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('2') FOR [decimalplaces]
GO
/****** Object:  Default [DF__Currency__rate__2E98CEF4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('1') FOR [rate]
GO
/****** Object:  Default [DF__Currency__webcar__2F8CF32D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('1') FOR [webcart]
GO
/****** Object:  Default [DF__Currency__Create__30811766]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Currency__Status__31753B9F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__custallocns__amt__3639F0BC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custallocns] ADD  DEFAULT ('0.0000') FOR [amt]
GO
/****** Object:  Default [DF__custalloc__datea__372E14F5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custallocns] ADD  DEFAULT ('0000-00-00') FOR [datealloc]
GO
/****** Object:  Default [DF__custalloc__trans__3822392E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custallocns] ADD  DEFAULT ('0') FOR [transid_allocfrom]
GO
/****** Object:  Default [DF__custalloc__trans__39165D67]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custallocns] ADD  DEFAULT ('0') FOR [transid_allocto]
GO
/****** Object:  Default [DF__custalloc__Creat__3A0A81A0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custallocns] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__custalloc__Statu__3AFEA5D9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custallocns] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__custbranc__branc__3FC35AF6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__custbranc__debto__40B77F2F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__custbranc__brnam__41ABA368]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [brname]
GO
/****** Object:  Default [DF__custbranc__bradd__429FC7A1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [braddress1]
GO
/****** Object:  Default [DF__custbranc__bradd__4393EBDA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [braddress2]
GO
/****** Object:  Default [DF__custbranc__bradd__44881013]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [braddress3]
GO
/****** Object:  Default [DF__custbranc__bradd__457C344C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [braddress4]
GO
/****** Object:  Default [DF__custbranc__bradd__46705885]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [braddress5]
GO
/****** Object:  Default [DF__custbranc__bradd__47647CBE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [braddress6]
GO
/****** Object:  Default [DF__custbranch__lat__4858A0F7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('0.000000') FOR [lat]
GO
/****** Object:  Default [DF__custbranch__lng__494CC530]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('0.000000') FOR [lng]
GO
/****** Object:  Default [DF__custbranc__estde__4A40E969]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('1') FOR [estdeliverydays]
GO
/****** Object:  Default [DF__custbranc__sales__4B350DA2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [salesman]
GO
/****** Object:  Default [DF__custbranc__fwdda__4C2931DB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('0') FOR [fwddate]
GO
/****** Object:  Default [DF__custbranc__phone__4D1D5614]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [phoneno]
GO
/****** Object:  Default [DF__custbranc__faxno__4E117A4D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [faxno]
GO
/****** Object:  Default [DF__custbranc__conta__4F059E86]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [contactname]
GO
/****** Object:  Default [DF__custbranc__email__4FF9C2BF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__custbranc__defau__50EDE6F8]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [defaultlocation]
GO
/****** Object:  Default [DF__custbranc__taxgr__51E20B31]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('1') FOR [taxgroupid]
GO
/****** Object:  Default [DF__custbranc__defau__52D62F6A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('1') FOR [defaultshipvia]
GO
/****** Object:  Default [DF__custbranc__deliv__53CA53A3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('1') FOR [deliverblind]
GO
/****** Object:  Default [DF__custbranc__disab__54BE77DC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('0') FOR [disabletrans]
GO
/****** Object:  Default [DF__custbranc__brpos__55B29C15]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [brpostaddr1]
GO
/****** Object:  Default [DF__custbranc__brpos__56A6C04E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [brpostaddr2]
GO
/****** Object:  Default [DF__custbranc__brpos__579AE487]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [brpostaddr3]
GO
/****** Object:  Default [DF__custbranc__brpos__588F08C0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [brpostaddr4]
GO
/****** Object:  Default [DF__custbranc__brpos__59832CF9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [brpostaddr5]
GO
/****** Object:  Default [DF__custbranc__brpos__5A775132]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [brpostaddr6]
GO
/****** Object:  Default [DF__custbranc__custb__5B6B756B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [custbranchcode]
GO
/****** Object:  Default [DF__custbranc__Creat__5C5F99A4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__custbranc__Statu__5D53BDDD]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__custconta__Creat__621872FA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custcontacts] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__custconta__Statu__630C9733]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custcontacts] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__custitem__debtor__67D14C50]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__custitem__stocki__68C57089]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__custitem__cust_p__69B994C2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('') FOR [cust_part]
GO
/****** Object:  Default [DF__custitem__cust_d__6AADB8FB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('') FOR [cust_description]
GO
/****** Object:  Default [DF__custitem__custom__6BA1DD34]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('') FOR [customersuom]
GO
/****** Object:  Default [DF__custitem__conver__6C96016D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('1') FOR [conversionfactor]
GO
/****** Object:  Default [DF__custitem__Create__6D8A25A6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__custitem__Status__6E7E49DF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__custnotes__debto__7342FEFC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custnotes] ADD  DEFAULT ('0') FOR [debtorno]
GO
/****** Object:  Default [DF__custnotes__date__74372335]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custnotes] ADD  DEFAULT ('0000-00-00') FOR [date]
GO
/****** Object:  Default [DF__custnotes__Creat__752B476E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custnotes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__custnotes__Statu__761F6BA7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custnotes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__DebtorMas__debto__7AE420C4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__DebtorMast__name__7BD844FD]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__DebtorMas__addre__7CCC6936]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [address1]
GO
/****** Object:  Default [DF__DebtorMas__addre__7DC08D6F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [address2]
GO
/****** Object:  Default [DF__DebtorMas__addre__7EB4B1A8]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [address3]
GO
/****** Object:  Default [DF__DebtorMas__addre__7FA8D5E1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [address4]
GO
/****** Object:  Default [DF__DebtorMas__addre__009CFA1A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [address5]
GO
/****** Object:  Default [DF__DebtorMas__addre__01911E53]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [address6]
GO
/****** Object:  Default [DF__DebtorMas__currc__0285428C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [currcode]
GO
/****** Object:  Default [DF__DebtorMas__sales__037966C5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [salestype]
GO
/****** Object:  Default [DF__DebtorMas__clien__046D8AFE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [clientsince]
GO
/****** Object:  Default [DF__DebtorMas__holdr__0561AF37]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [holdreason]
GO
/****** Object:  Default [DF__DebtorMas__payme__0655D370]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('f') FOR [paymentterms]
GO
/****** Object:  Default [DF__DebtorMas__disco__0749F7A9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [discount]
GO
/****** Object:  Default [DF__DebtorMas__pymtd__083E1BE2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [pymtdiscount]
GO
/****** Object:  Default [DF__DebtorMas__lastp__0932401B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [lastpaid]
GO
/****** Object:  Default [DF__DebtorMas__lastp__0A266454]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT (NULL) FOR [lastpaiddate]
GO
/****** Object:  Default [DF__DebtorMas__credi__0B1A888D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('1000') FOR [creditlimit]
GO
/****** Object:  Default [DF__DebtorMas__invad__0C0EACC6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [invaddrbranch]
GO
/****** Object:  Default [DF__DebtorMas__disco__0D02D0FF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [discountcode]
GO
/****** Object:  Default [DF__DebtorMas__ediin__0DF6F538]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [ediinvoices]
GO
/****** Object:  Default [DF__DebtorMas__edior__0EEB1971]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [ediorders]
GO
/****** Object:  Default [DF__DebtorMas__edire__0FDF3DAA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [edireference]
GO
/****** Object:  Default [DF__DebtorMas__editr__10D361E3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('email') FOR [editransport]
GO
/****** Object:  Default [DF__DebtorMas__ediad__11C7861C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [ediaddress]
GO
/****** Object:  Default [DF__DebtorMas__edise__12BBAA55]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [ediserveruser]
GO
/****** Object:  Default [DF__DebtorMas__edise__13AFCE8E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [ediserverpwd]
GO
/****** Object:  Default [DF__DebtorMas__taxre__14A3F2C7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [taxref]
GO
/****** Object:  Default [DF__DebtorMas__custo__15981700]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [customerpoline]
GO
/****** Object:  Default [DF__DebtorMas__typei__168C3B39]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('1') FOR [typeid]
GO
/****** Object:  Default [DF__DebtorMas__langu__17805F72]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('en_GB.utf8') FOR [language_id]
GO
/****** Object:  Default [DF__DebtorMas__Creat__187483AB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__DebtorMas__Statu__1968A7E4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__DebtorTra__trans__1E2D5D01]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [transno]
GO
/****** Object:  Default [DF__DebtorTra__typee__1F21813A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [typee]
GO
/****** Object:  Default [DF__DebtorTra__debto__2015A573]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__DebtorTra__branc__2109C9AC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__DebtorTra__trand__21FDEDE5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [trandate]
GO
/****** Object:  Default [DF__DebtorTrans__prd__22F2121E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [prd]
GO
/****** Object:  Default [DF__DebtorTra__settl__23E63657]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [settled]
GO
/****** Object:  Default [DF__DebtorTra__refer__24DA5A90]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('') FOR [reference]
GO
/****** Object:  Default [DF__DebtorTrans__tpe__25CE7EC9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('') FOR [tpe]
GO
/****** Object:  Default [DF__DebtorTra__order__26C2A302]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [order_]
GO
/****** Object:  Default [DF__DebtorTran__rate__27B6C73B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [rate]
GO
/****** Object:  Default [DF__DebtorTra__ovamo__28AAEB74]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [ovamount]
GO
/****** Object:  Default [DF__DebtorTra__ovgst__299F0FAD]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [ovgst]
GO
/****** Object:  Default [DF__DebtorTra__ovfre__2A9333E6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [ovfreight]
GO
/****** Object:  Default [DF__DebtorTra__ovdis__2B87581F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [ovdiscount]
GO
/****** Object:  Default [DF__DebtorTra__diffo__2C7B7C58]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [diffonexch]
GO
/****** Object:  Default [DF__DebtorTra__alloc__2D6FA091]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [alloc]
GO
/****** Object:  Default [DF__DebtorTra__shipv__2E63C4CA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [shipvia]
GO
/****** Object:  Default [DF__DebtorTra__edise__2F57E903]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [edisent]
GO
/****** Object:  Default [DF__DebtorTra__consi__304C0D3C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('') FOR [consignment]
GO
/****** Object:  Default [DF__DebtorTra__packa__31403175]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('1') FOR [packages]
GO
/****** Object:  Default [DF__DebtorTra__sales__323455AE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('') FOR [salesperson]
GO
/****** Object:  Default [DF__DebtorTra__Creat__332879E7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__DebtorTra__Statu__341C9E20]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__debtortra__debto__38E1533D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[debtortranstaxes] ADD  DEFAULT ('0') FOR [debtortransid]
GO
/****** Object:  Default [DF__debtortra__taxau__39D57776]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[debtortranstaxes] ADD  DEFAULT ('0') FOR [taxauthid]
GO
/****** Object:  Default [DF__debtortra__taxam__3AC99BAF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[debtortranstaxes] ADD  DEFAULT ('0') FOR [taxamount]
GO
/****** Object:  Default [DF__debtortra__Creat__3BBDBFE8]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[debtortranstaxes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__debtortra__Statu__3CB1E421]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[debtortranstaxes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__debtortyp__Creat__4176993E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[debtortype] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__debtortyp__Statu__426ABD77]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[debtortype] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__debtortyp__typei__472F7294]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[debtortypenotes] ADD  DEFAULT ('0') FOR [typeid]
GO
/****** Object:  Default [DF__debtortyp__datee__482396CD]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[debtortypenotes] ADD  DEFAULT ('0000-00-00') FOR [datee]
GO
/****** Object:  Default [DF__debtortyp__Creat__4917BB06]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[debtortypenotes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__debtortyp__Statu__4A0BDF3F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[debtortypenotes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__deliveryn__qtyde__4ED0945C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[deliverynotes] ADD  DEFAULT ('0') FOR [qtydelivered]
GO
/****** Object:  Default [DF__deliveryn__print__4FC4B895]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[deliverynotes] ADD  DEFAULT ('0') FOR [printed]
GO
/****** Object:  Default [DF__deliveryn__invoi__50B8DCCE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[deliverynotes] ADD  DEFAULT ('0') FOR [invoiced]
GO
/****** Object:  Default [DF__deliveryn__deliv__51AD0107]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[deliverynotes] ADD  DEFAULT ('0000-00-00') FOR [deliverydate]
GO
/****** Object:  Default [DF__deliveryn__Creat__52A12540]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[deliverynotes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__deliveryn__Statu__53954979]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[deliverynotes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__departmen__descr__5859FE96]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[departments] ADD  DEFAULT ('') FOR [descriptions]
GO
/****** Object:  Default [DF__departmen__autho__594E22CF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[departments] ADD  DEFAULT ('') FOR [authoriser]
GO
/****** Object:  Default [DF__departmen__Creat__5A424708]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[departments] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__departmen__Statu__5B366B41]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[departments] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__dept__CreatedBy__71BAA93D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[dept] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__dept__Status___72AECD76]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[dept] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__discountm__sales__5FFB205E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[discountmatrix] ADD  DEFAULT ('') FOR [salestype]
GO
/****** Object:  Default [DF__discountm__disco__60EF4497]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[discountmatrix] ADD  DEFAULT ('') FOR [discountcategory]
GO
/****** Object:  Default [DF__discountm__quant__61E368D0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[discountmatrix] ADD  DEFAULT ('1') FOR [quantitybreak]
GO
/****** Object:  Default [DF__discountm__disco__62D78D09]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[discountmatrix] ADD  DEFAULT ('0') FOR [discountrate]
GO
/****** Object:  Default [DF__discountm__Creat__63CBB142]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[discountmatrix] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__discountm__Statu__64BFD57B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[discountmatrix] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__edi_order__seggr__69848A98]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edi_orders_seg_groups] ADD  DEFAULT ('0') FOR [seggroupno]
GO
/****** Object:  Default [DF__edi_order__maxoc__6A78AED1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edi_orders_seg_groups] ADD  DEFAULT ('0') FOR [maxoccur]
GO
/****** Object:  Default [DF__edi_order__paren__6B6CD30A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edi_orders_seg_groups] ADD  DEFAULT ('0') FOR [parentseggroup]
GO
/****** Object:  Default [DF__edi_order__Creat__6C60F743]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edi_orders_seg_groups] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__edi_order__Statu__6D551B7C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edi_orders_seg_groups] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__edi_order__segta__7219D099]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edi_orders_segs] ADD  DEFAULT ('') FOR [segtag]
GO
/****** Object:  Default [DF__edi_order__seggr__730DF4D2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edi_orders_segs] ADD  DEFAULT ('0') FOR [seggroup]
GO
/****** Object:  Default [DF__edi_order__maxoc__7402190B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edi_orders_segs] ADD  DEFAULT ('0') FOR [maxoccur]
GO
/****** Object:  Default [DF__edi_order__Creat__74F63D44]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edi_orders_segs] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__edi_order__Statu__75EA617D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edi_orders_segs] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__ediitemma__suppo__7AAF169A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[ediitemmapping] ADD  DEFAULT ('') FOR [supporcust]
GO
/****** Object:  Default [DF__ediitemma__partn__7BA33AD3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[ediitemmapping] ADD  DEFAULT ('') FOR [partnercode]
GO
/****** Object:  Default [DF__ediitemma__stock__7C975F0C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[ediitemmapping] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__ediitemma__partn__7D8B8345]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[ediitemmapping] ADD  DEFAULT ('') FOR [partnerstockid]
GO
/****** Object:  Default [DF__ediitemma__Creat__7E7FA77E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[ediitemmapping] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__ediitemma__Statu__7F73CBB7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[ediitemmapping] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__edimessag__partn__043880D4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edimessageformat] ADD  DEFAULT ('') FOR [partnercode]
GO
/****** Object:  Default [DF__edimessag__messa__052CA50D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edimessageformat] ADD  DEFAULT ('') FOR [messagetype]
GO
/****** Object:  Default [DF__edimessag__secti__0620C946]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edimessageformat] ADD  DEFAULT ('') FOR [section]
GO
/****** Object:  Default [DF__edimessag__seque__0714ED7F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edimessageformat] ADD  DEFAULT ('0') FOR [sequenceno]
GO
/****** Object:  Default [DF__edimessag__linet__080911B8]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edimessageformat] ADD  DEFAULT ('') FOR [linetext]
GO
/****** Object:  Default [DF__edimessag__Creat__08FD35F1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edimessageformat] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__edimessag__Statu__09F15A2A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[edimessageformat] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__emailsett__usern__0EB60F47]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[emailsettings] ADD  DEFAULT (NULL) FOR [username]
GO
/****** Object:  Default [DF__emailsett__passw__0FAA3380]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[emailsettings] ADD  DEFAULT (NULL) FOR [password]
GO
/****** Object:  Default [DF__emailsett__timeo__109E57B9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[emailsettings] ADD  DEFAULT ('5') FOR [timeoutt]
GO
/****** Object:  Default [DF__emailsett__compa__11927BF2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[emailsettings] ADD  DEFAULT (NULL) FOR [companyname]
GO
/****** Object:  Default [DF__emailsetti__auth__1286A02B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[emailsettings] ADD  DEFAULT ('0') FOR [auth]
GO
/****** Object:  Default [DF__emailsett__Creat__137AC464]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[emailsettings] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__emailsett__Statu__146EE89D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[emailsettings] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__employees__Creat__7E208022]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[employees] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__employees__Statu__7F14A45B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[employees] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__factorcom__coyna__19339DBA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [coyname]
GO
/****** Object:  Default [DF__factorcom__addre__1A27C1F3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [address1]
GO
/****** Object:  Default [DF__factorcom__addre__1B1BE62C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [address2]
GO
/****** Object:  Default [DF__factorcom__addre__1C100A65]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [address3]
GO
/****** Object:  Default [DF__factorcom__addre__1D042E9E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [address4]
GO
/****** Object:  Default [DF__factorcom__addre__1DF852D7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [address5]
GO
/****** Object:  Default [DF__factorcom__addre__1EEC7710]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [address6]
GO
/****** Object:  Default [DF__factorcom__conta__1FE09B49]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [contact]
GO
/****** Object:  Default [DF__factorcom__telep__20D4BF82]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [telephone]
GO
/****** Object:  Default [DF__factorcompa__fax__21C8E3BB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [fax]
GO
/****** Object:  Default [DF__factorcom__email__22BD07F4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__factorcom__Creat__23B12C2D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__factorcom__Statu__24A55066]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__FixedAsse__seria__3E652269]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('') FOR [serialno]
GO
/****** Object:  Default [DF__FixedAsse__asset__3F5946A2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('') FOR [assetlocation]
GO
/****** Object:  Default [DF__FixedAsset__cost__404D6ADB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('0') FOR [cost]
GO
/****** Object:  Default [DF__FixedAsse__accum__41418F14]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('0') FOR [accumdepn]
GO
/****** Object:  Default [DF__FixedAsse__datep__4235B34D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('0000-00-00') FOR [datepurchased]
GO
/****** Object:  Default [DF__FixedAsse__dispo__4329D786]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('0') FOR [disposalproceeds]
GO
/****** Object:  Default [DF__FixedAsse__asset__441DFBBF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('') FOR [assetcategoryid]
GO
/****** Object:  Default [DF__FixedAsse__descr__45121FF8]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('') FOR [description]
GO
/****** Object:  Default [DF__FixedAsse__depnt__46064431]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('1') FOR [depntype]
GO
/****** Object:  Default [DF__FixedAsse__dispo__46FA686A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('0000-00-00') FOR [disposaldate]
GO
/****** Object:  Default [DF__FixedAsse__Creat__47EE8CA3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__FixedAsse__Statu__48E2B0DC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__FixedAsse__categ__296A0583]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('') FOR [categoryid]
GO
/****** Object:  Default [DF__FixedAsse__categ__2A5E29BC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('') FOR [categorydescription]
GO
/****** Object:  Default [DF__FixedAsse__costa__2B524DF5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('0') FOR [costact]
GO
/****** Object:  Default [DF__FixedAsse__depna__2C46722E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('0') FOR [depnact]
GO
/****** Object:  Default [DF__FixedAsse__dispo__2D3A9667]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('80000') FOR [disposalact]
GO
/****** Object:  Default [DF__FixedAsse__accum__2E2EBAA0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('0') FOR [accumdepnact]
GO
/****** Object:  Default [DF__FixedAsse__defau__2F22DED9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('0.2') FOR [defaultdepnrate]
GO
/****** Object:  Default [DF__FixedAsse__defau__30170312]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('1') FOR [defaultdepntype]
GO
/****** Object:  Default [DF__FixedAsse__Creat__310B274B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__FixedAsse__Statu__31FF4B84]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__FixedAsse__locat__36C400A1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetLocation] ADD  DEFAULT ('') FOR [locationdescription]
GO
/****** Object:  Default [DF__FixedAsse__paren__37B824DA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetLocation] ADD  DEFAULT ('') FOR [parentlocationid]
GO
/****** Object:  Default [DF__FixedAsse__Creat__38AC4913]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetLocation] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__FixedAsse__Statu__39A06D4C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetLocation] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__FixedAsse__frequ__4DA765F9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetTask] ADD  DEFAULT ('365') FOR [frequencydays]
GO
/****** Object:  Default [DF__FixedAsse__manag__4E9B8A32]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetTask] ADD  DEFAULT ('') FOR [manager]
GO
/****** Object:  Default [DF__FixedAsse__Creat__4F8FAE6B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetTask] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__FixedAsse__Statu__5083D2A4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetTask] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__FixedAsse__Creat__554887C1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetTransaction] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__FixedAsse__Statu__563CABFA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[FixedAssetTransaction] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__freightco__locat__5B016117]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('') FOR [locationfrom]
GO
/****** Object:  Default [DF__freightco__desti__5BF58550]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('') FOR [destination]
GO
/****** Object:  Default [DF__freightco__shipp__5CE9A989]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('0') FOR [shipperid]
GO
/****** Object:  Default [DF__freightco__cubra__5DDDCDC2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('0') FOR [cubrate]
GO
/****** Object:  Default [DF__freightco__kgrat__5ED1F1FB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('0') FOR [kgrate]
GO
/****** Object:  Default [DF__freightco__maxkg__5FC61634]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('999999') FOR [maxkgs]
GO
/****** Object:  Default [DF__freightco__maxcu__60BA3A6D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('999999') FOR [maxcub]
GO
/****** Object:  Default [DF__freightco__fixed__61AE5EA6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('0') FOR [fixedprice]
GO
/****** Object:  Default [DF__freightco__minim__62A282DF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('0') FOR [minimumchg]
GO
/****** Object:  Default [DF__freightco__Creat__6396A718]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__freightco__Statu__648ACB51]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__geocode_p__geoco__694F806E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('') FOR [geocode_key]
GO
/****** Object:  Default [DF__geocode_p__cente__6A43A4A7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('') FOR [center_long]
GO
/****** Object:  Default [DF__geocode_p__cente__6B37C8E0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('') FOR [center_lat]
GO
/****** Object:  Default [DF__geocode_p__map_h__6C2BED19]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('') FOR [map_height]
GO
/****** Object:  Default [DF__geocode_p__map_w__6D201152]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('') FOR [map_width]
GO
/****** Object:  Default [DF__geocode_p__map_h__6E14358B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('') FOR [map_host]
GO
/****** Object:  Default [DF__geocode_p__Creat__6F0859C4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__geocode_p__Statu__6FFC7DFD]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__GLTransac__typee__74C1331A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0') FOR [typee]
GO
/****** Object:  Default [DF__GLTransac__typen__75B55753]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('1') FOR [typeno]
GO
/****** Object:  Default [DF__GLTransac__chequ__76A97B8C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0') FOR [chequeno]
GO
/****** Object:  Default [DF__GLTransac__trand__779D9FC5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0000-00-00') FOR [trandate]
GO
/****** Object:  Default [DF__GLTransac__perio__7891C3FE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0') FOR [periodno]
GO
/****** Object:  Default [DF__GLTransac__accou__7985E837]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0') FOR [account]
GO
/****** Object:  Default [DF__GLTransac__narra__7A7A0C70]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('') FOR [narrative]
GO
/****** Object:  Default [DF__GLTransac__amoun__7B6E30A9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0') FOR [amount]
GO
/****** Object:  Default [DF__GLTransac__poste__7C6254E2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0') FOR [posted]
GO
/****** Object:  Default [DF__GLTransac__jobre__7D56791B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('') FOR [jobref]
GO
/****** Object:  Default [DF__GLTransacti__tag__7E4A9D54]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0') FOR [tag]
GO
/****** Object:  Default [DF__GLTransac__Creat__7F3EC18D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__GLTransac__Statu__0032E5C6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__grns__grnbatch__04F79AE3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('0') FOR [grnbatch]
GO
/****** Object:  Default [DF__grns__podetailit__05EBBF1C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('0') FOR [podetailitem]
GO
/****** Object:  Default [DF__grns__itemcode__06DFE355]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('') FOR [itemcode]
GO
/****** Object:  Default [DF__grns__deliveryda__07D4078E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('0000-00-00') FOR [deliverydate]
GO
/****** Object:  Default [DF__grns__itemdescri__08C82BC7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('') FOR [itemdescription]
GO
/****** Object:  Default [DF__grns__qtyrecd__09BC5000]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('0') FOR [qtyrecd]
GO
/****** Object:  Default [DF__grns__quantityin__0AB07439]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('0') FOR [quantityinv]
GO
/****** Object:  Default [DF__grns__supplierid__0BA49872]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('') FOR [supplierid]
GO
/****** Object:  Default [DF__grns__stdcostuni__0C98BCAB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('0') FOR [stdcostunit]
GO
/****** Object:  Default [DF__grns__CreatedBy__0D8CE0E4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__grns__Status___0E81051D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__holdreaso__reaso__1345BA3A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[holdreasons] ADD  DEFAULT ('1') FOR [reasoncode]
GO
/****** Object:  Default [DF__holdreaso__reaso__1439DE73]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[holdreasons] ADD  DEFAULT ('') FOR [reasondescription]
GO
/****** Object:  Default [DF__holdreaso__dissa__152E02AC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[holdreasons] ADD  DEFAULT ('-1') FOR [dissallowinvoices]
GO
/****** Object:  Default [DF__holdreaso__Creat__162226E5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[holdreasons] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__holdreaso__Statu__17164B1E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[holdreasons] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__internals__Creat__1BDB003B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[internalstockcatrole] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__internals__Statu__1CCF2474]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[internalstockcatrole] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__job_histo__Creat__04CD7DB1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[job_history] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__job_histo__Statu__05C1A1EA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[job_history] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__jobs__CreatedBy__7867A6CC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[jobs] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__jobs__Status___795BCB05]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[jobs] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__labelfield__vpos__2193D991]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labelfields] ADD  DEFAULT ('0') FOR [vpos]
GO
/****** Object:  Default [DF__labelfield__hpos__2287FDCA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labelfields] ADD  DEFAULT ('0') FOR [hpos]
GO
/****** Object:  Default [DF__labelfiel__barco__237C2203]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labelfields] ADD  DEFAULT ('0') FOR [barcode]
GO
/****** Object:  Default [DF__labelfiel__Creat__2470463C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labelfields] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__labelfiel__Statu__25646A75]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labelfields] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__labels__pagewidt__2A291F92]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [pagewidth]
GO
/****** Object:  Default [DF__labels__pageheig__2B1D43CB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [pageheight]
GO
/****** Object:  Default [DF__labels__height__2C116804]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [height]
GO
/****** Object:  Default [DF__labels__width__2D058C3D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [width]
GO
/****** Object:  Default [DF__labels__topmargi__2DF9B076]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [topmargin]
GO
/****** Object:  Default [DF__labels__leftmarg__2EEDD4AF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [leftmargin]
GO
/****** Object:  Default [DF__labels__rowheigh__2FE1F8E8]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [rowheight]
GO
/****** Object:  Default [DF__labels__columnwi__30D61D21]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [columnwidth]
GO
/****** Object:  Default [DF__labels__CreatedB__31CA415A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__labels__Status___32BE6593]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__lastcostr__stock__34A6AE05]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__lastcostr__total__359AD23E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0') FOR [totalonhand]
GO
/****** Object:  Default [DF__lastcostr__matco__368EF677]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0.0000') FOR [matcost]
GO
/****** Object:  Default [DF__lastcostr__labco__37831AB0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0.0000') FOR [labcost]
GO
/****** Object:  Default [DF__lastcostr__ohead__38773EE9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0.0000') FOR [oheadcost]
GO
/****** Object:  Default [DF__lastcostr__categ__396B6322]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('') FOR [categoryid]
GO
/****** Object:  Default [DF__lastcostr__stock__3A5F875B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0') FOR [stockact]
GO
/****** Object:  Default [DF__lastcostr__adjgl__3B53AB94]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0') FOR [adjglact]
GO
/****** Object:  Default [DF__lastcostr__newma__3C47CFCD]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0.0000') FOR [newmatcost]
GO
/****** Object:  Default [DF__lastcostr__newla__3D3BF406]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0.0000') FOR [newlabcost]
GO
/****** Object:  Default [DF__lastcostr__newoh__3E30183F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0.0000') FOR [newoheadcost]
GO
/****** Object:  Default [DF__lastcostr__Creat__3F243C78]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__lastcostr__Statu__401860B1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__loca__CreatedBy__6B0DABAE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loca] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__loca__Status___6C01CFE7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loca] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__locations__locat__44DD15CE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [locationname]
GO
/****** Object:  Default [DF__locations__delad__45D13A07]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [deladd1]
GO
/****** Object:  Default [DF__locations__delad__46C55E40]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [deladd2]
GO
/****** Object:  Default [DF__locations__delad__47B98279]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [deladd3]
GO
/****** Object:  Default [DF__locations__delad__48ADA6B2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [deladd4]
GO
/****** Object:  Default [DF__locations__delad__49A1CAEB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [deladd5]
GO
/****** Object:  Default [DF__locations__delad__4A95EF24]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [deladd6]
GO
/****** Object:  Default [DF__locations__tel__4B8A135D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [tel]
GO
/****** Object:  Default [DF__locations__fax__4C7E3796]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [fax]
GO
/****** Object:  Default [DF__locations__email__4D725BCF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__locations__conta__4E668008]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [contact]
GO
/****** Object:  Default [DF__locations__taxpr__4F5AA441]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('1') FOR [taxprovinceid]
GO
/****** Object:  Default [DF__locations__cashs__504EC87A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [cashsalecustomer]
GO
/****** Object:  Default [DF__locations__manag__5142ECB3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('0') FOR [managed]
GO
/****** Object:  Default [DF__locations__cashs__523710EC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [cashsalebranch]
GO
/****** Object:  Default [DF__locations__inter__532B3525]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('1') FOR [internalrequest]
GO
/****** Object:  Default [DF__locations__usedf__541F595E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('1') FOR [usedforwo]
GO
/****** Object:  Default [DF__locations__glacc__55137D97]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [glaccountcode]
GO
/****** Object:  Default [DF__locations__allow__5607A1D0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('1') FOR [allowinvoicing]
GO
/****** Object:  Default [DF__locations__Creat__56FBC609]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__locations__Statu__57EFEA42]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__locationu__canvi__5CB49F5F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locationusers] ADD  DEFAULT ('0') FOR [canview]
GO
/****** Object:  Default [DF__locationu__canup__5DA8C398]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locationusers] ADD  DEFAULT ('0') FOR [canupd]
GO
/****** Object:  Default [DF__locationu__Creat__5E9CE7D1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locationusers] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__locationu__Statu__5F910C0A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locationusers] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__locstock__stocki__6455C127]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locstock] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__locstock__quanti__6549E560]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locstock] ADD  DEFAULT ('0') FOR [quantity]
GO
/****** Object:  Default [DF__locstock__reorde__663E0999]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locstock] ADD  DEFAULT ('0') FOR [reorderlevel]
GO
/****** Object:  Default [DF__locstock__bin___67322DD2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locstock] ADD  DEFAULT ('') FOR [bin_]
GO
/****** Object:  Default [DF__locstock__Create__6826520B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locstock] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__locstock__Status__691A7644]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locstock] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__loctransf__refer__6B02BEB6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('0') FOR [reference]
GO
/****** Object:  Default [DF__loctransf__stock__6BF6E2EF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__loctransf__shipq__6CEB0728]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('0') FOR [shipqty]
GO
/****** Object:  Default [DF__loctransf__recqt__6DDF2B61]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('0') FOR [recqty]
GO
/****** Object:  Default [DF__loctransf__shipd__6ED34F9A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [shipdate]
GO
/****** Object:  Default [DF__loctransf__recda__6FC773D3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [recdate]
GO
/****** Object:  Default [DF__loctransf__shipl__70BB980C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('') FOR [shiploc]
GO
/****** Object:  Default [DF__loctransf__reclo__71AFBC45]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('') FOR [recloc]
GO
/****** Object:  Default [DF__loctransf__Creat__72A3E07E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__loctransf__Statu__739804B7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__mailgroup__Creat__785CB9D4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mailgroupdetails] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__mailgroup__Statu__7950DE0D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mailgroupdetails] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__mailgroup__Creat__7E15932A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mailgroups] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__mailgroup__Statu__7F09B763]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mailgroups] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__manufactu__manuf__03CE6C80]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[manufacturers] ADD  DEFAULT ('') FOR [manufacturers_url]
GO
/****** Object:  Default [DF__manufactu__manuf__04C290B9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[manufacturers] ADD  DEFAULT (NULL) FOR [manufacturers_image]
GO
/****** Object:  Default [DF__manufactu__Creat__05B6B4F2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[manufacturers] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__manufactu__Statu__06AAD92B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[manufacturers] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__mrpcalend__manuf__0B6F8E48]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpcalendar] ADD  DEFAULT ('1') FOR [manufacturingflag]
GO
/****** Object:  Default [DF__mrpcalend__Creat__0C63B281]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpcalendar] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__mrpcalend__Statu__0D57D6BA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpcalendar] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__mrpdemand__stock__121C8BD7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpdemands] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__mrpdemand__mrpde__1310B010]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpdemands] ADD  DEFAULT ('') FOR [mrpdemandtype]
GO
/****** Object:  Default [DF__mrpdemand__quant__1404D449]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpdemands] ADD  DEFAULT ('0') FOR [quantity]
GO
/****** Object:  Default [DF__mrpdemand__dueda__14F8F882]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpdemands] ADD  DEFAULT ('0000-00-00') FOR [duedate]
GO
/****** Object:  Default [DF__mrpdemand__Creat__15ED1CBB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpdemands] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__mrpdemand__Statu__16E140F4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpdemands] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__mrpdemand__mrpde__1BA5F611]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpdemandtypes] ADD  DEFAULT ('') FOR [mrpdemandtype]
GO
/****** Object:  Default [DF__mrpdemand__descr__1C9A1A4A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpdemandtypes] ADD  DEFAULT ('') FOR [description]
GO
/****** Object:  Default [DF__mrpdemand__Creat__1D8E3E83]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpdemandtypes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__mrpdemand__Statu__1E8262BC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpdemandtypes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__mrpplanned__part__234717D9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT (NULL) FOR [part]
GO
/****** Object:  Default [DF__mrpplanne__dueda__243B3C12]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT (NULL) FOR [duedate]
GO
/****** Object:  Default [DF__mrpplanne__suppl__252F604B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT (NULL) FOR [supplyquantity]
GO
/****** Object:  Default [DF__mrpplanne__order__26238484]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT (NULL) FOR [ordertype]
GO
/****** Object:  Default [DF__mrpplanne__order__2717A8BD]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT (NULL) FOR [orderno]
GO
/****** Object:  Default [DF__mrpplanne__mrpda__280BCCF6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT (NULL) FOR [mrpdate]
GO
/****** Object:  Default [DF__mrpplanne__updat__28FFF12F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT (NULL) FOR [updateflag]
GO
/****** Object:  Default [DF__mrpplanne__Creat__29F41568]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__mrpplanne__Statu__2AE839A1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Offer__tenderid__2FACEEBE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('0') FOR [tenderid]
GO
/****** Object:  Default [DF__Offer__supplieri__30A112F7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('') FOR [supplierid]
GO
/****** Object:  Default [DF__Offer__stockid__31953730]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__Offer__quantity__32895B69]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('0') FOR [quantity]
GO
/****** Object:  Default [DF__Offer__uom__337D7FA2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('') FOR [uom]
GO
/****** Object:  Default [DF__Offer__price__3471A3DB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('0') FOR [price]
GO
/****** Object:  Default [DF__Offer__expirydat__3565C814]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('0000-00-00') FOR [expirydate]
GO
/****** Object:  Default [DF__Offer__currcode__3659EC4D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('') FOR [currcode]
GO
/****** Object:  Default [DF__Offer__CreatedBy__374E1086]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Offer__Status___384234BF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__orderdeli__order__3A2A7D31]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('0') FOR [orderno]
GO
/****** Object:  Default [DF__orderdeli__invoi__3B1EA16A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('0') FOR [invoiceno]
GO
/****** Object:  Default [DF__orderdeli__stock__3C12C5A3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__orderdeli__quant__3D06E9DC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('0') FOR [quantitydiff]
GO
/****** Object:  Default [DF__orderdeli__debto__3DFB0E15]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__orderdeli__branc__3EEF324E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('') FOR [branch]
GO
/****** Object:  Default [DF__orderdeli__can_o__3FE35687]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('CAN') FOR [can_or_bo]
GO
/****** Object:  Default [DF__orderdeli__Creat__40D77AC0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__orderdeli__Statu__41CB9EF9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__PaymentMe__payme__46905416]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ('') FOR [paymentname]
GO
/****** Object:  Default [DF__PaymentMe__payme__4784784F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ('1') FOR [paymenttype]
GO
/****** Object:  Default [DF__PaymentMe__recei__48789C88]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ('1') FOR [receipttype]
GO
/****** Object:  Default [DF__PaymentMe__usepr__496CC0C1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ('0') FOR [usepreprintedstationery]
GO
/****** Object:  Default [DF__PaymentMe__openc__4A60E4FA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ('0') FOR [opencashdrawer]
GO
/****** Object:  Default [DF__PaymentMe__Creat__4B550933]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__PaymentMe__Statu__4C492D6C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__paymentte__terms__510DE289]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[paymentterms] ADD  DEFAULT ('') FOR [termsindicator]
GO
/****** Object:  Default [DF__paymentte__terms__520206C2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[paymentterms] ADD  DEFAULT ('') FOR [terms]
GO
/****** Object:  Default [DF__paymentte__daysb__52F62AFB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[paymentterms] ADD  DEFAULT ('0') FOR [daysbeforedue]
GO
/****** Object:  Default [DF__paymentte__dayin__53EA4F34]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[paymentterms] ADD  DEFAULT ('0') FOR [dayinfollowingmonth]
GO
/****** Object:  Default [DF__paymentte__Creat__54DE736D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[paymentterms] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__paymentte__Statu__55D297A6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[paymentterms] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__pcashdeta__Creat__5A974CC3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pcashdetails] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__pcashdeta__Statu__5B8B70FC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pcashdetails] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__PCEexpens__glacc__60502619]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCEexpenses] ADD  DEFAULT ('0') FOR [glaccount]
GO
/****** Object:  Default [DF__PCEexpenses__tag__61444A52]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCEexpenses] ADD  DEFAULT ('0') FOR [tag]
GO
/****** Object:  Default [DF__PCEexpens__Creat__62386E8B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCEexpenses] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__PCEexpens__Statu__632C92C4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCEexpenses] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__PCTabExpe__Creat__6514DB36]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTabExpenses] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__PCTabExpe__Statu__6608FF6F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTabExpenses] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__PCTabs__glaccoun__6ACDB48C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTabs] ADD  DEFAULT ('0') FOR [glaccountassignment]
GO
/****** Object:  Default [DF__PCTabs__glaccoun__6BC1D8C5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTabs] ADD  DEFAULT ('0') FOR [glaccountpcash]
GO
/****** Object:  Default [DF__PCTabs__CreatedB__6CB5FCFE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTabs] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__PCTabs__Status___6DAA2137]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTabs] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__PCTypeTab__Creat__726ED654]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTypeTabs] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__PCTypeTab__Statu__7362FA8D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTypeTabs] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__periods__periodn__7827AFAA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[periods] ADD  DEFAULT ('0') FOR [periodno]
GO
/****** Object:  Default [DF__periods__lastdat__791BD3E3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[periods] ADD  DEFAULT ('0000-00-00') FOR [lastdate_in_period]
GO
/****** Object:  Default [DF__periods__Created__7A0FF81C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[periods] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__periods__Status___7B041C55]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[periods] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__pickingli__picki__7FC8D172]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglistdetails] ADD  DEFAULT ('0') FOR [pickinglistno]
GO
/****** Object:  Default [DF__pickingli__picki__00BCF5AB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglistdetails] ADD  DEFAULT ('0') FOR [pickinglistlineno]
GO
/****** Object:  Default [DF__pickingli__order__01B119E4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglistdetails] ADD  DEFAULT ('0') FOR [orderlineno]
GO
/****** Object:  Default [DF__pickingli__qtyex__02A53E1D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglistdetails] ADD  DEFAULT ('0') FOR [qtyexpected]
GO
/****** Object:  Default [DF__pickingli__qtypi__03996256]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglistdetails] ADD  DEFAULT ('0') FOR [qtypicked]
GO
/****** Object:  Default [DF__pickingli__Creat__048D868F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglistdetails] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__pickingli__Statu__0581AAC8]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglistdetails] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__pickingli__picki__0A465FE5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglists] ADD  DEFAULT ('0') FOR [pickinglistno]
GO
/****** Object:  Default [DF__pickingli__order__0B3A841E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglists] ADD  DEFAULT ('0') FOR [orderno]
GO
/****** Object:  Default [DF__pickingli__picki__0C2EA857]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglists] ADD  DEFAULT ('0000-00-00') FOR [pickinglistdate]
GO
/****** Object:  Default [DF__pickingli__datep__0D22CC90]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglists] ADD  DEFAULT ('0000-00-00') FOR [dateprinted]
GO
/****** Object:  Default [DF__pickingli__deliv__0E16F0C9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglists] ADD  DEFAULT ('0000-00-00') FOR [deliverynotedate]
GO
/****** Object:  Default [DF__pickingli__Creat__0F0B1502]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglists] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__pickingli__Statu__0FFF393B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglists] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__pricematr__sales__14C3EE58]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('') FOR [salestype]
GO
/****** Object:  Default [DF__pricematr__stock__15B81291]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__pricematr__quant__16AC36CA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('1') FOR [quantitybreak]
GO
/****** Object:  Default [DF__pricematr__price__17A05B03]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('0') FOR [price]
GO
/****** Object:  Default [DF__pricematr__curra__18947F3C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('') FOR [currabrev]
GO
/****** Object:  Default [DF__pricematr__start__1988A375]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('0000-00-00') FOR [startdate]
GO
/****** Object:  Default [DF__pricematr__endda__1A7CC7AE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('9999-12-31') FOR [enddate]
GO
/****** Object:  Default [DF__pricematr__Creat__1B70EBE7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__pricematr__Statu__1C651020]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__prices__stockid__2129C53D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__prices__typeabbr__221DE976]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('') FOR [typeabbrev]
GO
/****** Object:  Default [DF__prices__currabre__23120DAF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('') FOR [currabrev]
GO
/****** Object:  Default [DF__prices__debtorno__240631E8]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__prices__price__24FA5621]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('0.0000') FOR [price]
GO
/****** Object:  Default [DF__prices__branchco__25EE7A5A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__prices__startdat__26E29E93]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('0000-00-00') FOR [startdate]
GO
/****** Object:  Default [DF__prices__enddate__27D6C2CC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('9999-12-31') FOR [enddate]
GO
/****** Object:  Default [DF__prices__CreatedB__28CAE705]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__prices__Status___29BF0B3E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__prodspecs__defau__2E83C05B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('') FOR [defaultvalue]
GO
/****** Object:  Default [DF__prodspecs__targe__2F77E494]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('') FOR [targetvalue]
GO
/****** Object:  Default [DF__prodspecs__range__306C08CD]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT (NULL) FOR [rangemin]
GO
/****** Object:  Default [DF__prodspecs__range__31602D06]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT (NULL) FOR [rangemax]
GO
/****** Object:  Default [DF__prodspecs__showo__3254513F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('1') FOR [showoncert]
GO
/****** Object:  Default [DF__prodspecs__showo__33487578]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('1') FOR [showonspec]
GO
/****** Object:  Default [DF__prodspecs__showo__343C99B1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('1') FOR [showontestplan]
GO
/****** Object:  Default [DF__prodspecs__activ__3530BDEA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('1') FOR [active]
GO
/****** Object:  Default [DF__prodspecs__Creat__3624E223]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__prodspecs__Statu__3719065C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__purchdata__suppl__3BDDBB79]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('') FOR [supplierno]
GO
/****** Object:  Default [DF__purchdata__stock__3CD1DFB2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__purchdata__price__3DC603EB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('0.0000') FOR [price]
GO
/****** Object:  Default [DF__purchdata__suppl__3EBA2824]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('') FOR [suppliersuom]
GO
/****** Object:  Default [DF__purchdata__conve__3FAE4C5D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('1') FOR [conversionfactor]
GO
/****** Object:  Default [DF__purchdata__suppl__40A27096]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('') FOR [supplierdescription]
GO
/****** Object:  Default [DF__purchdata__leadt__419694CF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('1') FOR [leadtime]
GO
/****** Object:  Default [DF__purchdata__prefe__428AB908]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('0') FOR [preferred]
GO
/****** Object:  Default [DF__purchdata__suppl__437EDD41]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('') FOR [suppliers_partno]
GO
/****** Object:  Default [DF__purchdata__minor__4473017A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('1') FOR [minorderqty]
GO
/****** Object:  Default [DF__purchdata__Creat__456725B3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__purchdata__Statu__465B49EC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__PurchOrde__suppl__6B8CCE9B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [supplierno]
GO
/****** Object:  Default [DF__PurchOrde__ordda__6C80F2D4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [orddate]
GO
/****** Object:  Default [DF__PurchOrder__rate__6D75170D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('1') FOR [rate]
GO
/****** Object:  Default [DF__PurchOrde__datep__6E693B46]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT (NULL) FOR [dateprinted]
GO
/****** Object:  Default [DF__PurchOrde__allow__6F5D5F7F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('1') FOR [allowprint]
GO
/****** Object:  Default [DF__PurchOrde__initi__705183B8]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT (NULL) FOR [initiatorr]
GO
/****** Object:  Default [DF__PurchOrde__requi__7145A7F1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT (NULL) FOR [requisitionno]
GO
/****** Object:  Default [DF__PurchOrde__intos__7239CC2A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [intostocklocation]
GO
/****** Object:  Default [DF__PurchOrde__delad__732DF063]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [deladd1]
GO
/****** Object:  Default [DF__PurchOrde__delad__7422149C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [deladd2]
GO
/****** Object:  Default [DF__PurchOrde__delad__751638D5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [deladd3]
GO
/****** Object:  Default [DF__PurchOrde__delad__760A5D0E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [deladd4]
GO
/****** Object:  Default [DF__PurchOrde__delad__76FE8147]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [deladd5]
GO
/****** Object:  Default [DF__PurchOrde__delad__77F2A580]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [deladd6]
GO
/****** Object:  Default [DF__PurchOrder__tel__78E6C9B9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [tel]
GO
/****** Object:  Default [DF__PurchOrde__suppd__79DAEDF2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [suppdeladdress1]
GO
/****** Object:  Default [DF__PurchOrde__suppd__7ACF122B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [suppdeladdress2]
GO
/****** Object:  Default [DF__PurchOrde__suppd__7BC33664]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [suppdeladdress3]
GO
/****** Object:  Default [DF__PurchOrde__suppd__7CB75A9D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [suppdeladdress4]
GO
/****** Object:  Default [DF__PurchOrde__suppd__7DAB7ED6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [suppdeladdress5]
GO
/****** Object:  Default [DF__PurchOrde__suppd__7E9FA30F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [suppdeladdress6]
GO
/****** Object:  Default [DF__PurchOrde__suppl__7F93C748]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [suppliercontact]
GO
/****** Object:  Default [DF__PurchOrde__suppt__0087EB81]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [supptel]
GO
/****** Object:  Default [DF__PurchOrde__conta__017C0FBA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [contact]
GO
/****** Object:  Default [DF__PurchOrde__versi__027033F3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('1.00') FOR [version_]
GO
/****** Object:  Default [DF__PurchOrde__revis__0364582C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('0000-00-00') FOR [revised]
GO
/****** Object:  Default [DF__PurchOrde__realo__04587C65]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [realorderno]
GO
/****** Object:  Default [DF__PurchOrde__deliv__054CA09E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [deliveryby]
GO
/****** Object:  Default [DF__PurchOrde__deliv__0640C4D7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('0000-00-00') FOR [deliverydate]
GO
/****** Object:  Default [DF__PurchOrde__statu__0734E910]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [statuss_]
GO
/****** Object:  Default [DF__PurchOrde__payme__08290D49]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [paymentterms]
GO
/****** Object:  Default [DF__PurchOrder__port__091D3182]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [port]
GO
/****** Object:  Default [DF__PurchOrde__Creat__0A1155BB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__PurchOrde__Statu__0B0579F4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__purchorde__useri__4B1FFF09]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderauth] ADD  DEFAULT ('') FOR [userid]
GO
/****** Object:  Default [DF__purchorde__curra__4C142342]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderauth] ADD  DEFAULT ('') FOR [currabrev]
GO
/****** Object:  Default [DF__purchorde__cancr__4D08477B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderauth] ADD  DEFAULT ('0') FOR [cancreate]
GO
/****** Object:  Default [DF__purchorde__authl__4DFC6BB4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderauth] ADD  DEFAULT ('0') FOR [authlevel]
GO
/****** Object:  Default [DF__purchorde__offho__4EF08FED]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderauth] ADD  DEFAULT ('0') FOR [offhold]
GO
/****** Object:  Default [DF__purchorde__Creat__4FE4B426]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderauth] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__purchorde__Statu__50D8D85F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderauth] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__purchorde__order__559D8D7C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [orderno]
GO
/****** Object:  Default [DF__purchorde__itemc__5691B1B5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('') FOR [itemcode]
GO
/****** Object:  Default [DF__purchorde__deliv__5785D5EE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0000-00-00') FOR [deliverydate]
GO
/****** Object:  Default [DF__purchorde__glcod__5879FA27]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [glcode]
GO
/****** Object:  Default [DF__purchorde__qtyin__596E1E60]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [qtyinvoiced]
GO
/****** Object:  Default [DF__purchorde__unitp__5A624299]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [unitprice]
GO
/****** Object:  Default [DF__purchorde__actpr__5B5666D2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [actprice]
GO
/****** Object:  Default [DF__purchorde__stdco__5C4A8B0B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [stdcostunit]
GO
/****** Object:  Default [DF__purchorde__quant__5D3EAF44]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [quantityord]
GO
/****** Object:  Default [DF__purchorde__quant__5E32D37D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [quantityrecd]
GO
/****** Object:  Default [DF__purchorde__shipt__5F26F7B6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [shiptref]
GO
/****** Object:  Default [DF__purchorde__jobre__601B1BEF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('') FOR [jobref]
GO
/****** Object:  Default [DF__purchorde__compl__610F4028]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [completed]
GO
/****** Object:  Default [DF__purchorde__suppl__62036461]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT (NULL) FOR [suppliersunit]
GO
/****** Object:  Default [DF__purchorde__suppl__62F7889A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('') FOR [suppliers_partno]
GO
/****** Object:  Default [DF__purchorde__asset__63EBACD3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [assetid]
GO
/****** Object:  Default [DF__purchorde__conve__64DFD10C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('1') FOR [conversionfactor]
GO
/****** Object:  Default [DF__purchorde__Creat__65D3F545]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__purchorde__Statu__66C8197E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__qasamples__prods__0FCA2F11]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('') FOR [prodspeckey]
GO
/****** Object:  Default [DF__qasamples__lotke__10BE534A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('') FOR [lotkey]
GO
/****** Object:  Default [DF__qasamples__ident__11B27783]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('') FOR [identifier]
GO
/****** Object:  Default [DF__qasamples__creat__12A69BBC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('') FOR [createdby_]
GO
/****** Object:  Default [DF__qasamples__sampl__139ABFF5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('0000-00-00') FOR [sampledate]
GO
/****** Object:  Default [DF__qasamples__comme__148EE42E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('') FOR [comments]
GO
/****** Object:  Default [DF__qasamples__certt__15830867]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('0') FOR [certt]
GO
/****** Object:  Default [DF__qasamples__Creat__16772CA0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__qasamples__Statu__176B50D9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__qatests__method__1C3005F6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT (NULL) FOR [method]
GO
/****** Object:  Default [DF__qatests__groupby__1D242A2F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT (NULL) FOR [groupby]
GO
/****** Object:  Default [DF__qatests__default__1E184E68]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('''''') FOR [defaultvalue]
GO
/****** Object:  Default [DF__qatests__numeric__1F0C72A1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('0') FOR [numericvalue]
GO
/****** Object:  Default [DF__qatests__showonc__200096DA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('1') FOR [showoncert]
GO
/****** Object:  Default [DF__qatests__showons__20F4BB13]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('1') FOR [showonspec]
GO
/****** Object:  Default [DF__qatests__showont__21E8DF4C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('1') FOR [showontestplan]
GO
/****** Object:  Default [DF__qatests__active__22DD0385]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('1') FOR [active]
GO
/****** Object:  Default [DF__qatests__Created__23D127BE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__qatests__Status___24C54BF7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__recurring__debto__298A0114]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__recurring__branc__2A7E254D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__recurring__custo__2B724986]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [customerref]
GO
/****** Object:  Default [DF__recurring__buyer__2C666DBF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT (NULL) FOR [buyername]
GO
/****** Object:  Default [DF__recurring__ordda__2D5A91F8]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('0000-00-00') FOR [orddate]
GO
/****** Object:  Default [DF__recurring__order__2E4EB631]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [ordertype]
GO
/****** Object:  Default [DF__recurring__shipv__2F42DA6A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('0') FOR [shipvia]
GO
/****** Object:  Default [DF__recurring__delad__3036FEA3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [deladd1]
GO
/****** Object:  Default [DF__recurring__delad__312B22DC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [deladd2]
GO
/****** Object:  Default [DF__recurring__delad__321F4715]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [deladd3]
GO
/****** Object:  Default [DF__recurring__delad__33136B4E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT (NULL) FOR [deladd4]
GO
/****** Object:  Default [DF__recurring__delad__34078F87]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [deladd5]
GO
/****** Object:  Default [DF__recurring__delad__34FBB3C0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [deladd6]
GO
/****** Object:  Default [DF__recurring__conta__35EFD7F9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT (NULL) FOR [contactphone]
GO
/****** Object:  Default [DF__recurring__conta__36E3FC32]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT (NULL) FOR [contactemail]
GO
/****** Object:  Default [DF__recurring__deliv__37D8206B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [deliverto]
GO
/****** Object:  Default [DF__recurring__freig__38CC44A4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('0') FOR [freightcost]
GO
/****** Object:  Default [DF__recurring__froms__39C068DD]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [fromstkloc]
GO
/****** Object:  Default [DF__recurring__lastr__3AB48D16]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('0000-00-00') FOR [lastrecurrence]
GO
/****** Object:  Default [DF__recurring__stopd__3BA8B14F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('0000-00-00') FOR [stopdate]
GO
/****** Object:  Default [DF__recurring__frequ__3C9CD588]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('1') FOR [frequency]
GO
/****** Object:  Default [DF__recurring__autoi__3D90F9C1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('0') FOR [autoinvoice]
GO
/****** Object:  Default [DF__recurring__Creat__3E851DFA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__recurring__Statu__3F794233]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__recurrsal__recur__41618AA5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails] ADD  DEFAULT ('0') FOR [recurrorderno]
GO
/****** Object:  Default [DF__recurrsal__stkco__4255AEDE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails] ADD  DEFAULT ('') FOR [stkcode]
GO
/****** Object:  Default [DF__recurrsal__unitp__4349D317]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails] ADD  DEFAULT ('0') FOR [unitprice]
GO
/****** Object:  Default [DF__recurrsal__quant__443DF750]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails] ADD  DEFAULT ('0') FOR [quantity]
GO
/****** Object:  Default [DF__recurrsal__disco__45321B89]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails] ADD  DEFAULT ('0') FOR [discountpercent]
GO
/****** Object:  Default [DF__recurrsal__Creat__46263FC2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__recurrsal__Statu__471A63FB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__regions__Created__5EA7D4C9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[regions] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__regions__Status___5F9BF902]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[regions] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__relatedit__Creat__4BDF1918]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[relateditems] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__relatedit__Statu__4CD33D51]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[relateditems] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__reportcol__repor__5197F26E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('0') FOR [reportid]
GO
/****** Object:  Default [DF__reportcol__colno__528C16A7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('0') FOR [colno]
GO
/****** Object:  Default [DF__reportcol__headi__53803AE0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('') FOR [heading1]
GO
/****** Object:  Default [DF__reportcol__headi__54745F19]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT (NULL) FOR [heading2]
GO
/****** Object:  Default [DF__reportcol__calcu__55688352]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('0') FOR [calculation]
GO
/****** Object:  Default [DF__reportcol__perio__565CA78B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT (NULL) FOR [periodfrom]
GO
/****** Object:  Default [DF__reportcol__perio__5750CBC4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT (NULL) FOR [periodto]
GO
/****** Object:  Default [DF__reportcol__datat__5844EFFD]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT (NULL) FOR [datatype]
GO
/****** Object:  Default [DF__reportcol__colnu__59391436]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT (NULL) FOR [colnumerator]
GO
/****** Object:  Default [DF__reportcol__colde__5A2D386F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT (NULL) FOR [coldenominator]
GO
/****** Object:  Default [DF__reportcol__calco__5B215CA8]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT (NULL) FOR [calcoperator]
GO
/****** Object:  Default [DF__reportcol__budge__5C1580E1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('0') FOR [budgetoractual]
GO
/****** Object:  Default [DF__reportcol__valfo__5D09A51A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('N') FOR [valformat]
GO
/****** Object:  Default [DF__reportcol__const__5DFDC953]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('0') FOR [constant_]
GO
/****** Object:  Default [DF__reportcol__Creat__5EF1ED8C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__reportcol__Statu__5FE611C5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__reportfie__repor__64AAC6E2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('0') FOR [reportid]
GO
/****** Object:  Default [DF__reportfie__entry__659EEB1B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('') FOR [entrytype]
GO
/****** Object:  Default [DF__reportfie__seqnu__66930F54]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('0') FOR [seqnum]
GO
/****** Object:  Default [DF__reportfie__field__6787338D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('') FOR [fieldname]
GO
/****** Object:  Default [DF__reportfie__displ__687B57C6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('') FOR [displaydesc]
GO
/****** Object:  Default [DF__reportfie__visib__6A63A038]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('1') FOR [visible]
GO
/****** Object:  Default [DF__reportfie__colum__6C4BE8AA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('1') FOR [columnbreak]
GO
/****** Object:  Default [DF__reportfie__Creat__6D400CE3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__reportfie__Statu__6E34311C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__reporthea__repor__72F8E639]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('') FOR [reportheading]
GO
/****** Object:  Default [DF__reporthea__group__73ED0A72]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('') FOR [groupbydata1]
GO
/****** Object:  Default [DF__reporthea__newpa__74E12EAB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('0') FOR [newpageafter1]
GO
/****** Object:  Default [DF__reporthea__lower__75D552E4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('') FOR [lower1]
GO
/****** Object:  Default [DF__reporthea__upper__76C9771D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('') FOR [upper1]
GO
/****** Object:  Default [DF__reporthea__group__77BD9B56]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT (NULL) FOR [groupbydata2]
GO
/****** Object:  Default [DF__reporthea__newpa__78B1BF8F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('0') FOR [newpageafter2]
GO
/****** Object:  Default [DF__reporthea__lower__79A5E3C8]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT (NULL) FOR [lower2]
GO
/****** Object:  Default [DF__reporthea__upper__7A9A0801]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT (NULL) FOR [upper2]
GO
/****** Object:  Default [DF__reporthea__group__7B8E2C3A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT (NULL) FOR [groupbydata3]
GO
/****** Object:  Default [DF__reporthea__newpa__7C825073]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('0') FOR [newpageafter3]
GO
/****** Object:  Default [DF__reporthea__lower__7D7674AC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT (NULL) FOR [lower3]
GO
/****** Object:  Default [DF__reporthea__upper__7E6A98E5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT (NULL) FOR [upper3]
GO
/****** Object:  Default [DF__reporthea__group__7F5EBD1E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('') FOR [groupbydata4]
GO
/****** Object:  Default [DF__reporthea__newpa__0052E157]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('0') FOR [newpageafter4]
GO
/****** Object:  Default [DF__reporthea__upper__01470590]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('') FOR [upper4]
GO
/****** Object:  Default [DF__reporthea__lower__023B29C9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('') FOR [lower4]
GO
/****** Object:  Default [DF__reporthea__Creat__032F4E02]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__reporthea__Statu__0423723B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__reportlin__table__060BBAAD]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportlinks] ADD  DEFAULT ('') FOR [table1]
GO
/****** Object:  Default [DF__reportlin__table__06FFDEE6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportlinks] ADD  DEFAULT ('') FOR [table2]
GO
/****** Object:  Default [DF__reportlin__equat__07F4031F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportlinks] ADD  DEFAULT ('') FOR [equation]
GO
/****** Object:  Default [DF__reportlin__Creat__08E82758]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportlinks] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__reportlin__Statu__09DC4B91]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportlinks] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__reports__reportn__0EA100AE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('') FOR [reportname]
GO
/****** Object:  Default [DF__reports__reportt__0F9524E7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('rpt') FOR [reporttype]
GO
/****** Object:  Default [DF__reports__groupna__10894920]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('misc') FOR [groupname]
GO
/****** Object:  Default [DF__reports__default__12719192]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('0') FOR [defaultreport]
GO
/****** Object:  Default [DF__reports__papersi__1365B5CB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('A4,210,297') FOR [papersize]
GO
/****** Object:  Default [DF__reports__paperor__154DFE3D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('P') FOR [paperorientation]
GO
/****** Object:  Default [DF__reports__margint__16422276]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [margintop]
GO
/****** Object:  Default [DF__reports__marginb__173646AF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [marginbottom]
GO
/****** Object:  Default [DF__reports__marginl__182A6AE8]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [marginleft]
GO
/****** Object:  Default [DF__reports__marginr__191E8F21]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [marginright]
GO
/****** Object:  Default [DF__reports__coyname__1A12B35A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Helvetica') FOR [coynamefont]
GO
/****** Object:  Default [DF__reports__coyname__1B06D793]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('12') FOR [coynamefontsize]
GO
/****** Object:  Default [DF__reports__coyname__1BFAFBCC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('0,0,0') FOR [coynamefontcolor]
GO
/****** Object:  Default [DF__reports__coyname__1DE3443E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('C') FOR [coynamealign]
GO
/****** Object:  Default [DF__reports__coyname__1FCB8CB0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('1') FOR [coynameshow]
GO
/****** Object:  Default [DF__reports__title1d__20BFB0E9]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('%reportname%') FOR [title1desc]
GO
/****** Object:  Default [DF__reports__title1f__21B3D522]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Helvetica') FOR [title1font]
GO
/****** Object:  Default [DF__reports__title1f__22A7F95B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [title1fontsize]
GO
/****** Object:  Default [DF__reports__title1f__239C1D94]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('0,0,0') FOR [title1fontcolor]
GO
/****** Object:  Default [DF__reports__title1f__25846606]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('C') FOR [title1fontalign]
GO
/****** Object:  Default [DF__reports__title1s__276CAE78]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('1') FOR [title1show]
GO
/****** Object:  Default [DF__reports__title2d__2860D2B1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Report Generated %date%') FOR [title2desc]
GO
/****** Object:  Default [DF__reports__title2f__2954F6EA]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Helvetica') FOR [title2font]
GO
/****** Object:  Default [DF__reports__title2f__2A491B23]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [title2fontsize]
GO
/****** Object:  Default [DF__reports__title2f__2B3D3F5C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('0,0,0') FOR [title2fontcolor]
GO
/****** Object:  Default [DF__reports__title2f__2D2587CE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('C') FOR [title2fontalign]
GO
/****** Object:  Default [DF__reports__title2s__2F0DD040]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('1') FOR [title2show]
GO
/****** Object:  Default [DF__reports__filterf__3001F479]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Helvetica') FOR [filterfont]
GO
/****** Object:  Default [DF__reports__filterf__30F618B2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('8') FOR [filterfontsize]
GO
/****** Object:  Default [DF__reports__filterf__31EA3CEB]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('0,0,0') FOR [filterfontcolor]
GO
/****** Object:  Default [DF__reports__filterf__33D2855D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('L') FOR [filterfontalign]
GO
/****** Object:  Default [DF__reports__datafon__34C6A996]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Helvetica') FOR [datafont]
GO
/****** Object:  Default [DF__reports__datafon__35BACDCF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [datafontsize]
GO
/****** Object:  Default [DF__reports__datafon__36AEF208]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('black') FOR [datafontcolor]
GO
/****** Object:  Default [DF__reports__datafon__38973A7A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('L') FOR [datafontalign]
GO
/****** Object:  Default [DF__reports__totalsf__398B5EB3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Helvetica') FOR [totalsfont]
GO
/****** Object:  Default [DF__reports__totalsf__3A7F82EC]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [totalsfontsize]
GO
/****** Object:  Default [DF__reports__totalsf__3B73A725]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('0,0,0') FOR [totalsfontcolor]
GO
/****** Object:  Default [DF__reports__totalsf__3D5BEF97]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('L') FOR [totalsfontalign]
GO
/****** Object:  Default [DF__reports__col1wid__3E5013D0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col1width]
GO
/****** Object:  Default [DF__reports__col2wid__3F443809]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col2width]
GO
/****** Object:  Default [DF__reports__col3wid__40385C42]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col3width]
GO
/****** Object:  Default [DF__reports__col4wid__412C807B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col4width]
GO
/****** Object:  Default [DF__reports__col5wid__4220A4B4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col5width]
GO
/****** Object:  Default [DF__reports__col6wid__4314C8ED]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col6width]
GO
/****** Object:  Default [DF__reports__col7wid__4408ED26]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col7width]
GO
/****** Object:  Default [DF__reports__col8wid__44FD115F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col8width]
GO
/****** Object:  Default [DF__reports__col9wid__45F13598]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col9width]
GO
/****** Object:  Default [DF__reports__col10wi__46E559D1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col10width]
GO
/****** Object:  Default [DF__reports__col11wi__47D97E0A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col11width]
GO
/****** Object:  Default [DF__reports__col12wi__48CDA243]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col12width]
GO
/****** Object:  Default [DF__reports__col13wi__49C1C67C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col13width]
GO
/****** Object:  Default [DF__reports__col14wi__4AB5EAB5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col14width]
GO
/****** Object:  Default [DF__reports__col15wi__4BAA0EEE]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col15width]
GO
/****** Object:  Default [DF__reports__col16wi__4C9E3327]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col16width]
GO
/****** Object:  Default [DF__reports__col17wi__4D925760]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col17width]
GO
/****** Object:  Default [DF__reports__col18wi__4E867B99]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col18width]
GO
/****** Object:  Default [DF__reports__col19wi__4F7A9FD2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col19width]
GO
/****** Object:  Default [DF__reports__col20wi__506EC40B]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col20width]
GO
/****** Object:  Default [DF__reports__table1__5162E844]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('') FOR [table1]
GO
/****** Object:  Default [DF__reports__table2__52570C7D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table2]
GO
/****** Object:  Default [DF__reports__table2c__534B30B6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table2criteria]
GO
/****** Object:  Default [DF__reports__table3__543F54EF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table3]
GO
/****** Object:  Default [DF__reports__table3c__55337928]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table3criteria]
GO
/****** Object:  Default [DF__reports__table4__56279D61]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table4]
GO
/****** Object:  Default [DF__reports__table4c__571BC19A]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table4criteria]
GO
/****** Object:  Default [DF__reports__table5__580FE5D3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table5]
GO
/****** Object:  Default [DF__reports__table5c__59040A0C]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table5criteria]
GO
/****** Object:  Default [DF__reports__table6__59F82E45]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table6]
GO
/****** Object:  Default [DF__reports__table6c__5AEC527E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table6criteria]
GO
/****** Object:  Default [DF__reports__Created__5BE076B7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__reports__Status___5CD49AF0]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__salesanal__typea__6199500D]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('') FOR [typeabbrev]
GO
/****** Object:  Default [DF__salesanal__perio__628D7446]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('0') FOR [periodno]
GO
/****** Object:  Default [DF__salesanalys__amt__6381987F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('0') FOR [amt]
GO
/****** Object:  Default [DF__salesanaly__cost__6475BCB8]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('0') FOR [cost]
GO
/****** Object:  Default [DF__salesanaly__cust__6569E0F1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('') FOR [cust]
GO
/****** Object:  Default [DF__salesanal__custb__665E052A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('') FOR [custbranch]
GO
/****** Object:  Default [DF__salesanalys__qty__67522963]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('0') FOR [qty]
GO
/****** Object:  Default [DF__salesanaly__disc__68464D9C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('0') FOR [disc]
GO
/****** Object:  Default [DF__salesanal__stock__693A71D5]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__salesanal__budge__6A2E960E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('0') FOR [budgetoractual]
GO
/****** Object:  Default [DF__salesanal__sales__6B22BA47]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('') FOR [salesperson]
GO
/****** Object:  Default [DF__salesanal__stkca__6C16DE80]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('') FOR [stkcategory]
GO
/****** Object:  Default [DF__salesanal__Creat__6D0B02B9]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__salesanal__Statu__6DFF26F2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__salescat__parent__72C3DC0F]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescat] ADD  DEFAULT (NULL) FOR [parentcatid]
GO
/****** Object:  Default [DF__salescat__salesc__73B80048]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescat] ADD  DEFAULT (NULL) FOR [salescatname]
GO
/****** Object:  Default [DF__salescat__active__74AC2481]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescat] ADD  DEFAULT ('1') FOR [active]
GO
/****** Object:  Default [DF__salescat__Create__75A048BA]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescat] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__salescat__Status__76946CF3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescat] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__salescatp__sales__7B592210]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescatprod] ADD  DEFAULT ('0') FOR [salescatid]
GO
/****** Object:  Default [DF__salescatp__stock__7C4D4649]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescatprod] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__salescatp__featu__7D416A82]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescatprod] ADD  DEFAULT ('0') FOR [featured]
GO
/****** Object:  Default [DF__salescatp__Creat__7E358EBB]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescatprod] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__salescatp__Statu__7F29B2F4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescatprod] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__salescatt__sales__03EE6811]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescattranslations] ADD  DEFAULT ('0') FOR [salescatid]
GO
/****** Object:  Default [DF__salescatt__langu__04E28C4A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescattranslations] ADD  DEFAULT ('en_GB.utf8') FOR [language_id]
GO
/****** Object:  Default [DF__salescatt__Statu__05D6B083]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescattranslations] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__salesglpo__stkca__0A9B65A0]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesglpostings] ADD  DEFAULT ('') FOR [stkcat]
GO
/****** Object:  Default [DF__salesglpo__disco__0B8F89D9]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesglpostings] ADD  DEFAULT ('0') FOR [discountglcode]
GO
/****** Object:  Default [DF__salesglpo__sales__0C83AE12]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesglpostings] ADD  DEFAULT ('0') FOR [salesglcode]
GO
/****** Object:  Default [DF__salesglpo__sales__0D77D24B]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesglpostings] ADD  DEFAULT ('AN') FOR [salestype]
GO
/****** Object:  Default [DF__salesglpo__Creat__0E6BF684]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesglpostings] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__salesglpo__Statu__0F601ABD]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesglpostings] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__SalesMan__salesm__1424CFDA]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('') FOR [salesmancode]
GO
/****** Object:  Default [DF__SalesMan__salesm__1518F413]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('') FOR [salesmanname]
GO
/****** Object:  Default [DF__SalesMan__smante__160D184C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('') FOR [smantel]
GO
/****** Object:  Default [DF__SalesMan__smanfa__17013C85]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('') FOR [smanfax]
GO
/****** Object:  Default [DF__SalesMan__commis__17F560BE]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('0') FOR [commissionrate1]
GO
/****** Object:  Default [DF__SalesMan__breakp__18E984F7]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('0') FOR [breakpoint]
GO
/****** Object:  Default [DF__SalesMan__commis__19DDA930]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('0') FOR [commissionrate2]
GO
/****** Object:  Default [DF__SalesMan__Create__1AD1CD69]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__SalesMan__Status__1BC5F1A2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__SalesOrde__debto__31B532C1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__SalesOrde__branc__32A956FA]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__SalesOrde__custo__339D7B33]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [customerref]
GO
/****** Object:  Default [DF__SalesOrde__buyer__34919F6C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT (NULL) FOR [buyername]
GO
/****** Object:  Default [DF__SalesOrde__ordda__3585C3A5]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0000-00-00') FOR [orddate]
GO
/****** Object:  Default [DF__SalesOrde__order__3679E7DE]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [ordertype]
GO
/****** Object:  Default [DF__SalesOrde__shipv__376E0C17]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0') FOR [shipvia]
GO
/****** Object:  Default [DF__SalesOrde__delad__38623050]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [deladd1]
GO
/****** Object:  Default [DF__SalesOrde__delad__39565489]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [deladd2]
GO
/****** Object:  Default [DF__SalesOrde__delad__3A4A78C2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [deladd3]
GO
/****** Object:  Default [DF__SalesOrde__delad__3B3E9CFB]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT (NULL) FOR [deladd4]
GO
/****** Object:  Default [DF__SalesOrde__delad__3C32C134]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [deladd5]
GO
/****** Object:  Default [DF__SalesOrde__delad__3D26E56D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [deladd6]
GO
/****** Object:  Default [DF__SalesOrde__conta__3E1B09A6]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT (NULL) FOR [contactphone]
GO
/****** Object:  Default [DF__SalesOrde__conta__3F0F2DDF]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT (NULL) FOR [contactemail]
GO
/****** Object:  Default [DF__SalesOrde__deliv__40035218]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [deliverto]
GO
/****** Object:  Default [DF__SalesOrde__deliv__40F77651]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('1') FOR [deliverblind]
GO
/****** Object:  Default [DF__SalesOrde__freig__41EB9A8A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0') FOR [freightcost]
GO
/****** Object:  Default [DF__SalesOrde__froms__42DFBEC3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [fromstkloc]
GO
/****** Object:  Default [DF__SalesOrde__deliv__43D3E2FC]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0000-00-00') FOR [deliverydate]
GO
/****** Object:  Default [DF__SalesOrde__confi__44C80735]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0000-00-00') FOR [confirmeddate]
GO
/****** Object:  Default [DF__SalesOrde__print__45BC2B6E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0') FOR [printedpackingslip]
GO
/****** Object:  Default [DF__SalesOrde__datep__46B04FA7]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0000-00-00') FOR [datepackingslipprinted]
GO
/****** Object:  Default [DF__SalesOrde__quota__47A473E0]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0') FOR [quotation]
GO
/****** Object:  Default [DF__SalesOrde__quote__48989819]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0000-00-00') FOR [quotedate]
GO
/****** Object:  Default [DF__SalesOrde__popla__498CBC52]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0') FOR [poplaced]
GO
/****** Object:  Default [DF__SalesOrde__Creat__4A80E08B]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__SalesOrde__Statu__4B7504C4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__salesorde__order__208AA6BF]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [orderlineno]
GO
/****** Object:  Default [DF__salesorde__order__217ECAF8]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [orderno]
GO
/****** Object:  Default [DF__salesorde__stkco__2272EF31]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('') FOR [stkcode]
GO
/****** Object:  Default [DF__salesorde__qtyin__2367136A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [qtyinvoiced]
GO
/****** Object:  Default [DF__salesorde__unitp__245B37A3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [unitprice]
GO
/****** Object:  Default [DF__salesorde__quant__254F5BDC]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [quantity]
GO
/****** Object:  Default [DF__salesorde__estim__26438015]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [estimate]
GO
/****** Object:  Default [DF__salesorde__disco__2737A44E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [discountpercent]
GO
/****** Object:  Default [DF__salesorde__actua__282BC887]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [actualdispatchdate]
GO
/****** Object:  Default [DF__salesorde__compl__291FECC0]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [completed]
GO
/****** Object:  Default [DF__salesorde__itemd__2A1410F9]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT (NULL) FOR [itemdue]
GO
/****** Object:  Default [DF__salesorde__polin__2B083532]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT (NULL) FOR [poline]
GO
/****** Object:  Default [DF__salesorde__Creat__2BFC596B]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__salesorde__Statu__2CF07DA4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__SalesType__typea__5039B9E1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesType] ADD  DEFAULT ('') FOR [typeabbrev]
GO
/****** Object:  Default [DF__SalesType__sales__512DDE1A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesType] ADD  DEFAULT ('') FOR [sales_type]
GO
/****** Object:  Default [DF__SalesType__Creat__52220253]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesType] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__SalesType__Statu__5316268C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesType] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__sampleres__range__57DADBA9]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT (NULL) FOR [rangemin]
GO
/****** Object:  Default [DF__sampleres__range__58CEFFE2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT (NULL) FOR [rangemax]
GO
/****** Object:  Default [DF__sampleres__testv__59C3241B]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('') FOR [testvalue]
GO
/****** Object:  Default [DF__sampleres__testd__5AB74854]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('0000-00-00') FOR [testdate]
GO
/****** Object:  Default [DF__sampleres__teste__5BAB6C8D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('') FOR [testedby]
GO
/****** Object:  Default [DF__sampleres__comme__5C9F90C6]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('') FOR [comments]
GO
/****** Object:  Default [DF__sampleres__isins__5D93B4FF]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('0') FOR [isinspec]
GO
/****** Object:  Default [DF__sampleres__showo__5E87D938]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('1') FOR [showoncert]
GO
/****** Object:  Default [DF__sampleres__showo__5F7BFD71]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('1') FOR [showontestplan]
GO
/****** Object:  Default [DF__sampleres__manua__607021AA]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('0') FOR [manuallyadded]
GO
/****** Object:  Default [DF__sampleres__Creat__616445E3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__sampleres__Statu__62586A1C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__scripts__script__671D1F39]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[scripts] ADD  DEFAULT ('') FOR [script]
GO
/****** Object:  Default [DF__scripts__pagesec__68114372]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[scripts] ADD  DEFAULT ('1') FOR [pagesecurity]
GO
/****** Object:  Default [DF__scripts__Created__690567AB]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[scripts] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__scripts__Status___69F98BE4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[scripts] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__securityg__secro__6EBE4101]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[securitygroups] ADD  DEFAULT ('0') FOR [secroleid]
GO
/****** Object:  Default [DF__securityg__token__6FB2653A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[securitygroups] ADD  DEFAULT ('0') FOR [tokenid]
GO
/****** Object:  Default [DF__securityg__Creat__70A68973]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[securitygroups] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__securityg__Statu__719AADAC]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[securitygroups] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__securityr__Creat__765F62C9]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[securityroles] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__securityr__Statu__77538702]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[securityroles] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__securityt__token__7C183C1F]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[securitytokens] ADD  DEFAULT ('0') FOR [tokenid]
GO
/****** Object:  Default [DF__securityt__Creat__7D0C6058]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[securitytokens] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__securityt__Statu__7E008491]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[securitytokens] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__sellthrou__debto__02C539AE]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__sellthrou__categ__03B95DE7]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('') FOR [categoryid]
GO
/****** Object:  Default [DF__sellthrou__stock__04AD8220]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__sellthrou__narra__05A1A659]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('') FOR [narrative]
GO
/****** Object:  Default [DF__sellthrou__rebat__0695CA92]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('0') FOR [rebatepercent]
GO
/****** Object:  Default [DF__sellthrou__rebat__0789EECB]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('0') FOR [rebateamount]
GO
/****** Object:  Default [DF__sellthrou__Creat__087E1304]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__sellthrou__Statu__0972373D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Shipment__shiptr__18B47ACD]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('0') FOR [shiptref]
GO
/****** Object:  Default [DF__Shipment__voyage__19A89F06]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('0') FOR [voyageref]
GO
/****** Object:  Default [DF__Shipment__vessel__1A9CC33F]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('') FOR [vessel]
GO
/****** Object:  Default [DF__Shipment__eta__1B90E778]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [eta]
GO
/****** Object:  Default [DF__Shipment__accumv__1C850BB1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('0') FOR [accumvalue]
GO
/****** Object:  Default [DF__Shipment__suppli__1D792FEA]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('') FOR [supplierid]
GO
/****** Object:  Default [DF__Shipment__closed__1E6D5423]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('0') FOR [closed]
GO
/****** Object:  Default [DF__Shipment__Create__1F61785C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Shipment__Status__20559C95]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__ShipmentC__shipt__0E36EC5A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[ShipmentCharge] ADD  DEFAULT ('0') FOR [shiptref]
GO
/****** Object:  Default [DF__ShipmentC__trans__0F2B1093]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[ShipmentCharge] ADD  DEFAULT ('0') FOR [transtype]
GO
/****** Object:  Default [DF__ShipmentC__trans__101F34CC]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[ShipmentCharge] ADD  DEFAULT ('0') FOR [transno]
GO
/****** Object:  Default [DF__ShipmentC__stock__11135905]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[ShipmentCharge] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__ShipmentC__value__12077D3E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[ShipmentCharge] ADD  DEFAULT ('0') FOR [value]
GO
/****** Object:  Default [DF__ShipmentC__Creat__12FBA177]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[ShipmentCharge] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__ShipmentC__Statu__13EFC5B0]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[ShipmentCharge] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Shipper__shipper__251A51B2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Shipper] ADD  DEFAULT ('') FOR [shippername]
GO
/****** Object:  Default [DF__Shipper__minchar__260E75EB]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Shipper] ADD  DEFAULT ('0') FOR [mincharge]
GO
/****** Object:  Default [DF__Shipper__Created__27029A24]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Shipper] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Shipper__Status___27F6BE5D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Shipper] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__StockCate__categ__2CBB737A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('') FOR [categoryid]
GO
/****** Object:  Default [DF__StockCate__categ__2DAF97B3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('') FOR [categorydescription]
GO
/****** Object:  Default [DF__StockCate__stock__2EA3BBEC]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('F') FOR [stocktype]
GO
/****** Object:  Default [DF__StockCate__stock__2F97E025]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('0') FOR [stockact]
GO
/****** Object:  Default [DF__StockCate__adjgl__308C045E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('0') FOR [adjglact]
GO
/****** Object:  Default [DF__StockCate__issue__31802897]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('0') FOR [issueglact]
GO
/****** Object:  Default [DF__StockCate__purch__32744CD0]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('80000') FOR [purchpricevaract]
GO
/****** Object:  Default [DF__StockCate__mater__33687109]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('80000') FOR [materialuseagevarac]
GO
/****** Object:  Default [DF__StockCate__wipac__345C9542]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('0') FOR [wipact]
GO
/****** Object:  Default [DF__StockCate__defau__3550B97B]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('1') FOR [defaulttaxcatid]
GO
/****** Object:  Default [DF__StockCate__Creat__3644DDB4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__StockCate__Statu__373901ED]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockcatp__contr__3BFDB70A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('0') FOR [controltype]
GO
/****** Object:  Default [DF__stockcatp__defau__3CF1DB43]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('''''') FOR [defaultvalue]
GO
/****** Object:  Default [DF__stockcatp__maxim__3DE5FF7C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('999999999') FOR [maximumvalue]
GO
/****** Object:  Default [DF__stockcatp__reqat__3EDA23B5]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('0') FOR [reqatsalesorder]
GO
/****** Object:  Default [DF__stockcatp__minim__3FCE47EE]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('-999999999') FOR [minimumvalue]
GO
/****** Object:  Default [DF__stockcatp__numer__40C26C27]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('0') FOR [numericvalue]
GO
/****** Object:  Default [DF__stockcatp__Creat__41B69060]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockcatp__Statu__42AAB499]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockchec__stock__476F69B6]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcheckfreeze] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__stockcheckf__qoh__48638DEF]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcheckfreeze] ADD  DEFAULT ('0') FOR [qoh]
GO
/****** Object:  Default [DF__stockchec__stock__4957B228]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcheckfreeze] ADD  DEFAULT ('0000-00-00') FOR [stockcheckdate]
GO
/****** Object:  Default [DF__stockchec__Creat__4A4BD661]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcheckfreeze] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockchec__Statu__4B3FFA9A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcheckfreeze] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockcoun__stock__5004AFB7]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcounts] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__stockcoun__qtyco__50F8D3F0]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcounts] ADD  DEFAULT ('0') FOR [qtycounted]
GO
/****** Object:  Default [DF__stockcoun__refer__51ECF829]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcounts] ADD  DEFAULT ('') FOR [reference]
GO
/****** Object:  Default [DF__stockcoun__Creat__52E11C62]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcounts] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockcoun__Statu__53D5409B]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcounts] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockdesc__stock__5899F5B8]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockdescriptiontranslations] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__stockdesc__langu__598E19F1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockdescriptiontranslations] ADD  DEFAULT ('') FOR [language_id]
GO
/****** Object:  Default [DF__stockdesc__descr__5A823E2A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockdescriptiontranslations] ADD  DEFAULT (NULL) FOR [descriptiontranslation]
GO
/****** Object:  Default [DF__stockdesc__needs__5B766263]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockdescriptiontranslations] ADD  DEFAULT ('0') FOR [needsrevision]
GO
/****** Object:  Default [DF__stockdesc__Creat__5C6A869C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockdescriptiontranslations] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockdesc__Statu__5D5EAAD5]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockdescriptiontranslations] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockitem__Creat__62235FF2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockitemproperties] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockitem__Statu__6317842B]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockitemproperties] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__StockMast__stock__67DC3948]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__StockMast__categ__68D05D81]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('') FOR [categoryid]
GO
/****** Object:  Default [DF__StockMast__descr__69C481BA]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('') FOR [description]
GO
/****** Object:  Default [DF__StockMast__units__6AB8A5F3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('each') FOR [units]
GO
/****** Object:  Default [DF__StockMast__mbfla__6BACCA2C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('B') FOR [mbflag]
GO
/****** Object:  Default [DF__StockMast__actua__6CA0EE65]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [actualcost]
GO
/****** Object:  Default [DF__StockMast__lastc__6D95129E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [lastcost]
GO
/****** Object:  Default [DF__StockMast__mater__6E8936D7]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [materialcost]
GO
/****** Object:  Default [DF__StockMast__labou__6F7D5B10]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [labourcost]
GO
/****** Object:  Default [DF__StockMast__overh__70717F49]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [overheadcost]
GO
/****** Object:  Default [DF__StockMast__lowes__7165A382]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [lowestlevel]
GO
/****** Object:  Default [DF__StockMast__disco__7259C7BB]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [discontinued]
GO
/****** Object:  Default [DF__StockMast__contr__734DEBF4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [controlled]
GO
/****** Object:  Default [DF__StockMaster__eoq__7442102D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [eoq]
GO
/****** Object:  Default [DF__StockMast__volum__75363466]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [volume]
GO
/****** Object:  Default [DF__StockMast__gross__762A589F]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [grossweight]
GO
/****** Object:  Default [DF__StockMast__barco__771E7CD8]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('') FOR [barcode]
GO
/****** Object:  Default [DF__StockMast__disco__7812A111]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('') FOR [discountcategory]
GO
/****** Object:  Default [DF__StockMast__taxca__7906C54A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('1') FOR [taxcatid]
GO
/****** Object:  Default [DF__StockMast__seria__79FAE983]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [serialised]
GO
/****** Object:  Default [DF__StockMast__appen__7AEF0DBC]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('none') FOR [appendfile]
GO
/****** Object:  Default [DF__StockMast__peris__7BE331F5]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [perishable]
GO
/****** Object:  Default [DF__StockMast__decim__7CD7562E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [decimalplaces]
GO
/****** Object:  Default [DF__StockMast__pansi__7DCB7A67]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [pansize]
GO
/****** Object:  Default [DF__StockMast__shrin__7EBF9EA0]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [shrinkfactor]
GO
/****** Object:  Default [DF__StockMast__nexts__7FB3C2D9]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [nextserialno]
GO
/****** Object:  Default [DF__StockMast__netwe__00A7E712]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [netweight]
GO
/****** Object:  Default [DF__StockMast__lastc__019C0B4B]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0000-00-00') FOR [lastcostupdate]
GO
/****** Object:  Default [DF__StockMast__Creat__02902F84]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__StockMast__Statu__038453BD]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockmove__stock__084908DA]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__stockmove__typee__093D2D13]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0') FOR [typee]
GO
/****** Object:  Default [DF__stockmove__trans__0A31514C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0') FOR [transno]
GO
/****** Object:  Default [DF__stockmove__trand__0B257585]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0000-00-00') FOR [trandate]
GO
/****** Object:  Default [DF__stockmove__debto__0C1999BE]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__stockmove__branc__0D0DBDF7]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__stockmove__price__0E01E230]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0.00000') FOR [price]
GO
/****** Object:  Default [DF__stockmoves__prd__0EF60669]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0') FOR [prd]
GO
/****** Object:  Default [DF__stockmove__refer__0FEA2AA2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('') FOR [reference]
GO
/****** Object:  Default [DF__stockmoves__qty__10DE4EDB]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('1') FOR [qty]
GO
/****** Object:  Default [DF__stockmove__disco__11D27314]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0') FOR [discountpercent]
GO
/****** Object:  Default [DF__stockmove__stand__12C6974D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0') FOR [standardcost]
GO
/****** Object:  Default [DF__stockmove__show___13BABB86]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('1') FOR [show_on_inv_crds]
GO
/****** Object:  Default [DF__stockmove__newqo__14AEDFBF]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0') FOR [newqoh]
GO
/****** Object:  Default [DF__stockmove__hidem__15A303F8]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0') FOR [hidemovt]
GO
/****** Object:  Default [DF__stockmove__Creat__16972831]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockmove__Statu__178B4C6A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockmove__stkmo__1C500187]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmovestaxes] ADD  DEFAULT ('0') FOR [stkmoveno]
GO
/****** Object:  Default [DF__stockmove__taxau__1D4425C0]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmovestaxes] ADD  DEFAULT ('0') FOR [taxauthid]
GO
/****** Object:  Default [DF__stockmove__taxra__1E3849F9]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmovestaxes] ADD  DEFAULT ('0') FOR [taxrate]
GO
/****** Object:  Default [DF__stockmove__taxon__1F2C6E32]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmovestaxes] ADD  DEFAULT ('0') FOR [taxontax]
GO
/****** Object:  Default [DF__stockmove__taxca__2020926B]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmovestaxes] ADD  DEFAULT ('0') FOR [taxcalculationorder]
GO
/****** Object:  Default [DF__stockmove__Creat__2114B6A4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmovestaxes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockmove__Statu__2208DADD]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmovestaxes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__StockRequ__depar__26CD8FFA]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockRequest] ADD  DEFAULT ('0') FOR [departmentid]
GO
/****** Object:  Default [DF__StockRequ__despa__27C1B433]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockRequest] ADD  DEFAULT ('0000-00-00') FOR [despatchdate]
GO
/****** Object:  Default [DF__StockRequ__autho__28B5D86C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockRequest] ADD  DEFAULT ('0') FOR [authorised]
GO
/****** Object:  Default [DF__StockRequ__close__29A9FCA5]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockRequest] ADD  DEFAULT ('0') FOR [closed]
GO
/****** Object:  Default [DF__StockRequ__Creat__2A9E20DE]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockRequest] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__StockRequ__Statu__2B924517]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockRequest] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockrequ__dispa__3056FA34]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('0') FOR [dispatchitemsid]
GO
/****** Object:  Default [DF__stockrequ__dispa__314B1E6D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('0') FOR [dispatchid]
GO
/****** Object:  Default [DF__stockrequ__stock__323F42A6]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__stockrequ__quant__333366DF]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('0') FOR [quantity]
GO
/****** Object:  Default [DF__stockrequ__qtyde__34278B18]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('0') FOR [qtydelivered]
GO
/****** Object:  Default [DF__stockrequ__decim__351BAF51]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('0') FOR [decimalplaces]
GO
/****** Object:  Default [DF__stockreques__uom__360FD38A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('') FOR [uom]
GO
/****** Object:  Default [DF__stockrequ__compl__3703F7C3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('0') FOR [completed]
GO
/****** Object:  Default [DF__stockrequ__Creat__37F81BFC]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockrequ__Statu__38EC4035]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__StockSeri__stock__3DB0F552]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockSerialItem] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__StockSeri__seria__3EA5198B]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockSerialItem] ADD  DEFAULT ('') FOR [serialno]
GO
/****** Object:  Default [DF__StockSeri__expir__3F993DC4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockSerialItem] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [expirationdate]
GO
/****** Object:  Default [DF__StockSeri__quant__408D61FD]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockSerialItem] ADD  DEFAULT ('0') FOR [quantity]
GO
/****** Object:  Default [DF__StockSeri__Creat__41818636]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockSerialItem] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__StockSeri__Statu__4275AA6F]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockSerialItem] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockseri__stock__473A5F8C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockserialmoves] ADD  DEFAULT ('0') FOR [stockmoveno]
GO
/****** Object:  Default [DF__stockseri__stock__482E83C5]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockserialmoves] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__stockseri__seria__4922A7FE]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockserialmoves] ADD  DEFAULT ('') FOR [serialno]
GO
/****** Object:  Default [DF__stockseri__moveq__4A16CC37]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockserialmoves] ADD  DEFAULT ('0') FOR [moveqty]
GO
/****** Object:  Default [DF__stockseri__Creat__4B0AF070]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockserialmoves] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockseri__Statu__4BFF14A9]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockserialmoves] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__suppallocs__amt__50C3C9C6]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppallocs] ADD  DEFAULT ('0') FOR [amt]
GO
/****** Object:  Default [DF__suppalloc__datea__51B7EDFF]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppallocs] ADD  DEFAULT ('0000-00-00') FOR [datealloc]
GO
/****** Object:  Default [DF__suppalloc__trans__52AC1238]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppallocs] ADD  DEFAULT ('0') FOR [transid_allocfrom]
GO
/****** Object:  Default [DF__suppalloc__trans__53A03671]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppallocs] ADD  DEFAULT ('0') FOR [transid_allocto]
GO
/****** Object:  Default [DF__suppalloc__Creat__54945AAA]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppallocs] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__suppalloc__Statu__55887EE3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppallocs] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Supplier__suppli__6C6BE43B]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [supplierid]
GO
/****** Object:  Default [DF__Supplier__suppna__6D600874]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [suppname]
GO
/****** Object:  Default [DF__Supplier__addres__6E542CAD]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [address1]
GO
/****** Object:  Default [DF__Supplier__addres__6F4850E6]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [address2]
GO
/****** Object:  Default [DF__Supplier__addres__703C751F]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [address3]
GO
/****** Object:  Default [DF__Supplier__addres__71309958]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [address4]
GO
/****** Object:  Default [DF__Supplier__addres__7224BD91]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [address5]
GO
/****** Object:  Default [DF__Supplier__addres__7318E1CA]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [address6]
GO
/****** Object:  Default [DF__Supplier__suppty__740D0603]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('1') FOR [supptype]
GO
/****** Object:  Default [DF__Supplier__lat__75012A3C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('0.000000') FOR [lat]
GO
/****** Object:  Default [DF__Supplier__lng__75F54E75]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('0.000000') FOR [lng]
GO
/****** Object:  Default [DF__Supplier__currco__76E972AE]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [currcode]
GO
/****** Object:  Default [DF__Supplier__suppli__77DD96E7]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('0000-00-00') FOR [suppliersince]
GO
/****** Object:  Default [DF__Supplier__paymen__78D1BB20]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [paymentterms]
GO
/****** Object:  Default [DF__Supplier__lastpa__79C5DF59]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('0') FOR [lastpaid]
GO
/****** Object:  Default [DF__Supplier__lastpa__7ABA0392]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT (NULL) FOR [lastpaiddate]
GO
/****** Object:  Default [DF__Supplier__bankac__7BAE27CB]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [bankact]
GO
/****** Object:  Default [DF__Supplier__bankre__7CA24C04]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [bankref]
GO
/****** Object:  Default [DF__Supplier__bankpa__7D96703D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [bankpartics]
GO
/****** Object:  Default [DF__Supplier__remitt__7E8A9476]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('1') FOR [remittance]
GO
/****** Object:  Default [DF__Supplier__taxgro__7F7EB8AF]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('1') FOR [taxgroupid]
GO
/****** Object:  Default [DF__Supplier__factor__0072DCE8]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('1') FOR [factorcompanyid]
GO
/****** Object:  Default [DF__Supplier__taxref__01670121]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [taxref]
GO
/****** Object:  Default [DF__Supplier__phn__025B255A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [phn]
GO
/****** Object:  Default [DF__Supplier__port__034F4993]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [port]
GO
/****** Object:  Default [DF__Supplier__email__04436DCC]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT (NULL) FOR [email]
GO
/****** Object:  Default [DF__Supplier__fax__05379205]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT (NULL) FOR [fax]
GO
/****** Object:  Default [DF__Supplier__teleph__062BB63E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT (NULL) FOR [telephone]
GO
/****** Object:  Default [DF__Supplier__url__071FDA77]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [url]
GO
/****** Object:  Default [DF__Supplier__Create__0813FEB0]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Supplier__Status__090822E9]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__supplierc__suppl__5A4D3400]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('') FOR [supplierid]
GO
/****** Object:  Default [DF__supplierc__conta__5B415839]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('') FOR [contact]
GO
/****** Object:  Default [DF__supplierc__posit__5C357C72]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('') FOR [position]
GO
/****** Object:  Default [DF__suppliercon__tel__5D29A0AB]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('') FOR [tel]
GO
/****** Object:  Default [DF__suppliercon__fax__5E1DC4E4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('') FOR [fax]
GO
/****** Object:  Default [DF__supplierc__mobil__5F11E91D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__supplierc__email__60060D56]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__supplierc__order__60FA318F]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('0') FOR [ordercontact]
GO
/****** Object:  Default [DF__supplierc__Statu__61EE55C8]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__supplierd__Creat__66B30AE5]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supplierdiscounts] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__supplierd__Statu__67A72F1E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supplierdiscounts] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__SupplierT__Statu__0DCCD806]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SupplierType] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__supptrans__trans__12918D23]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [transno]
GO
/****** Object:  Default [DF__supptrans__typee__1385B15C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [typee]
GO
/****** Object:  Default [DF__supptrans__suppl__1479D595]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('') FOR [supplierno]
GO
/****** Object:  Default [DF__supptrans__suppr__156DF9CE]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('') FOR [suppreference]
GO
/****** Object:  Default [DF__supptrans__trand__16621E07]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0000-00-00') FOR [trandate]
GO
/****** Object:  Default [DF__supptrans__dueda__17564240]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0000-00-00') FOR [duedate]
GO
/****** Object:  Default [DF__supptrans__settl__184A6679]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [settled]
GO
/****** Object:  Default [DF__supptrans__rate__193E8AB2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('1') FOR [rate]
GO
/****** Object:  Default [DF__supptrans__ovamo__1A32AEEB]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [ovamount]
GO
/****** Object:  Default [DF__supptrans__ovgst__1B26D324]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [ovgst]
GO
/****** Object:  Default [DF__supptrans__diffo__1C1AF75D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [diffonexch]
GO
/****** Object:  Default [DF__supptrans__alloc__1D0F1B96]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [alloc]
GO
/****** Object:  Default [DF__supptrans__hold__1E033FCF]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [hold]
GO
/****** Object:  Default [DF__supptrans__Creat__1EF76408]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__supptrans__Statu__1FEB8841]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__supptrans__suppt__24B03D5E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptranstaxes] ADD  DEFAULT ('0') FOR [supptransid]
GO
/****** Object:  Default [DF__supptrans__taxau__25A46197]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptranstaxes] ADD  DEFAULT ('0') FOR [taxauthid]
GO
/****** Object:  Default [DF__supptrans__taxam__269885D0]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptranstaxes] ADD  DEFAULT ('0') FOR [taxamount]
GO
/****** Object:  Default [DF__supptrans__Creat__278CAA09]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptranstaxes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__supptrans__Statu__2880CE42]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptranstaxes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__SysType__typeid__2D45835F]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SysType] ADD  DEFAULT ('0') FOR [typeid]
GO
/****** Object:  Default [DF__SysType__typenam__2E39A798]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SysType] ADD  DEFAULT ('') FOR [typename]
GO
/****** Object:  Default [DF__SysType__typeno__2F2DCBD1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SysType] ADD  DEFAULT ('1') FOR [typeno]
GO
/****** Object:  Default [DF__SysType__Created__3021F00A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SysType] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__SysType__Status___31161443]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SysType] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Tag__CreatedBy__35DAC960]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tag] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Tag__Status___36CEED99]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tag] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__taxauthor__descr__3B93A2B6]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('') FOR [description]
GO
/****** Object:  Default [DF__taxauthor__taxgl__3C87C6EF]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('0') FOR [taxglcode]
GO
/****** Object:  Default [DF__taxauthor__purch__3D7BEB28]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('0') FOR [purchtaxglaccount]
GO
/****** Object:  Default [DF__taxauthori__bank__3E700F61]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('') FOR [bank]
GO
/****** Object:  Default [DF__taxauthor__banka__3F64339A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('') FOR [bankacctype]
GO
/****** Object:  Default [DF__taxauthor__banka__405857D3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('') FOR [bankacc]
GO
/****** Object:  Default [DF__taxauthor__banks__414C7C0C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('') FOR [bankswift]
GO
/****** Object:  Default [DF__taxauthor__Creat__4240A045]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__taxauthor__Statu__4334C47E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__taxauthra__taxau__47F9799B]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthrates] ADD  DEFAULT ('1') FOR [taxauthority]
GO
/****** Object:  Default [DF__taxauthra__dispa__48ED9DD4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthrates] ADD  DEFAULT ('1') FOR [dispatchtaxprovince]
GO
/****** Object:  Default [DF__taxauthra__taxca__49E1C20D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthrates] ADD  DEFAULT ('0') FOR [taxcatid]
GO
/****** Object:  Default [DF__taxauthra__taxra__4AD5E646]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthrates] ADD  DEFAULT ('0') FOR [taxrate]
GO
/****** Object:  Default [DF__taxauthra__Creat__4BCA0A7F]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthrates] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__taxauthra__Statu__4CBE2EB8]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthrates] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__taxcatego__taxca__5182E3D5]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxcategories] ADD  DEFAULT ('') FOR [taxcatname]
GO
/****** Object:  Default [DF__taxcatego__Creat__5277080E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxcategories] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__taxcatego__Statu__536B2C47]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxcategories] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__taxgroups__taxgr__582FE164]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxgroups] ADD  DEFAULT ('') FOR [taxgroupdescription]
GO
/****** Object:  Default [DF__taxgroups__Creat__5924059D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxgroups] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__taxgroups__Statu__5A1829D6]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxgroups] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__taxgroupt__taxgr__5EDCDEF3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxgrouptaxes] ADD  DEFAULT ('0') FOR [taxgroupid]
GO
/****** Object:  Default [DF__taxgroupt__taxau__5FD1032C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxgrouptaxes] ADD  DEFAULT ('0') FOR [taxauthid]
GO
/****** Object:  Default [DF__taxgroupt__calcu__60C52765]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxgrouptaxes] ADD  DEFAULT ('0') FOR [calculationorder]
GO
/****** Object:  Default [DF__taxgroupt__taxon__61B94B9E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxgrouptaxes] ADD  DEFAULT ('0') FOR [taxontax]
GO
/****** Object:  Default [DF__taxgroupt__Creat__62AD6FD7]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxgrouptaxes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__taxgroupt__Statu__63A19410]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxgrouptaxes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__taxprovin__taxpr__6866492D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxprovinces] ADD  DEFAULT ('') FOR [taxprovincename]
GO
/****** Object:  Default [DF__taxprovin__Creat__695A6D66]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxprovinces] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__taxprovin__Statu__6A4E919F]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxprovinces] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Tender__tenderid__789CB0F6]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('0') FOR [tenderid]
GO
/****** Object:  Default [DF__Tender__location__7990D52F]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [location]
GO
/****** Object:  Default [DF__Tender__address1__7A84F968]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [address1]
GO
/****** Object:  Default [DF__Tender__address2__7B791DA1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [address2]
GO
/****** Object:  Default [DF__Tender__address3__7C6D41DA]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [address3]
GO
/****** Object:  Default [DF__Tender__address4__7D616613]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [address4]
GO
/****** Object:  Default [DF__Tender__address5__7E558A4C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [address5]
GO
/****** Object:  Default [DF__Tender__address6__7F49AE85]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [address6]
GO
/****** Object:  Default [DF__Tender__telephon__003DD2BE]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [telephone]
GO
/****** Object:  Default [DF__Tender__closed__0131F6F7]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('0') FOR [closed]
GO
/****** Object:  Default [DF__Tender__required__02261B30]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [requiredbydate]
GO
/****** Object:  Default [DF__Tender__CreatedB__031A3F69]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Tender__Status___040E63A2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__TenderIte__tende__6F1346BC]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[TenderItem] ADD  DEFAULT ('0') FOR [tenderid]
GO
/****** Object:  Default [DF__TenderIte__stock__70076AF5]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[TenderItem] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__TenderIte__quant__70FB8F2E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[TenderItem] ADD  DEFAULT ('') FOR [quantity]
GO
/****** Object:  Default [DF__TenderIte__units__71EFB367]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[TenderItem] ADD  DEFAULT ('each') FOR [units]
GO
/****** Object:  Default [DF__TenderIte__Creat__72E3D7A0]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[TenderItem] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__TenderIte__Statu__73D7FBD9]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[TenderItem] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__tendersup__tende__08D318BF]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[tendersuppliers] ADD  DEFAULT ('0') FOR [tenderid]
GO
/****** Object:  Default [DF__tendersup__suppl__09C73CF8]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[tendersuppliers] ADD  DEFAULT ('') FOR [supplierid]
GO
/****** Object:  Default [DF__tendersup__email__0ABB6131]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[tendersuppliers] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__tendersup__respo__0BAF856A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[tendersuppliers] ADD  DEFAULT ('0') FOR [responded]
GO
/****** Object:  Default [DF__tendersup__Creat__0CA3A9A3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[tendersuppliers] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__tendersup__Statu__0D97CDDC]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[tendersuppliers] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__unitsofme__unitn__125C82F9]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[unitsofmeasure] ADD  DEFAULT ('') FOR [unitname]
GO
/****** Object:  Default [DF__unitsofme__Statu__1350A732]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[unitsofmeasure] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Users__userid__46D04B38]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [userid]
GO
/****** Object:  Default [DF__Users__realname__47C46F71]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [realname]
GO
/****** Object:  Default [DF__Users__customeri__48B893AA]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [customerid]
GO
/****** Object:  Default [DF__Users__supplieri__49ACB7E3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [supplierid]
GO
/****** Object:  Default [DF__Users__phone__4AA0DC1C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [phone]
GO
/****** Object:  Default [DF__Users__email__4B950055]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [email]
GO
/****** Object:  Default [DF__Users__defaultlo__4C89248E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [defaultlocation]
GO
/****** Object:  Default [DF__Users__fullacces__4D7D48C7]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('1') FOR [fullaccess]
GO
/****** Object:  Default [DF__Users__cancreate__4E716D00]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0') FOR [cancreatetender]
GO
/****** Object:  Default [DF__Users__lastvisit__4F659139]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [lastvisitdate]
GO
/****** Object:  Default [DF__Users__branchcod__5059B572]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__Users__pagesize__514DD9AB]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('A4') FOR [pagesize]
GO
/****** Object:  Default [DF__Users__showdashb__5241FDE4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0') FOR [showdashboard]
GO
/****** Object:  Default [DF__Users__blocked__5336221D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0') FOR [blocked]
GO
/****** Object:  Default [DF__Users__displayre__542A4656]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0') FOR [displayrecordsmax]
GO
/****** Object:  Default [DF__Users__theme__551E6A8F]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('fresh') FOR [theme]
GO
/****** Object:  Default [DF__Users__languagee__56128EC8]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('en_GB.utf8') FOR [languagee]
GO
/****** Object:  Default [DF__Users__pdflangua__5706B301]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0') FOR [pdflanguage]
GO
/****** Object:  Default [DF__Users__departmen__57FAD73A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0') FOR [department]
GO
/****** Object:  Default [DF__Users__CreatedBy__58EEFB73]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Users__Status___59E31FAC]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__woitems__stockid__18155C4F]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[woitems] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__woitems__qtyreqd__19098088]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[woitems] ADD  DEFAULT ('1') FOR [qtyreqd]
GO
/****** Object:  Default [DF__woitems__qtyrecd__19FDA4C1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[woitems] ADD  DEFAULT ('0') FOR [qtyrecd]
GO
/****** Object:  Default [DF__woitems__nextlot__1AF1C8FA]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[woitems] ADD  DEFAULT ('') FOR [nextlotsnref]
GO
/****** Object:  Default [DF__woitems__Created__1BE5ED33]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[woitems] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__woitems__Status___1CDA116C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[woitems] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__worequire__qtypu__219EC689]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[worequirements] ADD  DEFAULT ('1') FOR [qtypu]
GO
/****** Object:  Default [DF__worequire__stdco__2292EAC2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[worequirements] ADD  DEFAULT ('0') FOR [stdcost]
GO
/****** Object:  Default [DF__worequire__autoi__23870EFB]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[worequirements] ADD  DEFAULT ('0') FOR [autoissue]
GO
/****** Object:  Default [DF__worequire__Creat__247B3334]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[worequirements] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__worequire__Statu__256F576D]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[worequirements] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__workcentre__code__2A340C8A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('') FOR [code]
GO
/****** Object:  Default [DF__workcentr__locat__2B2830C3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('') FOR [location]
GO
/****** Object:  Default [DF__workcentr__descr__2C1C54FC]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('') FOR [description]
GO
/****** Object:  Default [DF__workcentr__capac__2D107935]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('1') FOR [capacity]
GO
/****** Object:  Default [DF__workcentr__overh__2E049D6E]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('0') FOR [overheadperhour]
GO
/****** Object:  Default [DF__workcentr__overh__2EF8C1A7]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('0') FOR [overheadrecoveryact]
GO
/****** Object:  Default [DF__workcentr__setup__2FECE5E0]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('0') FOR [setuphrs]
GO
/****** Object:  Default [DF__workcentr__Creat__30E10A19]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__workcentr__Statu__31D52E52]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__workorder__requi__3699E36F]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workorders] ADD  DEFAULT ('0000-00-00') FOR [requiredby]
GO
/****** Object:  Default [DF__workorder__start__378E07A8]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workorders] ADD  DEFAULT ('0000-00-00') FOR [startdate]
GO
/****** Object:  Default [DF__workorder__costi__38822BE1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workorders] ADD  DEFAULT ('0') FOR [costissued]
GO
/****** Object:  Default [DF__workorder__close__3976501A]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workorders] ADD  DEFAULT ('0') FOR [closed]
GO
/****** Object:  Default [DF__workorder__Creat__3A6A7453]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workorders] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__workorder__Statu__3B5E988C]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workorders] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__woserialn__quant__40234DA9]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[woserialnos] ADD  DEFAULT ('1') FOR [quantity]
GO
/****** Object:  Default [DF__woserialn__Creat__411771E2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[woserialnos] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__woserialn__Statu__420B961B]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[woserialnos] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Check [CK__reportfie__colum__6B57C471]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportfields]  WITH CHECK ADD CHECK  (([columnbreak]='0' OR [columnbreak]='1'))
GO
/****** Object:  Check [CK__reportfie__visib__696F7BFF]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportfields]  WITH CHECK ADD CHECK  (([visible]='0' OR [visible]='1'))
GO
/****** Object:  Check [CK__reports__coyname__1CEF2005]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([coynamealign]='R' OR [coynamealign]='C' OR [coynamealign]='L'))
GO
/****** Object:  Check [CK__reports__coyname__1ED76877]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([coynameshow]='0' OR [coynameshow]='1'))
GO
/****** Object:  Check [CK__reports__datafon__37A31641]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([datafontalign]='R' OR [datafontalign]='C' OR [datafontalign]='L'))
GO
/****** Object:  Check [CK__reports__default__117D6D59]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([defaultreport]='0' OR [defaultreport]='1'))
GO
/****** Object:  Check [CK__reports__filterf__32DE6124]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([filterfontalign]='R' OR [filterfontalign]='C' OR [filterfontalign]='L'))
GO
/****** Object:  Check [CK__reports__paperor__1459DA04]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([paperorientation]='L' OR [paperorientation]='P'))
GO
/****** Object:  Check [CK__reports__title1f__249041CD]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([title1fontalign]='R' OR [title1fontalign]='C' OR [title1fontalign]='L'))
GO
/****** Object:  Check [CK__reports__title1s__26788A3F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([title1show]='0' OR [title1show]='1'))
GO
/****** Object:  Check [CK__reports__title2f__2C316395]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([title2fontalign]='R' OR [title2fontalign]='C' OR [title2fontalign]='L'))
GO
/****** Object:  Check [CK__reports__title2s__2E19AC07]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([title2show]='0' OR [title2show]='1'))
GO
/****** Object:  Check [CK__reports__totalsf__3C67CB5E]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([totalsfontalign]='R' OR [totalsfontalign]='C' OR [totalsfontalign]='L'))
GO
/****** Object:  ForeignKey [AccountGroup_ibfk_1]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AccountGroup]  WITH CHECK ADD  CONSTRAINT [AccountGroup_ibfk_1] FOREIGN KEY([sectioninaccounts])
REFERENCES [dbo].[AccountSection] ([sectionid])
GO
ALTER TABLE [dbo].[AccountGroup] CHECK CONSTRAINT [AccountGroup_ibfk_1]
GO
/****** Object:  ForeignKey [AuditTrail_ibfk_1]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[AuditTrail]  WITH CHECK ADD  CONSTRAINT [AuditTrail_ibfk_1] FOREIGN KEY([userid])
REFERENCES [dbo].[Users] ([userid])
GO
ALTER TABLE [dbo].[AuditTrail] CHECK CONSTRAINT [AuditTrail_ibfk_1]
GO
/****** Object:  ForeignKey [BankAccount_ibfk_1]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankAccount]  WITH CHECK ADD  CONSTRAINT [BankAccount_ibfk_1] FOREIGN KEY([accountcode])
REFERENCES [dbo].[ChartMaster] ([accountcode])
GO
ALTER TABLE [dbo].[BankAccount] CHECK CONSTRAINT [BankAccount_ibfk_1]
GO
/****** Object:  ForeignKey [BankTransaction_ibfk_1]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction]  WITH CHECK ADD  CONSTRAINT [BankTransaction_ibfk_1] FOREIGN KEY([typee])
REFERENCES [dbo].[SysType] ([typeid])
GO
ALTER TABLE [dbo].[BankTransaction] CHECK CONSTRAINT [BankTransaction_ibfk_1]
GO
/****** Object:  ForeignKey [BankTransaction_ibfk_2]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[BankTransaction]  WITH CHECK ADD  CONSTRAINT [BankTransaction_ibfk_2] FOREIGN KEY([bankact])
REFERENCES [dbo].[BankAccount] ([accountcode])
GO
ALTER TABLE [dbo].[BankTransaction] CHECK CONSTRAINT [BankTransaction_ibfk_2]
GO
/****** Object:  ForeignKey [bom_ibfk_1]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom]  WITH CHECK ADD  CONSTRAINT [bom_ibfk_1] FOREIGN KEY([parent])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[bom] CHECK CONSTRAINT [bom_ibfk_1]
GO
/****** Object:  ForeignKey [bom_ibfk_2]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom]  WITH CHECK ADD  CONSTRAINT [bom_ibfk_2] FOREIGN KEY([component])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[bom] CHECK CONSTRAINT [bom_ibfk_2]
GO
/****** Object:  ForeignKey [bom_ibfk_3]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom]  WITH CHECK ADD  CONSTRAINT [bom_ibfk_3] FOREIGN KEY([workcentreadded])
REFERENCES [dbo].[workcentres] ([code])
GO
ALTER TABLE [dbo].[bom] CHECK CONSTRAINT [bom_ibfk_3]
GO
/****** Object:  ForeignKey [bom_ibfk_4]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[bom]  WITH CHECK ADD  CONSTRAINT [bom_ibfk_4] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[bom] CHECK CONSTRAINT [bom_ibfk_4]
GO
/****** Object:  ForeignKey [ChartDetail_ibfk_1]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[ChartDetail]  WITH CHECK ADD  CONSTRAINT [ChartDetail_ibfk_1] FOREIGN KEY([accountcode])
REFERENCES [dbo].[ChartMaster] ([accountcode])
GO
ALTER TABLE [dbo].[ChartDetail] CHECK CONSTRAINT [ChartDetail_ibfk_1]
GO
/****** Object:  ForeignKey [ChartDetail_ibfk_2]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[ChartDetail]  WITH CHECK ADD  CONSTRAINT [ChartDetail_ibfk_2] FOREIGN KEY([period])
REFERENCES [dbo].[periods] ([periodno])
GO
ALTER TABLE [dbo].[ChartDetail] CHECK CONSTRAINT [ChartDetail_ibfk_2]
GO
/****** Object:  ForeignKey [ChartMaster_ibfk_1]    Script Date: 05/07/2016 21:18:02 ******/
ALTER TABLE [dbo].[ChartMaster]  WITH CHECK ADD  CONSTRAINT [ChartMaster_ibfk_1] FOREIGN KEY([group_])
REFERENCES [dbo].[AccountGroup] ([groupname])
GO
ALTER TABLE [dbo].[ChartMaster] CHECK CONSTRAINT [ChartMaster_ibfk_1]
GO
/****** Object:  ForeignKey [Contract_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [Contract_ibfk_1] FOREIGN KEY([debtorno], [branchcode])
REFERENCES [dbo].[custbranch] ([debtorno], [branchcode])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [Contract_ibfk_1]
GO
/****** Object:  ForeignKey [Contract_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [Contract_ibfk_2] FOREIGN KEY([categoryid])
REFERENCES [dbo].[StockCategory] ([categoryid])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [Contract_ibfk_2]
GO
/****** Object:  ForeignKey [Contract_ibfk_3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [Contract_ibfk_3] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [Contract_ibfk_3]
GO
/****** Object:  ForeignKey [contractbom_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractbom]  WITH CHECK ADD  CONSTRAINT [contractbom_ibfk_1] FOREIGN KEY([workcentreadded])
REFERENCES [dbo].[workcentres] ([code])
GO
ALTER TABLE [dbo].[contractbom] CHECK CONSTRAINT [contractbom_ibfk_1]
GO
/****** Object:  ForeignKey [contractbom_ibfk_3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractbom]  WITH CHECK ADD  CONSTRAINT [contractbom_ibfk_3] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[contractbom] CHECK CONSTRAINT [contractbom_ibfk_3]
GO
/****** Object:  ForeignKey [contractcharges_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractcharges]  WITH CHECK ADD  CONSTRAINT [contractcharges_ibfk_1] FOREIGN KEY([contractref])
REFERENCES [dbo].[Contract] ([contractref])
GO
ALTER TABLE [dbo].[contractcharges] CHECK CONSTRAINT [contractcharges_ibfk_1]
GO
/****** Object:  ForeignKey [contractcharges_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractcharges]  WITH CHECK ADD  CONSTRAINT [contractcharges_ibfk_2] FOREIGN KEY([transtype])
REFERENCES [dbo].[SysType] ([typeid])
GO
ALTER TABLE [dbo].[contractcharges] CHECK CONSTRAINT [contractcharges_ibfk_2]
GO
/****** Object:  ForeignKey [contractreqts_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[contractreqts]  WITH CHECK ADD  CONSTRAINT [contractreqts_ibfk_1] FOREIGN KEY([contractref])
REFERENCES [dbo].[Contract] ([contractref])
GO
ALTER TABLE [dbo].[contractreqts] CHECK CONSTRAINT [contractreqts_ibfk_1]
GO
/****** Object:  ForeignKey [countries_regions_region_id]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[countries]  WITH CHECK ADD  CONSTRAINT [countries_regions_region_id] FOREIGN KEY([region_id])
REFERENCES [dbo].[regions] ([region_id])
GO
ALTER TABLE [dbo].[countries] CHECK CONSTRAINT [countries_regions_region_id]
GO
/****** Object:  ForeignKey [custallocns_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custallocns]  WITH CHECK ADD  CONSTRAINT [custallocns_ibfk_1] FOREIGN KEY([transid_allocfrom])
REFERENCES [dbo].[DebtorTransaction] ([id])
GO
ALTER TABLE [dbo].[custallocns] CHECK CONSTRAINT [custallocns_ibfk_1]
GO
/****** Object:  ForeignKey [custallocns_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custallocns]  WITH CHECK ADD  CONSTRAINT [custallocns_ibfk_2] FOREIGN KEY([transid_allocto])
REFERENCES [dbo].[DebtorTransaction] ([id])
GO
ALTER TABLE [dbo].[custallocns] CHECK CONSTRAINT [custallocns_ibfk_2]
GO
/****** Object:  ForeignKey [custbranch_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch]  WITH CHECK ADD  CONSTRAINT [custbranch_ibfk_1] FOREIGN KEY([debtorno])
REFERENCES [dbo].[DebtorMaster] ([debtorno])
GO
ALTER TABLE [dbo].[custbranch] CHECK CONSTRAINT [custbranch_ibfk_1]
GO
/****** Object:  ForeignKey [custbranch_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch]  WITH CHECK ADD  CONSTRAINT [custbranch_ibfk_2] FOREIGN KEY([area])
REFERENCES [dbo].[Areas] ([areacode])
GO
ALTER TABLE [dbo].[custbranch] CHECK CONSTRAINT [custbranch_ibfk_2]
GO
/****** Object:  ForeignKey [custbranch_ibfk_3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch]  WITH CHECK ADD  CONSTRAINT [custbranch_ibfk_3] FOREIGN KEY([salesman])
REFERENCES [dbo].[SalesMan] ([salesmancode])
GO
ALTER TABLE [dbo].[custbranch] CHECK CONSTRAINT [custbranch_ibfk_3]
GO
/****** Object:  ForeignKey [custbranch_ibfk_4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch]  WITH CHECK ADD  CONSTRAINT [custbranch_ibfk_4] FOREIGN KEY([defaultlocation])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[custbranch] CHECK CONSTRAINT [custbranch_ibfk_4]
GO
/****** Object:  ForeignKey [custbranch_ibfk_6]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch]  WITH CHECK ADD  CONSTRAINT [custbranch_ibfk_6] FOREIGN KEY([defaultshipvia])
REFERENCES [dbo].[Shipper] ([shipper_id])
GO
ALTER TABLE [dbo].[custbranch] CHECK CONSTRAINT [custbranch_ibfk_6]
GO
/****** Object:  ForeignKey [custbranch_ibfk_7]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch]  WITH CHECK ADD  CONSTRAINT [custbranch_ibfk_7] FOREIGN KEY([taxgroupid])
REFERENCES [dbo].[taxgroups] ([taxgroupid])
GO
ALTER TABLE [dbo].[custbranch] CHECK CONSTRAINT [custbranch_ibfk_7]
GO
/****** Object:  ForeignKey [custitem_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custbranch]  WITH CHECK ADD  CONSTRAINT [custitem_ibfk_2] FOREIGN KEY([debtorno])
REFERENCES [dbo].[DebtorMaster] ([debtorno])
GO
ALTER TABLE [dbo].[custbranch] CHECK CONSTRAINT [custitem_ibfk_2]
GO
/****** Object:  ForeignKey [custitem_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[custitem]  WITH CHECK ADD  CONSTRAINT [custitem_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[custitem] CHECK CONSTRAINT [custitem_ibfk_1]
GO
/****** Object:  ForeignKey [debtorsmaster_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster]  WITH CHECK ADD  CONSTRAINT [debtorsmaster_ibfk_1] FOREIGN KEY([holdreason])
REFERENCES [dbo].[holdreasons] ([reasoncode])
GO
ALTER TABLE [dbo].[DebtorMaster] CHECK CONSTRAINT [debtorsmaster_ibfk_1]
GO
/****** Object:  ForeignKey [debtorsmaster_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster]  WITH CHECK ADD  CONSTRAINT [debtorsmaster_ibfk_2] FOREIGN KEY([currcode])
REFERENCES [dbo].[Currency] ([currabrev])
GO
ALTER TABLE [dbo].[DebtorMaster] CHECK CONSTRAINT [debtorsmaster_ibfk_2]
GO
/****** Object:  ForeignKey [debtorsmaster_ibfk_3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster]  WITH CHECK ADD  CONSTRAINT [debtorsmaster_ibfk_3] FOREIGN KEY([paymentterms])
REFERENCES [dbo].[paymentterms] ([termsindicator])
GO
ALTER TABLE [dbo].[DebtorMaster] CHECK CONSTRAINT [debtorsmaster_ibfk_3]
GO
/****** Object:  ForeignKey [debtorsmaster_ibfk_4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster]  WITH CHECK ADD  CONSTRAINT [debtorsmaster_ibfk_4] FOREIGN KEY([salestype])
REFERENCES [dbo].[SalesType] ([typeabbrev])
GO
ALTER TABLE [dbo].[DebtorMaster] CHECK CONSTRAINT [debtorsmaster_ibfk_4]
GO
/****** Object:  ForeignKey [debtorsmaster_ibfk_5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorMaster]  WITH CHECK ADD  CONSTRAINT [debtorsmaster_ibfk_5] FOREIGN KEY([typeid])
REFERENCES [dbo].[debtortype] ([typeid])
GO
ALTER TABLE [dbo].[DebtorMaster] CHECK CONSTRAINT [debtorsmaster_ibfk_5]
GO
/****** Object:  ForeignKey [debtortrans_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction]  WITH CHECK ADD  CONSTRAINT [debtortrans_ibfk_2] FOREIGN KEY([typee])
REFERENCES [dbo].[SysType] ([typeid])
GO
ALTER TABLE [dbo].[DebtorTransaction] CHECK CONSTRAINT [debtortrans_ibfk_2]
GO
/****** Object:  ForeignKey [debtortrans_ibfk_3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[DebtorTransaction]  WITH CHECK ADD  CONSTRAINT [debtortrans_ibfk_3] FOREIGN KEY([prd])
REFERENCES [dbo].[periods] ([periodno])
GO
ALTER TABLE [dbo].[DebtorTransaction] CHECK CONSTRAINT [debtortrans_ibfk_3]
GO
/****** Object:  ForeignKey [debtortranstaxes_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[debtortranstaxes]  WITH CHECK ADD  CONSTRAINT [debtortranstaxes_ibfk_1] FOREIGN KEY([taxauthid])
REFERENCES [dbo].[taxauthorities] ([taxid])
GO
ALTER TABLE [dbo].[debtortranstaxes] CHECK CONSTRAINT [debtortranstaxes_ibfk_1]
GO
/****** Object:  ForeignKey [debtortranstaxes_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[debtortranstaxes]  WITH CHECK ADD  CONSTRAINT [debtortranstaxes_ibfk_2] FOREIGN KEY([debtortransid])
REFERENCES [dbo].[DebtorTransaction] ([id])
GO
ALTER TABLE [dbo].[debtortranstaxes] CHECK CONSTRAINT [debtortranstaxes_ibfk_2]
GO
/****** Object:  ForeignKey [deliverynotes_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[deliverynotes]  WITH CHECK ADD  CONSTRAINT [deliverynotes_ibfk_1] FOREIGN KEY([salesorderno])
REFERENCES [dbo].[SalesOrder] ([orderno])
GO
ALTER TABLE [dbo].[deliverynotes] CHECK CONSTRAINT [deliverynotes_ibfk_1]
GO
/****** Object:  ForeignKey [deliverynotes_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[deliverynotes]  WITH CHECK ADD  CONSTRAINT [deliverynotes_ibfk_2] FOREIGN KEY([salesorderno], [salesorderlineno])
REFERENCES [dbo].[salesorderdetails] ([orderlineno], [orderno])
GO
ALTER TABLE [dbo].[deliverynotes] CHECK CONSTRAINT [deliverynotes_ibfk_2]
GO
/****** Object:  ForeignKey [departments_locations_location_id]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[dept]  WITH CHECK ADD  CONSTRAINT [departments_locations_location_id] FOREIGN KEY([location_id])
REFERENCES [dbo].[loca] ([location_id])
GO
ALTER TABLE [dbo].[dept] CHECK CONSTRAINT [departments_locations_location_id]
GO
/****** Object:  ForeignKey [FK__dept__manager_id__02E5353F]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[dept]  WITH CHECK ADD FOREIGN KEY([manager_id])
REFERENCES [dbo].[employees] ([employee_id])
GO
/****** Object:  ForeignKey [discountmatrix_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[discountmatrix]  WITH CHECK ADD  CONSTRAINT [discountmatrix_ibfk_1] FOREIGN KEY([salestype])
REFERENCES [dbo].[SalesType] ([typeabbrev])
GO
ALTER TABLE [dbo].[discountmatrix] CHECK CONSTRAINT [discountmatrix_ibfk_1]
GO
/****** Object:  ForeignKey [employees_departments_department_id]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [employees_departments_department_id] FOREIGN KEY([department_id])
REFERENCES [dbo].[dept] ([department_id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [employees_departments_department_id]
GO
/****** Object:  ForeignKey [employees_employees_employee_id]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [employees_employees_employee_id] FOREIGN KEY([manager_id])
REFERENCES [dbo].[employees] ([employee_id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [employees_employees_employee_id]
GO
/****** Object:  ForeignKey [employees_jobs_job_id]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [employees_jobs_job_id] FOREIGN KEY([job_id])
REFERENCES [dbo].[jobs] ([job_id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [employees_jobs_job_id]
GO
/****** Object:  ForeignKey [freightcosts_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[freightcosts]  WITH CHECK ADD  CONSTRAINT [freightcosts_ibfk_1] FOREIGN KEY([locationfrom])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[freightcosts] CHECK CONSTRAINT [freightcosts_ibfk_1]
GO
/****** Object:  ForeignKey [freightcosts_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[freightcosts]  WITH CHECK ADD  CONSTRAINT [freightcosts_ibfk_2] FOREIGN KEY([shipperid])
REFERENCES [dbo].[Shipper] ([shipper_id])
GO
ALTER TABLE [dbo].[freightcosts] CHECK CONSTRAINT [freightcosts_ibfk_2]
GO
/****** Object:  ForeignKey [GLTransaction_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction]  WITH CHECK ADD  CONSTRAINT [GLTransaction_ibfk_1] FOREIGN KEY([account])
REFERENCES [dbo].[ChartMaster] ([accountcode])
GO
ALTER TABLE [dbo].[GLTransaction] CHECK CONSTRAINT [GLTransaction_ibfk_1]
GO
/****** Object:  ForeignKey [GLTransaction_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction]  WITH CHECK ADD  CONSTRAINT [GLTransaction_ibfk_2] FOREIGN KEY([typee])
REFERENCES [dbo].[SysType] ([typeid])
GO
ALTER TABLE [dbo].[GLTransaction] CHECK CONSTRAINT [GLTransaction_ibfk_2]
GO
/****** Object:  ForeignKey [GLTransaction_ibfk_3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[GLTransaction]  WITH CHECK ADD  CONSTRAINT [GLTransaction_ibfk_3] FOREIGN KEY([periodno])
REFERENCES [dbo].[periods] ([periodno])
GO
ALTER TABLE [dbo].[GLTransaction] CHECK CONSTRAINT [GLTransaction_ibfk_3]
GO
/****** Object:  ForeignKey [grns_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[grns]  WITH CHECK ADD  CONSTRAINT [grns_ibfk_1] FOREIGN KEY([supplierid])
REFERENCES [dbo].[Supplier] ([supplierid])
GO
ALTER TABLE [dbo].[grns] CHECK CONSTRAINT [grns_ibfk_1]
GO
/****** Object:  ForeignKey [grns_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[grns]  WITH CHECK ADD  CONSTRAINT [grns_ibfk_2] FOREIGN KEY([podetailitem])
REFERENCES [dbo].[purchorderdetails] ([podetailitem])
GO
ALTER TABLE [dbo].[grns] CHECK CONSTRAINT [grns_ibfk_2]
GO
/****** Object:  ForeignKey [internalstockcatrole_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[internalstockcatrole]  WITH CHECK ADD  CONSTRAINT [internalstockcatrole_ibfk_1] FOREIGN KEY([categoryid])
REFERENCES [dbo].[StockCategory] ([categoryid])
GO
ALTER TABLE [dbo].[internalstockcatrole] CHECK CONSTRAINT [internalstockcatrole_ibfk_1]
GO
/****** Object:  ForeignKey [internalstockcatrole_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[internalstockcatrole]  WITH CHECK ADD  CONSTRAINT [internalstockcatrole_ibfk_2] FOREIGN KEY([secroleid])
REFERENCES [dbo].[securityroles] ([secroleid])
GO
ALTER TABLE [dbo].[internalstockcatrole] CHECK CONSTRAINT [internalstockcatrole_ibfk_2]
GO
/****** Object:  ForeignKey [internalstockcatrole_ibfk_3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[internalstockcatrole]  WITH CHECK ADD  CONSTRAINT [internalstockcatrole_ibfk_3] FOREIGN KEY([categoryid])
REFERENCES [dbo].[StockCategory] ([categoryid])
GO
ALTER TABLE [dbo].[internalstockcatrole] CHECK CONSTRAINT [internalstockcatrole_ibfk_3]
GO
/****** Object:  ForeignKey [internalstockcatrole_ibfk_4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[internalstockcatrole]  WITH CHECK ADD  CONSTRAINT [internalstockcatrole_ibfk_4] FOREIGN KEY([secroleid])
REFERENCES [dbo].[securityroles] ([secroleid])
GO
ALTER TABLE [dbo].[internalstockcatrole] CHECK CONSTRAINT [internalstockcatrole_ibfk_4]
GO
/****** Object:  ForeignKey [job_history_departments_department_id]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[job_history]  WITH CHECK ADD  CONSTRAINT [job_history_departments_department_id] FOREIGN KEY([department_id])
REFERENCES [dbo].[dept] ([department_id])
GO
ALTER TABLE [dbo].[job_history] CHECK CONSTRAINT [job_history_departments_department_id]
GO
/****** Object:  ForeignKey [job_history_employees_employee_id]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[job_history]  WITH CHECK ADD  CONSTRAINT [job_history_employees_employee_id] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employees] ([employee_id])
GO
ALTER TABLE [dbo].[job_history] CHECK CONSTRAINT [job_history_employees_employee_id]
GO
/****** Object:  ForeignKey [job_history_jobs_job_id]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[job_history]  WITH CHECK ADD  CONSTRAINT [job_history_jobs_job_id] FOREIGN KEY([job_id])
REFERENCES [dbo].[jobs] ([job_id])
GO
ALTER TABLE [dbo].[job_history] CHECK CONSTRAINT [job_history_jobs_job_id]
GO
/****** Object:  ForeignKey [locations_countries_country_id]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loca]  WITH CHECK ADD  CONSTRAINT [locations_countries_country_id] FOREIGN KEY([country_id])
REFERENCES [dbo].[countries] ([country_id])
GO
ALTER TABLE [dbo].[loca] CHECK CONSTRAINT [locations_countries_country_id]
GO
/****** Object:  ForeignKey [locations_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locations]  WITH CHECK ADD  CONSTRAINT [locations_ibfk_1] FOREIGN KEY([taxprovinceid])
REFERENCES [dbo].[taxprovinces] ([taxprovinceid])
GO
ALTER TABLE [dbo].[locations] CHECK CONSTRAINT [locations_ibfk_1]
GO
/****** Object:  ForeignKey [locstock_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locstock]  WITH CHECK ADD  CONSTRAINT [locstock_ibfk_1] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[locstock] CHECK CONSTRAINT [locstock_ibfk_1]
GO
/****** Object:  ForeignKey [locstock_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[locstock]  WITH CHECK ADD  CONSTRAINT [locstock_ibfk_2] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[locstock] CHECK CONSTRAINT [locstock_ibfk_2]
GO
/****** Object:  ForeignKey [loctransfers_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loctransfers]  WITH CHECK ADD  CONSTRAINT [loctransfers_ibfk_1] FOREIGN KEY([shiploc])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[loctransfers] CHECK CONSTRAINT [loctransfers_ibfk_1]
GO
/****** Object:  ForeignKey [loctransfers_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loctransfers]  WITH CHECK ADD  CONSTRAINT [loctransfers_ibfk_2] FOREIGN KEY([recloc])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[loctransfers] CHECK CONSTRAINT [loctransfers_ibfk_2]
GO
/****** Object:  ForeignKey [loctransfers_ibfk_3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[loctransfers]  WITH CHECK ADD  CONSTRAINT [loctransfers_ibfk_3] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[loctransfers] CHECK CONSTRAINT [loctransfers_ibfk_3]
GO
/****** Object:  ForeignKey [mailgroupdetails_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mailgroupdetails]  WITH CHECK ADD  CONSTRAINT [mailgroupdetails_ibfk_1] FOREIGN KEY([id])
REFERENCES [dbo].[mailgroups] ([id])
GO
ALTER TABLE [dbo].[mailgroupdetails] CHECK CONSTRAINT [mailgroupdetails_ibfk_1]
GO
/****** Object:  ForeignKey [mailgroupdetails_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mailgroupdetails]  WITH CHECK ADD  CONSTRAINT [mailgroupdetails_ibfk_2] FOREIGN KEY([userid])
REFERENCES [dbo].[Users] ([userid])
GO
ALTER TABLE [dbo].[mailgroupdetails] CHECK CONSTRAINT [mailgroupdetails_ibfk_2]
GO
/****** Object:  ForeignKey [mrpdemands_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpdemands]  WITH CHECK ADD  CONSTRAINT [mrpdemands_ibfk_1] FOREIGN KEY([mrpdemandtype])
REFERENCES [dbo].[mrpdemandtypes] ([mrpdemandtype])
GO
ALTER TABLE [dbo].[mrpdemands] CHECK CONSTRAINT [mrpdemands_ibfk_1]
GO
/****** Object:  ForeignKey [mrpdemands_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[mrpdemands]  WITH CHECK ADD  CONSTRAINT [mrpdemands_ibfk_2] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[mrpdemands] CHECK CONSTRAINT [mrpdemands_ibfk_2]
GO
/****** Object:  ForeignKey [Offer_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [Offer_ibfk_1] FOREIGN KEY([supplierid])
REFERENCES [dbo].[Supplier] ([supplierid])
GO
ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [Offer_ibfk_1]
GO
/****** Object:  ForeignKey [Offer_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [Offer_ibfk_2] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [Offer_ibfk_2]
GO
/****** Object:  ForeignKey [orderdeliverydifferenceslog_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog]  WITH CHECK ADD  CONSTRAINT [orderdeliverydifferenceslog_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[orderdeliverydifferenceslog] CHECK CONSTRAINT [orderdeliverydifferenceslog_ibfk_1]
GO
/****** Object:  ForeignKey [orderdeliverydifferenceslog_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog]  WITH CHECK ADD  CONSTRAINT [orderdeliverydifferenceslog_ibfk_2] FOREIGN KEY([debtorno], [branch])
REFERENCES [dbo].[custbranch] ([debtorno], [branchcode])
GO
ALTER TABLE [dbo].[orderdeliverydifferenceslog] CHECK CONSTRAINT [orderdeliverydifferenceslog_ibfk_2]
GO
/****** Object:  ForeignKey [orderdeliverydifferenceslog_ibfk_3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog]  WITH CHECK ADD  CONSTRAINT [orderdeliverydifferenceslog_ibfk_3] FOREIGN KEY([orderno])
REFERENCES [dbo].[SalesOrder] ([orderno])
GO
ALTER TABLE [dbo].[orderdeliverydifferenceslog] CHECK CONSTRAINT [orderdeliverydifferenceslog_ibfk_3]
GO
/****** Object:  ForeignKey [PCEexpenses_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCEexpenses]  WITH CHECK ADD  CONSTRAINT [PCEexpenses_ibfk_1] FOREIGN KEY([glaccount])
REFERENCES [dbo].[ChartMaster] ([accountcode])
GO
ALTER TABLE [dbo].[PCEexpenses] CHECK CONSTRAINT [PCEexpenses_ibfk_1]
GO
/****** Object:  ForeignKey [PCTabExpenses_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTabExpenses]  WITH CHECK ADD  CONSTRAINT [PCTabExpenses_ibfk_1] FOREIGN KEY([typetabcode])
REFERENCES [dbo].[PCTypeTabs] ([typetabcode])
GO
ALTER TABLE [dbo].[PCTabExpenses] CHECK CONSTRAINT [PCTabExpenses_ibfk_1]
GO
/****** Object:  ForeignKey [PCTabExpenses_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTabExpenses]  WITH CHECK ADD  CONSTRAINT [PCTabExpenses_ibfk_2] FOREIGN KEY([codeexpense])
REFERENCES [dbo].[PCEexpenses] ([codeexpense])
GO
ALTER TABLE [dbo].[PCTabExpenses] CHECK CONSTRAINT [PCTabExpenses_ibfk_2]
GO
/****** Object:  ForeignKey [PCTabs_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTabs]  WITH CHECK ADD  CONSTRAINT [PCTabs_ibfk_1] FOREIGN KEY([usercode])
REFERENCES [dbo].[Users] ([userid])
GO
ALTER TABLE [dbo].[PCTabs] CHECK CONSTRAINT [PCTabs_ibfk_1]
GO
/****** Object:  ForeignKey [PCTabs_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTabs]  WITH CHECK ADD  CONSTRAINT [PCTabs_ibfk_2] FOREIGN KEY([typetabcode])
REFERENCES [dbo].[PCTypeTabs] ([typetabcode])
GO
ALTER TABLE [dbo].[PCTabs] CHECK CONSTRAINT [PCTabs_ibfk_2]
GO
/****** Object:  ForeignKey [PCTabs_ibfk_3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTabs]  WITH CHECK ADD  CONSTRAINT [PCTabs_ibfk_3] FOREIGN KEY([currency])
REFERENCES [dbo].[Currency] ([currabrev])
GO
ALTER TABLE [dbo].[PCTabs] CHECK CONSTRAINT [PCTabs_ibfk_3]
GO
/****** Object:  ForeignKey [PCTabs_ibfk_4]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTabs]  WITH CHECK ADD  CONSTRAINT [PCTabs_ibfk_4] FOREIGN KEY([authorizer])
REFERENCES [dbo].[Users] ([userid])
GO
ALTER TABLE [dbo].[PCTabs] CHECK CONSTRAINT [PCTabs_ibfk_4]
GO
/****** Object:  ForeignKey [PCTabs_ibfk_5]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PCTabs]  WITH CHECK ADD  CONSTRAINT [PCTabs_ibfk_5] FOREIGN KEY([glaccountassignment])
REFERENCES [dbo].[ChartMaster] ([accountcode])
GO
ALTER TABLE [dbo].[PCTabs] CHECK CONSTRAINT [PCTabs_ibfk_5]
GO
/****** Object:  ForeignKey [pickinglistdetails_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglistdetails]  WITH CHECK ADD  CONSTRAINT [pickinglistdetails_ibfk_1] FOREIGN KEY([pickinglistno])
REFERENCES [dbo].[pickinglists] ([pickinglistno])
GO
ALTER TABLE [dbo].[pickinglistdetails] CHECK CONSTRAINT [pickinglistdetails_ibfk_1]
GO
/****** Object:  ForeignKey [pickinglists_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[pickinglists]  WITH CHECK ADD  CONSTRAINT [pickinglists_ibfk_1] FOREIGN KEY([orderno])
REFERENCES [dbo].[SalesOrder] ([orderno])
GO
ALTER TABLE [dbo].[pickinglists] CHECK CONSTRAINT [pickinglists_ibfk_1]
GO
/****** Object:  ForeignKey [prices_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prices]  WITH CHECK ADD  CONSTRAINT [prices_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[prices] CHECK CONSTRAINT [prices_ibfk_1]
GO
/****** Object:  ForeignKey [prices_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prices]  WITH CHECK ADD  CONSTRAINT [prices_ibfk_2] FOREIGN KEY([currabrev])
REFERENCES [dbo].[Currency] ([currabrev])
GO
ALTER TABLE [dbo].[prices] CHECK CONSTRAINT [prices_ibfk_2]
GO
/****** Object:  ForeignKey [prices_ibfk_3]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prices]  WITH CHECK ADD  CONSTRAINT [prices_ibfk_3] FOREIGN KEY([typeabbrev])
REFERENCES [dbo].[SalesType] ([typeabbrev])
GO
ALTER TABLE [dbo].[prices] CHECK CONSTRAINT [prices_ibfk_3]
GO
/****** Object:  ForeignKey [prodspecs_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[prodspecs]  WITH CHECK ADD  CONSTRAINT [prodspecs_ibfk_1] FOREIGN KEY([testid])
REFERENCES [dbo].[qatests] ([testid])
GO
ALTER TABLE [dbo].[prodspecs] CHECK CONSTRAINT [prodspecs_ibfk_1]
GO
/****** Object:  ForeignKey [purchdata_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchdata]  WITH CHECK ADD  CONSTRAINT [purchdata_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[purchdata] CHECK CONSTRAINT [purchdata_ibfk_1]
GO
/****** Object:  ForeignKey [purchdata_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchdata]  WITH CHECK ADD  CONSTRAINT [purchdata_ibfk_2] FOREIGN KEY([supplierno])
REFERENCES [dbo].[Supplier] ([supplierid])
GO
ALTER TABLE [dbo].[purchdata] CHECK CONSTRAINT [purchdata_ibfk_2]
GO
/****** Object:  ForeignKey [PurchOrder_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder]  WITH CHECK ADD  CONSTRAINT [PurchOrder_ibfk_1] FOREIGN KEY([supplierno])
REFERENCES [dbo].[Supplier] ([supplierid])
GO
ALTER TABLE [dbo].[PurchOrder] CHECK CONSTRAINT [PurchOrder_ibfk_1]
GO
/****** Object:  ForeignKey [PurchOrder_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[PurchOrder]  WITH CHECK ADD  CONSTRAINT [PurchOrder_ibfk_2] FOREIGN KEY([intostocklocation])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[PurchOrder] CHECK CONSTRAINT [PurchOrder_ibfk_2]
GO
/****** Object:  ForeignKey [purchorderdetails_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[purchorderdetails]  WITH CHECK ADD  CONSTRAINT [purchorderdetails_ibfk_1] FOREIGN KEY([orderno])
REFERENCES [dbo].[PurchOrder] ([orderno])
GO
ALTER TABLE [dbo].[purchorderdetails] CHECK CONSTRAINT [purchorderdetails_ibfk_1]
GO
/****** Object:  ForeignKey [qasamples_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[qasamples]  WITH CHECK ADD  CONSTRAINT [qasamples_ibfk_1] FOREIGN KEY([prodspeckey])
REFERENCES [dbo].[prodspecs] ([keyval])
GO
ALTER TABLE [dbo].[qasamples] CHECK CONSTRAINT [qasamples_ibfk_1]
GO
/****** Object:  ForeignKey [recurrsalesorderdetails_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails]  WITH CHECK ADD  CONSTRAINT [recurrsalesorderdetails_ibfk_1] FOREIGN KEY([recurrorderno])
REFERENCES [dbo].[recurringsalesorders] ([recurrorderno])
GO
ALTER TABLE [dbo].[recurrsalesorderdetails] CHECK CONSTRAINT [recurrsalesorderdetails_ibfk_1]
GO
/****** Object:  ForeignKey [recurrsalesorderdetails_ibfk_2]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails]  WITH CHECK ADD  CONSTRAINT [recurrsalesorderdetails_ibfk_2] FOREIGN KEY([stkcode])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[recurrsalesorderdetails] CHECK CONSTRAINT [recurrsalesorderdetails_ibfk_2]
GO
/****** Object:  ForeignKey [reportcolumns_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[reportcolumns]  WITH CHECK ADD  CONSTRAINT [reportcolumns_ibfk_1] FOREIGN KEY([reportid])
REFERENCES [dbo].[reportheaders] ([reportid])
GO
ALTER TABLE [dbo].[reportcolumns] CHECK CONSTRAINT [reportcolumns_ibfk_1]
GO
/****** Object:  ForeignKey [salesanalysis_ibfk_1]    Script Date: 05/07/2016 21:18:03 ******/
ALTER TABLE [dbo].[salesanalysis]  WITH CHECK ADD  CONSTRAINT [salesanalysis_ibfk_1] FOREIGN KEY([periodno])
REFERENCES [dbo].[periods] ([periodno])
GO
ALTER TABLE [dbo].[salesanalysis] CHECK CONSTRAINT [salesanalysis_ibfk_1]
GO
/****** Object:  ForeignKey [salescatprod_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescatprod]  WITH CHECK ADD  CONSTRAINT [salescatprod_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[salescatprod] CHECK CONSTRAINT [salescatprod_ibfk_1]
GO
/****** Object:  ForeignKey [salescatprod_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salescatprod]  WITH CHECK ADD  CONSTRAINT [salescatprod_ibfk_2] FOREIGN KEY([salescatid])
REFERENCES [dbo].[salescat] ([salescatid])
GO
ALTER TABLE [dbo].[salescatprod] CHECK CONSTRAINT [salescatprod_ibfk_2]
GO
/****** Object:  ForeignKey [salesorders_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder]  WITH CHECK ADD  CONSTRAINT [salesorders_ibfk_2] FOREIGN KEY([shipvia])
REFERENCES [dbo].[Shipper] ([shipper_id])
GO
ALTER TABLE [dbo].[SalesOrder] CHECK CONSTRAINT [salesorders_ibfk_2]
GO
/****** Object:  ForeignKey [salesorders_ibfk_3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[SalesOrder]  WITH CHECK ADD  CONSTRAINT [salesorders_ibfk_3] FOREIGN KEY([fromstkloc])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[SalesOrder] CHECK CONSTRAINT [salesorders_ibfk_3]
GO
/****** Object:  ForeignKey [salesorderdetails_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails]  WITH CHECK ADD  CONSTRAINT [salesorderdetails_ibfk_1] FOREIGN KEY([orderno])
REFERENCES [dbo].[SalesOrder] ([orderno])
GO
ALTER TABLE [dbo].[salesorderdetails] CHECK CONSTRAINT [salesorderdetails_ibfk_1]
GO
/****** Object:  ForeignKey [salesorderdetails_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[salesorderdetails]  WITH CHECK ADD  CONSTRAINT [salesorderdetails_ibfk_2] FOREIGN KEY([stkcode])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[salesorderdetails] CHECK CONSTRAINT [salesorderdetails_ibfk_2]
GO
/****** Object:  ForeignKey [sampleresults_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[sampleresults]  WITH CHECK ADD  CONSTRAINT [sampleresults_ibfk_1] FOREIGN KEY([testid])
REFERENCES [dbo].[qatests] ([testid])
GO
ALTER TABLE [dbo].[sampleresults] CHECK CONSTRAINT [sampleresults_ibfk_1]
GO
/****** Object:  ForeignKey [securitygroups_secroleid_fk]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[securitygroups]  WITH CHECK ADD  CONSTRAINT [securitygroups_secroleid_fk] FOREIGN KEY([secroleid])
REFERENCES [dbo].[securityroles] ([secroleid])
GO
ALTER TABLE [dbo].[securitygroups] CHECK CONSTRAINT [securitygroups_secroleid_fk]
GO
/****** Object:  ForeignKey [securitygroups_tokenid_fk]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[securitygroups]  WITH CHECK ADD  CONSTRAINT [securitygroups_tokenid_fk] FOREIGN KEY([tokenid])
REFERENCES [dbo].[securitytokens] ([tokenid])
GO
ALTER TABLE [dbo].[securitygroups] CHECK CONSTRAINT [securitygroups_tokenid_fk]
GO
/****** Object:  ForeignKey [shipments_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [shipments_ibfk_1] FOREIGN KEY([supplierid])
REFERENCES [dbo].[Supplier] ([supplierid])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [shipments_ibfk_1]
GO
/****** Object:  ForeignKey [shipmentcharges_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[ShipmentCharge]  WITH CHECK ADD  CONSTRAINT [shipmentcharges_ibfk_1] FOREIGN KEY([shiptref])
REFERENCES [dbo].[Shipment] ([shiptref])
GO
ALTER TABLE [dbo].[ShipmentCharge] CHECK CONSTRAINT [shipmentcharges_ibfk_1]
GO
/****** Object:  ForeignKey [shipmentcharges_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[ShipmentCharge]  WITH CHECK ADD  CONSTRAINT [shipmentcharges_ibfk_2] FOREIGN KEY([transtype])
REFERENCES [dbo].[SysType] ([typeid])
GO
ALTER TABLE [dbo].[ShipmentCharge] CHECK CONSTRAINT [shipmentcharges_ibfk_2]
GO
/****** Object:  ForeignKey [stockcheckfreeze_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcheckfreeze]  WITH CHECK ADD  CONSTRAINT [stockcheckfreeze_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockcheckfreeze] CHECK CONSTRAINT [stockcheckfreeze_ibfk_1]
GO
/****** Object:  ForeignKey [stockcheckfreeze_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcheckfreeze]  WITH CHECK ADD  CONSTRAINT [stockcheckfreeze_ibfk_2] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[stockcheckfreeze] CHECK CONSTRAINT [stockcheckfreeze_ibfk_2]
GO
/****** Object:  ForeignKey [stockcounts_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcounts]  WITH CHECK ADD  CONSTRAINT [stockcounts_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockcounts] CHECK CONSTRAINT [stockcounts_ibfk_1]
GO
/****** Object:  ForeignKey [stockcounts_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockcounts]  WITH CHECK ADD  CONSTRAINT [stockcounts_ibfk_2] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[stockcounts] CHECK CONSTRAINT [stockcounts_ibfk_2]
GO
/****** Object:  ForeignKey [stockitemproperties_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockitemproperties]  WITH CHECK ADD  CONSTRAINT [stockitemproperties_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockitemproperties] CHECK CONSTRAINT [stockitemproperties_ibfk_1]
GO
/****** Object:  ForeignKey [stockitemproperties_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockitemproperties]  WITH CHECK ADD  CONSTRAINT [stockitemproperties_ibfk_2] FOREIGN KEY([stkcatpropid])
REFERENCES [dbo].[stockcatproperties] ([stkcatpropid])
GO
ALTER TABLE [dbo].[stockitemproperties] CHECK CONSTRAINT [stockitemproperties_ibfk_2]
GO
/****** Object:  ForeignKey [stockitemproperties_ibfk_3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockitemproperties]  WITH CHECK ADD  CONSTRAINT [stockitemproperties_ibfk_3] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockitemproperties] CHECK CONSTRAINT [stockitemproperties_ibfk_3]
GO
/****** Object:  ForeignKey [stockitemproperties_ibfk_4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockitemproperties]  WITH CHECK ADD  CONSTRAINT [stockitemproperties_ibfk_4] FOREIGN KEY([stkcatpropid])
REFERENCES [dbo].[stockcatproperties] ([stkcatpropid])
GO
ALTER TABLE [dbo].[stockitemproperties] CHECK CONSTRAINT [stockitemproperties_ibfk_4]
GO
/****** Object:  ForeignKey [stockitemproperties_ibfk_5]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockitemproperties]  WITH CHECK ADD  CONSTRAINT [stockitemproperties_ibfk_5] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockitemproperties] CHECK CONSTRAINT [stockitemproperties_ibfk_5]
GO
/****** Object:  ForeignKey [stockitemproperties_ibfk_6]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockitemproperties]  WITH CHECK ADD  CONSTRAINT [stockitemproperties_ibfk_6] FOREIGN KEY([stkcatpropid])
REFERENCES [dbo].[stockcatproperties] ([stkcatpropid])
GO
ALTER TABLE [dbo].[stockitemproperties] CHECK CONSTRAINT [stockitemproperties_ibfk_6]
GO
/****** Object:  ForeignKey [StockMaster_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster]  WITH CHECK ADD  CONSTRAINT [StockMaster_ibfk_1] FOREIGN KEY([categoryid])
REFERENCES [dbo].[StockCategory] ([categoryid])
GO
ALTER TABLE [dbo].[StockMaster] CHECK CONSTRAINT [StockMaster_ibfk_1]
GO
/****** Object:  ForeignKey [StockMaster_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockMaster]  WITH CHECK ADD  CONSTRAINT [StockMaster_ibfk_2] FOREIGN KEY([taxcatid])
REFERENCES [dbo].[taxcategories] ([taxcatid])
GO
ALTER TABLE [dbo].[StockMaster] CHECK CONSTRAINT [StockMaster_ibfk_2]
GO
/****** Object:  ForeignKey [stockmoves_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves]  WITH CHECK ADD  CONSTRAINT [stockmoves_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockmoves] CHECK CONSTRAINT [stockmoves_ibfk_1]
GO
/****** Object:  ForeignKey [stockmoves_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves]  WITH CHECK ADD  CONSTRAINT [stockmoves_ibfk_2] FOREIGN KEY([typee])
REFERENCES [dbo].[SysType] ([typeid])
GO
ALTER TABLE [dbo].[stockmoves] CHECK CONSTRAINT [stockmoves_ibfk_2]
GO
/****** Object:  ForeignKey [stockmoves_ibfk_3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves]  WITH CHECK ADD  CONSTRAINT [stockmoves_ibfk_3] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[stockmoves] CHECK CONSTRAINT [stockmoves_ibfk_3]
GO
/****** Object:  ForeignKey [stockmoves_ibfk_4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmoves]  WITH CHECK ADD  CONSTRAINT [stockmoves_ibfk_4] FOREIGN KEY([prd])
REFERENCES [dbo].[periods] ([periodno])
GO
ALTER TABLE [dbo].[stockmoves] CHECK CONSTRAINT [stockmoves_ibfk_4]
GO
/****** Object:  ForeignKey [stockmovestaxes_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmovestaxes]  WITH CHECK ADD  CONSTRAINT [stockmovestaxes_ibfk_1] FOREIGN KEY([taxauthid])
REFERENCES [dbo].[taxauthorities] ([taxid])
GO
ALTER TABLE [dbo].[stockmovestaxes] CHECK CONSTRAINT [stockmovestaxes_ibfk_1]
GO
/****** Object:  ForeignKey [stockmovestaxes_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmovestaxes]  WITH CHECK ADD  CONSTRAINT [stockmovestaxes_ibfk_2] FOREIGN KEY([stkmoveno])
REFERENCES [dbo].[stockmoves] ([stkmoveno])
GO
ALTER TABLE [dbo].[stockmovestaxes] CHECK CONSTRAINT [stockmovestaxes_ibfk_2]
GO
/****** Object:  ForeignKey [stockmovestaxes_ibfk_3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmovestaxes]  WITH CHECK ADD  CONSTRAINT [stockmovestaxes_ibfk_3] FOREIGN KEY([stkmoveno])
REFERENCES [dbo].[stockmoves] ([stkmoveno])
GO
ALTER TABLE [dbo].[stockmovestaxes] CHECK CONSTRAINT [stockmovestaxes_ibfk_3]
GO
/****** Object:  ForeignKey [stockmovestaxes_ibfk_4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockmovestaxes]  WITH CHECK ADD  CONSTRAINT [stockmovestaxes_ibfk_4] FOREIGN KEY([stkmoveno])
REFERENCES [dbo].[stockmoves] ([stkmoveno])
GO
ALTER TABLE [dbo].[stockmovestaxes] CHECK CONSTRAINT [stockmovestaxes_ibfk_4]
GO
/****** Object:  ForeignKey [stockrequest_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockRequest]  WITH CHECK ADD  CONSTRAINT [stockrequest_ibfk_1] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[StockRequest] CHECK CONSTRAINT [stockrequest_ibfk_1]
GO
/****** Object:  ForeignKey [stockrequest_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockRequest]  WITH CHECK ADD  CONSTRAINT [stockrequest_ibfk_2] FOREIGN KEY([departmentid])
REFERENCES [dbo].[departments] ([departmentid])
GO
ALTER TABLE [dbo].[StockRequest] CHECK CONSTRAINT [stockrequest_ibfk_2]
GO
/****** Object:  ForeignKey [stockrequest_ibfk_3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockRequest]  WITH CHECK ADD  CONSTRAINT [stockrequest_ibfk_3] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[StockRequest] CHECK CONSTRAINT [stockrequest_ibfk_3]
GO
/****** Object:  ForeignKey [stockrequest_ibfk_4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockRequest]  WITH CHECK ADD  CONSTRAINT [stockrequest_ibfk_4] FOREIGN KEY([departmentid])
REFERENCES [dbo].[departments] ([departmentid])
GO
ALTER TABLE [dbo].[StockRequest] CHECK CONSTRAINT [stockrequest_ibfk_4]
GO
/****** Object:  ForeignKey [stockrequestitems_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockrequestitems]  WITH CHECK ADD  CONSTRAINT [stockrequestitems_ibfk_1] FOREIGN KEY([dispatchid])
REFERENCES [dbo].[StockRequest] ([dispatchid])
GO
ALTER TABLE [dbo].[stockrequestitems] CHECK CONSTRAINT [stockrequestitems_ibfk_1]
GO
/****** Object:  ForeignKey [stockrequestitems_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockrequestitems]  WITH CHECK ADD  CONSTRAINT [stockrequestitems_ibfk_2] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockrequestitems] CHECK CONSTRAINT [stockrequestitems_ibfk_2]
GO
/****** Object:  ForeignKey [stockrequestitems_ibfk_3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockrequestitems]  WITH CHECK ADD  CONSTRAINT [stockrequestitems_ibfk_3] FOREIGN KEY([dispatchid])
REFERENCES [dbo].[StockRequest] ([dispatchid])
GO
ALTER TABLE [dbo].[stockrequestitems] CHECK CONSTRAINT [stockrequestitems_ibfk_3]
GO
/****** Object:  ForeignKey [stockrequestitems_ibfk_4]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockrequestitems]  WITH CHECK ADD  CONSTRAINT [stockrequestitems_ibfk_4] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockrequestitems] CHECK CONSTRAINT [stockrequestitems_ibfk_4]
GO
/****** Object:  ForeignKey [stockserialitems_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockSerialItem]  WITH CHECK ADD  CONSTRAINT [stockserialitems_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[StockSerialItem] CHECK CONSTRAINT [stockserialitems_ibfk_1]
GO
/****** Object:  ForeignKey [stockserialitems_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[StockSerialItem]  WITH CHECK ADD  CONSTRAINT [stockserialitems_ibfk_2] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[StockSerialItem] CHECK CONSTRAINT [stockserialitems_ibfk_2]
GO
/****** Object:  ForeignKey [stockserialmoves_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[stockserialmoves]  WITH CHECK ADD  CONSTRAINT [stockserialmoves_ibfk_1] FOREIGN KEY([stockmoveno])
REFERENCES [dbo].[stockmoves] ([stkmoveno])
GO
ALTER TABLE [dbo].[stockserialmoves] CHECK CONSTRAINT [stockserialmoves_ibfk_1]
GO
/****** Object:  ForeignKey [suppallocs_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppallocs]  WITH CHECK ADD  CONSTRAINT [suppallocs_ibfk_1] FOREIGN KEY([transid_allocfrom])
REFERENCES [dbo].[supptrans] ([id])
GO
ALTER TABLE [dbo].[suppallocs] CHECK CONSTRAINT [suppallocs_ibfk_1]
GO
/****** Object:  ForeignKey [suppallocs_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppallocs]  WITH CHECK ADD  CONSTRAINT [suppallocs_ibfk_2] FOREIGN KEY([transid_allocto])
REFERENCES [dbo].[supptrans] ([id])
GO
ALTER TABLE [dbo].[suppallocs] CHECK CONSTRAINT [suppallocs_ibfk_2]
GO
/****** Object:  ForeignKey [suppliers_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [suppliers_ibfk_1] FOREIGN KEY([currcode])
REFERENCES [dbo].[Currency] ([currabrev])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [suppliers_ibfk_1]
GO
/****** Object:  ForeignKey [suppliers_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [suppliers_ibfk_2] FOREIGN KEY([paymentterms])
REFERENCES [dbo].[paymentterms] ([termsindicator])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [suppliers_ibfk_2]
GO
/****** Object:  ForeignKey [suppliers_ibfk_3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [suppliers_ibfk_3] FOREIGN KEY([taxgroupid])
REFERENCES [dbo].[taxgroups] ([taxgroupid])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [suppliers_ibfk_3]
GO
/****** Object:  ForeignKey [suppliercontacts_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[suppliercontacts]  WITH CHECK ADD  CONSTRAINT [suppliercontacts_ibfk_1] FOREIGN KEY([supplierid])
REFERENCES [dbo].[Supplier] ([supplierid])
GO
ALTER TABLE [dbo].[suppliercontacts] CHECK CONSTRAINT [suppliercontacts_ibfk_1]
GO
/****** Object:  ForeignKey [supptrans_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans]  WITH CHECK ADD  CONSTRAINT [supptrans_ibfk_1] FOREIGN KEY([typee])
REFERENCES [dbo].[SysType] ([typeid])
GO
ALTER TABLE [dbo].[supptrans] CHECK CONSTRAINT [supptrans_ibfk_1]
GO
/****** Object:  ForeignKey [supptrans_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptrans]  WITH CHECK ADD  CONSTRAINT [supptrans_ibfk_2] FOREIGN KEY([supplierno])
REFERENCES [dbo].[Supplier] ([supplierid])
GO
ALTER TABLE [dbo].[supptrans] CHECK CONSTRAINT [supptrans_ibfk_2]
GO
/****** Object:  ForeignKey [supptranstaxes_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptranstaxes]  WITH CHECK ADD  CONSTRAINT [supptranstaxes_ibfk_1] FOREIGN KEY([taxauthid])
REFERENCES [dbo].[taxauthorities] ([taxid])
GO
ALTER TABLE [dbo].[supptranstaxes] CHECK CONSTRAINT [supptranstaxes_ibfk_1]
GO
/****** Object:  ForeignKey [supptranstaxes_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[supptranstaxes]  WITH CHECK ADD  CONSTRAINT [supptranstaxes_ibfk_2] FOREIGN KEY([supptransid])
REFERENCES [dbo].[supptrans] ([id])
GO
ALTER TABLE [dbo].[supptranstaxes] CHECK CONSTRAINT [supptranstaxes_ibfk_2]
GO
/****** Object:  ForeignKey [taxauthorities_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthorities]  WITH CHECK ADD  CONSTRAINT [taxauthorities_ibfk_1] FOREIGN KEY([taxglcode])
REFERENCES [dbo].[ChartMaster] ([accountcode])
GO
ALTER TABLE [dbo].[taxauthorities] CHECK CONSTRAINT [taxauthorities_ibfk_1]
GO
/****** Object:  ForeignKey [taxauthorities_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthorities]  WITH CHECK ADD  CONSTRAINT [taxauthorities_ibfk_2] FOREIGN KEY([purchtaxglaccount])
REFERENCES [dbo].[ChartMaster] ([accountcode])
GO
ALTER TABLE [dbo].[taxauthorities] CHECK CONSTRAINT [taxauthorities_ibfk_2]
GO
/****** Object:  ForeignKey [taxauthrates_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthrates]  WITH CHECK ADD  CONSTRAINT [taxauthrates_ibfk_1] FOREIGN KEY([taxauthority])
REFERENCES [dbo].[taxauthorities] ([taxid])
GO
ALTER TABLE [dbo].[taxauthrates] CHECK CONSTRAINT [taxauthrates_ibfk_1]
GO
/****** Object:  ForeignKey [taxauthrates_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthrates]  WITH CHECK ADD  CONSTRAINT [taxauthrates_ibfk_2] FOREIGN KEY([taxcatid])
REFERENCES [dbo].[taxcategories] ([taxcatid])
GO
ALTER TABLE [dbo].[taxauthrates] CHECK CONSTRAINT [taxauthrates_ibfk_2]
GO
/****** Object:  ForeignKey [taxauthrates_ibfk_3]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxauthrates]  WITH CHECK ADD  CONSTRAINT [taxauthrates_ibfk_3] FOREIGN KEY([dispatchtaxprovince])
REFERENCES [dbo].[taxprovinces] ([taxprovinceid])
GO
ALTER TABLE [dbo].[taxauthrates] CHECK CONSTRAINT [taxauthrates_ibfk_3]
GO
/****** Object:  ForeignKey [taxgrouptaxes_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxgrouptaxes]  WITH CHECK ADD  CONSTRAINT [taxgrouptaxes_ibfk_1] FOREIGN KEY([taxgroupid])
REFERENCES [dbo].[taxgroups] ([taxgroupid])
GO
ALTER TABLE [dbo].[taxgrouptaxes] CHECK CONSTRAINT [taxgrouptaxes_ibfk_1]
GO
/****** Object:  ForeignKey [taxgrouptaxes_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[taxgrouptaxes]  WITH CHECK ADD  CONSTRAINT [taxgrouptaxes_ibfk_2] FOREIGN KEY([taxauthid])
REFERENCES [dbo].[taxauthorities] ([taxid])
GO
ALTER TABLE [dbo].[taxgrouptaxes] CHECK CONSTRAINT [taxgrouptaxes_ibfk_2]
GO
/****** Object:  ForeignKey [www_users_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [www_users_ibfk_1] FOREIGN KEY([defaultlocation])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [www_users_ibfk_1]
GO
/****** Object:  ForeignKey [woitems_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[woitems]  WITH CHECK ADD  CONSTRAINT [woitems_ibfk_2] FOREIGN KEY([wo])
REFERENCES [dbo].[workorders] ([wo])
GO
ALTER TABLE [dbo].[woitems] CHECK CONSTRAINT [woitems_ibfk_2]
GO
/****** Object:  ForeignKey [worequirements_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[worequirements]  WITH CHECK ADD  CONSTRAINT [worequirements_ibfk_1] FOREIGN KEY([wo])
REFERENCES [dbo].[workorders] ([wo])
GO
ALTER TABLE [dbo].[worequirements] CHECK CONSTRAINT [worequirements_ibfk_1]
GO
/****** Object:  ForeignKey [worequirements_ibfk_2]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[worequirements]  WITH CHECK ADD  CONSTRAINT [worequirements_ibfk_2] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[worequirements] CHECK CONSTRAINT [worequirements_ibfk_2]
GO
/****** Object:  ForeignKey [workcentres_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workcentres]  WITH CHECK ADD  CONSTRAINT [workcentres_ibfk_1] FOREIGN KEY([location])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[workcentres] CHECK CONSTRAINT [workcentres_ibfk_1]
GO
/****** Object:  ForeignKey [worksorders_ibfk_1]    Script Date: 05/07/2016 21:18:04 ******/
ALTER TABLE [dbo].[workorders]  WITH CHECK ADD  CONSTRAINT [worksorders_ibfk_1] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[workorders] CHECK CONSTRAINT [worksorders_ibfk_1]
GO
