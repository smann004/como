/****** Object:  ForeignKey [FK_Race_Race]    Script Date: 09/01/2013 22:30:54 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Race_Race]') AND parent_object_id = OBJECT_ID(N'[dbo].[Race]'))
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_Race]
GO
/****** Object:  Table [dbo].[Race]    Script Date: 09/01/2013 22:30:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Race]') AND type in (N'U'))
DROP TABLE [dbo].[Race]
GO
/****** Object:  Table [dbo].[Meet]    Script Date: 09/01/2013 22:30:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Meet]') AND type in (N'U'))
DROP TABLE [dbo].[Meet]
GO
/****** Object:  Table [dbo].[Meet]    Script Date: 09/01/2013 22:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Meet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Meet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Date] [smalldatetime] NULL,
	[Location] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FormattedResults] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Meet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Meet] ON
INSERT [dbo].[Meet] ([ID], [Name], [Date], [Location], [FormattedResults]) VALUES (1004, N'Dakota Classic', CAST(0xA22A0000 AS SmallDateTime), N'Eagan', NULL)
SET IDENTITY_INSERT [dbo].[Meet] OFF
/****** Object:  Table [dbo].[Race]    Script Date: 09/01/2013 22:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Race]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Race](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FormattedResults] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MeetId] [int] NULL,
 CONSTRAINT [PK_Race] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Race] ON
INSERT [dbo].[Race] ([Id], [Description], [FormattedResults], [MeetId]) VALUES (3, N'Varsity Girls', N'
PLACE TEAM                POINTS  PLACES OF FINISHERS              AVG. TIME SPREAD

  1 Eagan                    36    1    2    3   11   19   21   22  12:10.7  1:10.4
  2 Lakeville South          58    6   10   12   14   16   18   20  12:30.2  0:39.1
  3 Forest Lake              78    7    8   13   24   26   28   45  12:46.1  1:18.4
  4 Farmington              103    9   15   23   27   29   35   42  13:05.5  1:19.7
  5 New Prague M S          129    5   25   30   33   36   37   44  13:31.6  2:15.0
  6 Apple Valley            130    4   17   32   38   39   40   41  13:34.3  2:32.8
  7 Hastings                201   31   34   43   46   47   48   52  14:48.9  1:45.2
  8 Simley                  257   49   50   51   53   54   55       16:05.1  0:29.5

Incomplete Teams: St Paul Como Park
<a href="#INDIVIDUALS">Individuals</a>
 PLACE          FINISHER          TIME


1. Eagan
    1  Anna Van Wyk, 11           11:44.3  
    2  Kelli Praska, 11           11:53.4  
    3  Raissa Hansen, 12          11:54.0  
   11  Olivia Mitchell, 10        12:26.8  
   19  Kirsten Barrett, 12        12:54.6  
   21  Danielle Marshall, 10      13:08.4  
   22  Clare Junker, 11           13:09.4  
Total Time = 1:00:53.1     Total Places = 36

2. Lakeville South
    6  Kaytlyn Larson, 11         12:10.6  
   10  Annie Brekken, 11          12:23.0  
   12  Erin Kilbride, 12          12:29.3  
   14  Jenny Machaj, 12           12:38.4  
   16  Bailey Brewster, 8         12:49.7  
   18  Mariah Gallagher, 12       12:51.7  
   20  Patty Jo English, 8        12:55.3  
Total Time = 1:02:31.0     Total Places = 58

3. Forest Lake
    7  Emma Benner, 10            12:10.9  
    8  Caroline Schoerson, 8      12:17.2  
   13  Ali Bartlett, 9            12:34.6  
   24  Maria Valentin, 9          13:18.4  
   26  Miranda Overland, 9        13:29.3  
   28  Amanda Fortili, 9          13:36.7  
   45  Isabel Leninger, 9         15:24.4  
Total Time = 1:03:50.4     Total Places = 78

4. Farmington
    9  Lauren Peterson, 7         12:18.8  
   15  Maricia Pacheco, 12        12:46.4  
   23  Sofia Chadwick, 11         13:11.0  
   27  Maricella Pacheco, 10      13:32.8  
   29  Sami Hyytinen, 9           13:38.4  
   35  Anna Palodichuk, 7         14:16.0  
   42  Sarah Cummings, 11         14:43.7  
Total Time = 1:05:27.4     Total Places = 103

5. New Prague M S
    5  Maria Berg, 10             12:08.7  
   25  Ashley Altschul, 12        13:22.2  
   30  Ella Grote, 12             13:46.1  
   33  Bridget Ellanson, 11       13:57.0  
   36  Abby Milinkovich, 10       14:23.6  
   37  Korey Wilson, 12           14:30.0  
   44  Rachel Wormer, 11          15:13.0  
Total Time = 1:07:37.6     Total Places = 129

6. Apple Valley
    4  Olivia Anger, 10           11:59.8  
   17  Molly Moynihan, 8          12:51.3  
   32  Terese Howard, 8           13:56.1  
   38  Jojo Acker-Hintgen, 10     14:31.4  
   39  Sarah Crippes, 9           14:32.6  
   40  Reagan Roelofs, 8          14:38.0  
   41  Hallie Hughes, 7           14:40.2  
Total Time = 1:07:51.2     Total Places = 130

7. Hastings
   31  Michaela Mills, 12         13:50.6  
   34  Quinn Meyers, 10           14:00.8  
   43  Ciara Christensen, 10      15:05.2  
   46  Abberly Smith, 9           15:31.8  
   47  Makalia England, 12        15:35.8  
   48  Kailee Harrington, 11      15:42.6  
   52  Rachel Peterson, 11        16:02.4  
Total Time = 1:14:04.2     Total Places = 201

8. Simley
   49  Mady David, 12             15:51.1  
   50  Claire Anderson, 8         16:01.6  
   51  Anna Royce, 9              16:02.0  
   53  Alexa Vandermeer, 10       16:10.2  
   54  Maya Bernstein, 10         16:20.6  
   55  Alexandra Wurzer, 9        18:27.3  
Total Time = 1:20:25.5     Total Places = 257
        TEAM
 PLACE SCORE          FINISHER          TIME        TEAM         

<a href="#0">Top</a><a name="INDIVIDUALS"></a><p>
    1     1  Anna Van Wyk, 11           11:44.3    Eagan                
    2     2  Kelli Praska, 11           11:53.4    Eagan                
    3     3  Raissa Hansen, 12          11:54.0    Eagan                
    4     4  Olivia Anger, 10           11:59.8    Apple Valley         
    5     5  Maria Berg, 10             12:08.7    New Prague M S       
    6     6  Kaytlyn Larson, 11         12:10.6    Lakeville South      
    7     7  Emma Benner, 10            12:10.9    Forest Lake          
    8     8  Caroline Schoerson, 8      12:17.2    Forest Lake          
    9     9  Lauren Peterson, 7         12:18.8    Farmington           
   10    10  Annie Brekken, 11          12:23.0    Lakeville South      
   11    11  Olivia Mitchell, 10        12:26.8    Eagan                
   12    12  Erin Kilbride, 12          12:29.3    Lakeville South      
   13    13  Ali Bartlett, 9            12:34.6    Forest Lake          
   14    14  Jenny Machaj, 12           12:38.4    Lakeville South      
   15        Mary Miles, 10             12:39.2    St Paul Como Park    
   16    15  Maricia Pacheco, 12        12:46.4    Farmington           
   17    16  Bailey Brewster, 8         12:49.7    Lakeville South      
   18    17  Molly Moynihan, 8          12:51.3    Apple Valley         
   19    18  Mariah Gallagher, 12       12:51.7    Lakeville South      
   20    19  Kirsten Barrett, 12        12:54.6    Eagan                
   21    20  Patty Jo English, 8        12:55.3    Lakeville South      
   22    21  Danielle Marshall, 10      13:08.4    Eagan                
   23    22  Clare Junker, 11           13:09.4    Eagan                
   24    23  Sofia Chadwick, 11         13:11.0    Farmington           
   25    24  Maria Valentin, 9          13:18.4    Forest Lake          
   26    25  Ashley Altschul, 12        13:22.2    New Prague M S       
   27    26  Miranda Overland, 9        13:29.3    Forest Lake          
   28    27  Maricella Pacheco, 10      13:32.8    Farmington           
   29    28  Amanda Fortili, 9          13:36.7    Forest Lake          
   30    29  Sami Hyytinen, 9           13:38.4    Farmington           
   31    30  Ella Grote, 12             13:46.1    New Prague M S       
   32    31  Michaela Mills, 12         13:50.6    Hastings             
   33    32  Terese Howard, 8           13:56.1    Apple Valley         
   34    33  Bridget Ellanson, 11       13:57.0    New Prague M S       
   35    34  Quinn Meyers, 10           14:00.8    Hastings             
   36    35  Anna Palodichuk, 7         14:16.0    Farmington           
   37    36  Abby Milinkovich, 10       14:23.6    New Prague M S       
   38    37  Korey Wilson, 12           14:30.0    New Prague M S       
   39    38  Jojo Acker-Hintgen, 10     14:31.4    Apple Valley         
   40    39  Sarah Crippes, 9           14:32.6    Apple Valley         
   41    40  Reagan Roelofs, 8          14:38.0    Apple Valley         
   42    41  Hallie Hughes, 7           14:40.2    Apple Valley         
   43    42  Sarah Cummings, 11         14:43.7    Farmington           
   44    43  Ciara Christensen, 10      15:05.2    Hastings             
   45    44  Rachel Wormer, 11          15:13.0    New Prague M S       
   46    45  Isabel Leninger, 9         15:24.4    Forest Lake          
   47    46  Abberly Smith, 9           15:31.8    Hastings             
   48    47  Makalia England, 12        15:35.8    Hastings             
   49    48  Kailee Harrington, 11      15:42.6    Hastings             
   50    49  Mady David, 12             15:51.1    Simley               
   51    50  Claire Anderson, 8         16:01.6    Simley               
   52    51  Anna Royce, 9              16:02.0    Simley               
   53    52  Rachel Peterson, 11        16:02.4    Hastings             
   54    53  Alexa Vandermeer, 10       16:10.2    Simley               
   55    54  Maya Bernstein, 10         16:20.6    Simley               
   56    55  Alexandra Wurzer, 9        18:27.3    Simley               

', 1004)
INSERT [dbo].[Race] ([Id], [Description], [FormattedResults], [MeetId]) VALUES (4, N'Varsity Boys', N'
PLACE TEAM                POINTS  PLACES OF FINISHERS              AVG. TIME SPREAD

  1 Apple Valley             59    6    7    9   18   19   26   36  10:57.9  0:45.6
 2* Lakeville South          77    4    5   10   27   31   33   37  11:03.9  1:22.6
 3* Farmington               77    3   12   13   24   25   47   51  11:07.7  1:11.5
  4 Richfield                93    1   20   21   22   29   39   40  11:13.1  1:41.3
  5 Eagan                   113   15   17   23   28   30   32       11:29.3  0:35.1
  6 New Prague              114   11   14   16   35   38   41   42  11:27.4  1:07.5
  7 Hastings                172    2   34   43   45   48   49   53  11:46.2  2:14.8
  8 St Paul Como Park       211    8   44   50   52   57   58   62  12:12.8  2:15.7
  9 Simley                  270   46   54   55   56   59   60   61  12:50.1  1:04.4

Incomplete Teams: 
<a href="#INDIVIDUALS">Individuals</a>
 PLACE          FINISHER          TIME


1. Apple Valley
    6  Grant Udelhofen, 11        10:36.9  
    7  Liam Tyler, 12             10:40.3  
    9  Luke Tansey, 12            10:49.9  
   18  Steven Stotts, 11          11:19.9  
   19  Nathan Williams, 10        11:22.5  
   26  Brian Bettes, 10           11:40.5  
   36  Max Bauer, 11              12:00.5  
Total Time = 54:49.5     Total Places = 59

2*. Lakeville South
    4  Wali Ibrahim, 12           10:25.7  
    5  Noah Hanson, 11            10:32.3  
   10  Mitchell Miller, 12        10:51.5  
   27  Michael Kennedy, 9         11:41.7  
   31  Cody Teich, 12             11:48.3  
   33  James Schiroo, 12          11:54.0  
   37  Trevor Huebner, 12         12:01.8  
Total Time = 55:19.5     Total Places = 77

3*. Farmington
    3  Justin Hyytinen, 11        10:25.3  
   12  Alex Hart, 10              11:00.4  
   13  Devon Webb, 10             11:03.6  
   24  Hunter Sevenich, 12        11:32.1  
   25  Sean Dougherty, 12         11:36.8  
   47  Matthew Anderson, 11       12:19.0  
   51  Ryan Newton, 10            12:32.0  
Total Time = 55:38.2     Total Places = 77

4. Richfield
    1  Obsa Ali, 12               10:04.1  
   20  Nathan Libra, 12           11:23.9  
   21  Jake Beaudet, 12           11:24.4  
   22  Tim Killian, 12            11:27.4  
   29  Spencer Bergen, 11         11:45.3  
   39  Liam Hoppe, 9              12:02.6  
   40  Ben Nygaard, 12            12:03.8  
Total Time = 56:05.1     Total Places = 93

5. Eagan
   15  Dan Podpeskar, 12          11:11.0  
   17  Tommy Jaakola, 11          11:17.8  
   23  Bailey LaChance, 11        11:29.0  
   28  Matt Hofmann, 11           11:42.7  
   30  George McGivern, 10        11:46.0  
   32  Jacob Rupp, 11             11:50.1  
Total Time = 57:26.5     Total Places = 113

6. New Prague
   11  Wyatt Midtvedt, 10         10:54.8  
   14  Dakota Greenwalt, 12       11:08.6  
   16  Josh Dvorak, 11            11:12.6  
   35  Cole Minnick, 12           11:58.8  
   38  Justin Gregor, 10          12:02.2  
   41  Kevin Dudley, 12           12:04.8  
   42  Steven Kvam, 10            12:06.2  
Total Time = 57:17.0     Total Places = 114

7. Hastings
    2  Zack Benning, 12           10:06.9  
   34  Will Briercliffe, 10       11:56.3  
   43  Kyle Gudmunson, 10         12:12.0  
   45  Nate Holm, 10              12:14.0  
   48  Finley Meyers, 11          12:21.7  
   49  Mike Tapella, 11           12:27.7  
   53  Isaiah Gardell, 12         12:35.7  
Total Time = 58:50.9     Total Places = 172

8. St Paul Como Park
    8  Marshal Landrum, 12        10:44.3  
   44  Matt Klein, 11             12:13.5  
   50  Stefan Hankerson, 11       12:30.9  
   52  Luke Larson, 12            12:35.0  
   57  Jacob Heiberger, 11        12:59.9  
   58  Tuomas Sivula, 10          13:13.1  
   62  Charlie Swanson, 12        13:24.4  
Total Time = 1:01:03.6     Total Places = 211

9. Simley
   46  Ben Scheffley, 11          12:15.6  
   54  Anthony Pilman, 12         12:36.3  
   55  Kyle Nordstrom, 11         12:58.9  
   56  Noah Myers, 11             12:59.6  
   59  Ebenezer Ojo, 9            13:19.9  
   60  Blake Scheffknecht, 11     13:21.5  
   61  Jakob Myers, 8             13:21.9  
Total Time = 1:04:10.3     Total Places = 270
        TEAM
 PLACE SCORE          FINISHER          TIME        TEAM         

<a href="#0">Top</a><a name="INDIVIDUALS"></a><p>
    1     1  Obsa Ali, 12               10:04.1    Richfield            
    2     2  Zack Benning, 12           10:06.9    Hastings             
    3     3  Justin Hyytinen, 11        10:25.3    Farmington           
    4     4  Wali Ibrahim, 12           10:25.7    Lakeville South      
    5     5  Noah Hanson, 11            10:32.3    Lakeville South      
    6     6  Grant Udelhofen, 11        10:36.9    Apple Valley         
    7     7  Liam Tyler, 12             10:40.3    Apple Valley         
    8     8  Marshal Landrum, 12        10:44.3    St Paul Como Park    
    9     9  Luke Tansey, 12            10:49.9    Apple Valley         
   10    10  Mitchell Miller, 12        10:51.5    Lakeville South      
   11    11  Wyatt Midtvedt, 10         10:54.8    New Prague           
   12    12  Alex Hart, 10              11:00.4    Farmington           
   13    13  Devon Webb, 10             11:03.6    Farmington           
   14    14  Dakota Greenwalt, 12       11:08.6    New Prague           
   15    15  Dan Podpeskar, 12          11:11.0    Eagan                
   16    16  Josh Dvorak, 11            11:12.6    New Prague           
   17    17  Tommy Jaakola, 11          11:17.8    Eagan                
   18    18  Steven Stotts, 11          11:19.9    Apple Valley         
   19    19  Nathan Williams, 10        11:22.5    Apple Valley         
   20    20  Nathan Libra, 12           11:23.9    Richfield            
   21    21  Jake Beaudet, 12           11:24.4    Richfield            
   22    22  Tim Killian, 12            11:27.4    Richfield            
   23    23  Bailey LaChance, 11        11:29.0    Eagan                
   24    24  Hunter Sevenich, 12        11:32.1    Farmington           
   25    25  Sean Dougherty, 12         11:36.8    Farmington           
   26    26  Brian Bettes, 10           11:40.5    Apple Valley         
   27    27  Michael Kennedy, 9         11:41.7    Lakeville South      
   28    28  Matt Hofmann, 11           11:42.7    Eagan                
   29    29  Spencer Bergen, 11         11:45.3    Richfield            
   30    30  George McGivern, 10        11:46.0    Eagan                
   31    31  Cody Teich, 12             11:48.3    Lakeville South      
   32    32  Jacob Rupp, 11             11:50.1    Eagan                
   33    33  James Schiroo, 12          11:54.0    Lakeville South      
   34    34  Will Briercliffe, 10       11:56.3    Hastings             
   35    35  Cole Minnick, 12           11:58.8    New Prague           
   36    36  Max Bauer, 11              12:00.5    Apple Valley         
   37    37  Trevor Huebner, 12         12:01.8    Lakeville South      
   38    38  Justin Gregor, 10          12:02.2    New Prague           
   39    39  Liam Hoppe, 9              12:02.6    Richfield            
   40    40  Ben Nygaard, 12            12:03.8    Richfield            
   41    41  Kevin Dudley, 12           12:04.8    New Prague           
   42    42  Steven Kvam, 10            12:06.2    New Prague           
   43    43  Kyle Gudmunson, 10         12:12.0    Hastings             
   44    44  Matt Klein, 11             12:13.5    St Paul Como Park    
   45    45  Nate Holm, 10              12:14.0    Hastings             
   46    46  Ben Scheffley, 11          12:15.6    Simley               
   47    47  Matthew Anderson, 11       12:19.0    Farmington           
   48    48  Finley Meyers, 11          12:21.7    Hastings             
   49    49  Mike Tapella, 11           12:27.7    Hastings             
   50    50  Stefan Hankerson, 11       12:30.9    St Paul Como Park    
   51    51  Ryan Newton, 10            12:32.0    Farmington           
   52    52  Luke Larson, 12            12:35.0    St Paul Como Park    
   53    53  Isaiah Gardell, 12         12:35.7    Hastings             
   54    54  Anthony Pilman, 12         12:36.3    Simley               
   55    55  Kyle Nordstrom, 11         12:58.9    Simley               
   56    56  Noah Myers, 11             12:59.6    Simley               
   57    57  Jacob Heiberger, 11        12:59.9    St Paul Como Park    
   58    58  Tuomas Sivula, 10          13:13.1    St Paul Como Park    
   59    59  Ebenezer Ojo, 9            13:19.9    Simley               
   60    60  Blake Scheffknecht, 11     13:21.5    Simley               
   61    61  Jakob Myers, 8             13:21.9    Simley               
   62    62  Charlie Swanson, 12        13:24.4    St Paul Como Park    

', 1004)
INSERT [dbo].[Race] ([Id], [Description], [FormattedResults], [MeetId]) VALUES (5, N'JV Boys', N'
PLACE TEAM                POINTS  PLACES OF FINISHERS              AVG. TIME SPREAD

  1 Apple Valley             18    1    2    4    5    6    7    8  11:34.4  0:35.0
  2 Eagan                    73    9   10   15   18   21   22   23  12:06.3  0:29.4
  3 Lakeville South          74    3   12   14   20   25   26   27  12:05.1  0:56.8
  4 Richfield                98   13   16   17   24   28   33   49  12:16.7  0:36.1
  5 Farmington              171   30   31   34   37   39   43   44  12:53.4  0:17.2
  6 New Prague              181   29   35   36   40   41   47   48  12:58.4  0:27.1
  7 Hastings                185   19   32   38   46   50   51   52  13:04.1  1:24.9
  8 Nova ClassicalAcademy   224   11   42   56   57   58   59   62  14:43.6  4:21.5
  9 St Paul Como Park       267   45   53   54   55   60   61       14:45.3  3:20.9

Incomplete Teams: Simley
<a href="#INDIVIDUALS">Individuals</a>
 PLACE          FINISHER          TIME


1. Apple Valley
    1  Tyler Roberts, 12          11:10.2  
    2  Mitchell Hughes, 11        11:28.0  
    4  Andrew Carter, 11          11:43.7  
    5  Robert Tobroxen, 12        11:44.7  
    6  Jacob Thompson, 11         11:45.2  
    7  Thomas Crippes, 9          11:47.6  
    8  Jack Crippes, 12           11:49.8  
Total Time = 57:51.8     Total Places = 18

2. Eagan
    9  Ian McShane, 11            11:52.0  
   10  Joe Hofmann, 9             11:56.5  
   15  John Herbrand, 11          12:04.6  
   18  Joe Williams, 11           12:16.9  
   21  Seth Jackson, 9            12:21.3  
   22  Matt Wieczorek, 12         12:24.2  
   23  Collin Anderson, 10        12:26.2  
Total Time = 1:00:31.3     Total Places = 73

3. Lakeville South
    3  Matt Schiroo, 12           11:32.5  
   12  Taylor Vold, 12            12:01.3  
   14  Josh Larson, 12            12:03.2  
   20  Jacob Berg, 11             12:19.2  
   25  Josh Willard, 9            12:29.2  
   26  Paul Naumann, 11           12:30.3  
   27  Stuart MacDonald, 10       12:31.7  
Total Time = 1:00:25.4     Total Places = 74

4. Richfield
   13  Derek James Mattson, 11    12:02.8  
   16  Joel Blanchard, 11         12:06.3  
   17  Mark Blanchard, 11         12:06.7  
   24  Evan Matson, 10            12:28.9  
   28  William Bednar, 11         12:38.8  
   33  Robbie Noeske, 10          12:50.1  
   49  Ian Stemper, 11            13:41.1  
Total Time = 1:01:23.5     Total Places = 98

5. Farmington
   30  Josh Grimm, 10             12:45.5  
   31  Derek Cole, 10             12:46.3  
   34  Trent Kortenbusch, 12      12:53.0  
   37  Richard Halverson, 11      12:59.6  
   39  Michael Sasso, 11          13:02.6  
   43  Peyton Woller, 11          13:15.7  
   44  Chris Erickson, 9          13:17.8  
Total Time = 1:04:27.0     Total Places = 171

6. New Prague
   29  Jack Siegle, 9             12:43.6  
   35  Greg Vogel, 12             12:54.3  
   36  Asher Floyd, 12            12:55.9  
   40  Justin Cameron, 9          13:07.3  
   41  Jakob Friedges, 12         13:10.7  
   47  Ben Giles, 9               13:30.7  
   48  Evan Cashman, 10           13:39.4  
Total Time = 1:04:51.8     Total Places = 181

7. Hastings
   19  Brendan McCabe, 12         12:18.0  
   32  Austin Reuter, 12          12:49.6  
   38  Brandon Haraldson, 9       13:01.8  
   46  David Syverson, 12         13:28.0  
   50  Christian Flanders, 11     13:42.8  
   51  Seth Greengo, 10           13:46.4  
   52  Victor Lindgren, 9         13:52.4  
Total Time = 1:05:20.2     Total Places = 185

8. Nova ClassicalAcademy
   11  Blaine Brownell, 9         12:00.9  
   42  Chris Norton, 8            13:15.4  
   56  D J. Corrigan, 10          15:43.9  
   57  Cael LaPlante, 9           16:15.1  
   58  Elan Nelson, 11            16:22.4  
   59  Christian Hoefs, 8         16:22.7  
   62  Thor Hyvarinen, 10         17:05.0  
Total Time = 1:13:37.7     Total Places = 224

9. St Paul Como Park
   45  Alex Konkol, 10            13:26.2  
   53  Phillip Moulton, 10        14:09.0  
   54  Leo Wieffering, 9          14:23.5  
   55  Emmet O''Connell, 11        15:00.7  
   60  Luke Berndt, 11            16:47.0  
   61  Ben Williams, 8            16:47.2  
Total Time = 1:13:46.4     Total Places = 267
        TEAM
 PLACE SCORE          FINISHER          TIME        TEAM         

<a href="#0">Top</a><a name="INDIVIDUALS"></a><p>
    1     1  Tyler Roberts, 12          11:10.2    Apple Valley         
    2     2  Mitchell Hughes, 11        11:28.0    Apple Valley         
    3     3  Matt Schiroo, 12           11:32.5    Lakeville South      
    4     4  Andrew Carter, 11          11:43.7    Apple Valley         
    5     5  Robert Tobroxen, 12        11:44.7    Apple Valley         
    6     6  Jacob Thompson, 11         11:45.2    Apple Valley         
    7     7  Thomas Crippes, 9          11:47.6    Apple Valley         
    8     8  Jack Crippes, 12           11:49.8    Apple Valley         
    9        Trey Jones, 12             11:50.3    Apple Valley         
   10     9  Ian McShane, 11            11:52.0    Eagan                
   11        Liam Gonzo, 12             11:52.9    Apple Valley         
   12        Carter Nelson, 12          11:55.3    Apple Valley         
   13    10  Joe Hofmann, 9             11:56.5    Eagan                
   14    11  Blaine Brownell, 9         12:00.9    Nova ClassicalAcademy 
   15    12  Taylor Vold, 12            12:01.3    Lakeville South      
   16    13  Derek James Mattson, 11    12:02.8    Richfield            
   17    14  Josh Larson, 12            12:03.2    Lakeville South      
   18    15  John Herbrand, 11          12:04.6    Eagan                
   19    16  Joel Blanchard, 11         12:06.3    Richfield            
   20    17  Mark Blanchard, 11         12:06.7    Richfield            
   21    18  Joe Williams, 11           12:16.9    Eagan                
   22    19  Brendan McCabe, 12         12:18.0    Hastings             
   23    20  Jacob Berg, 11             12:19.2    Lakeville South      
   24        Jacob Bierman, 11          12:20.5    Apple Valley         
   25    21  Seth Jackson, 9            12:21.3    Eagan                
   26        Abdul Mohamed, 11          12:23.4    Apple Valley         
   27    22  Matt Wieczorek, 12         12:24.2    Eagan                
   28    23  Collin Anderson, 10        12:26.2    Eagan                
   29        Tom Baddeley, 11           12:26.5    Apple Valley         
   30        Steven Will, 11            12:26.9    Apple Valley         
   31    24  Evan Matson, 10            12:28.9    Richfield            
   32    25  Josh Willard, 9            12:29.2    Lakeville South      
   33    26  Paul Naumann, 11           12:30.3    Lakeville South      
   34    27  Stuart MacDonald, 10       12:31.7    Lakeville South      
   35        Matt Thompson, 9           12:32.4    Eagan                
   36        Ryan Steger, 9             12:36.2    Eagan                
   37        Mark Paulauskas, 11        12:37.6    Lakeville South      
   38        Brady Mavetz, 12           12:38.3    Eagan                
   39    28  William Bednar, 11         12:38.8    Richfield            
   40        Andrew Wehrman, 12         12:40.7    Eagan                
   41        Kris Egan, 11              12:41.1    Apple Valley         
   42        Clark Ashland, 11          12:41.6    Eagan                
   43        Noah Grant, 11             12:41.8    Apple Valley         
   44    29  Jack Siegle, 9             12:43.6    New Prague           
   45        Jacob Tipka, 12            12:44.2    Lakeville South      
   46        Aramet Sena, 11            12:44.7    Eagan                
   47    30  Josh Grimm, 10             12:45.5    Farmington           
   48    31  Derek Cole, 10             12:46.3    Farmington           
   49    32  Austin Reuter, 12          12:49.6    Hastings             
   50    33  Robbie Noeske, 10          12:50.1    Richfield            
   51        David Immen, 11            12:51.3    Eagan                
   52        Dan Reynolds, 10           12:52.3    Eagan                
   53    34  Trent Kortenbusch, 12      12:53.0    Farmington           
   54        Dylan Duerre, 11           12:53.8    Eagan                
   55    35  Greg Vogel, 12             12:54.3    New Prague           
   56        Joe Crepeau, 9             12:55.1    Apple Valley         
   57        Zach Kuznia, 10            12:55.5    Lakeville South      
   58    36  Asher Floyd, 12            12:55.9    New Prague           
   59        Collin Peters, 9           12:56.4    Eagan                
   60        Andrew Inman, 11           12:56.9    Apple Valley         
   61        Nick Johnson, 10           12:57.8    Eagan                
   62        Sam Grunklee, 10           12:58.4    Eagan                
   63        Patrick Acton, 9           12:58.7    Eagan                
   64    37  Richard Halverson, 11      12:59.6    Farmington           
   65        Tyler Thomas, 10           13:00.2    Simley               
   66    38  Brandon Haraldson, 9       13:01.8    Hastings             
   67    39  Michael Sasso, 11          13:02.6    Farmington           
   68        Tanner Keith, 9            13:03.9    Lakeville South      
   69        Ben Mugge, 10              13:04.9    Eagan                
   70    40  Justin Cameron, 9          13:07.3    New Prague           
   71        Peter Doebler, 12          13:08.1    Eagan                
   72    41  Jakob Friedges, 12         13:10.7    New Prague           
   73        Parker Roberts, 9          13:11.4    Lakeville South      
   74        Jacob Vecellio, 10         13:14.6    Eagan                
   75    42  Chris Norton, 8            13:15.4    Nova ClassicalAcademy 
   76    43  Peyton Woller, 11          13:15.7    Farmington           
   77        Josh Clarey, 11            13:16.7    Lakeville South      
   78    44  Chris Erickson, 9          13:17.8    Farmington           
   79        Michael Boerboon, 9        13:18.7    Apple Valley         
   80        Yassin Abasher, 10         13:19.8    Apple Valley         
   81        Will Dyke, 12              13:22.4    Eagan                
   82        Evan Ford, 9               13:23.9    Lakeville South      
   83        Tyler Gallagher, 8         13:24.5    Lakeville South      
   84        Josh Benda, 11             13:25.5    Apple Valley         
   85        Riley Hale, 10             13:25.7    Eagan                
   86    45  Alex Konkol, 10            13:26.2    St Paul Como Park    
   87        Thomas Jones, 10           13:27.1    Apple Valley         
   88    46  David Syverson, 12         13:28.0    Hastings             
   89    47  Ben Giles, 9               13:30.7    New Prague           
   90        Kyle Steinberg, 10         13:31.9    Apple Valley         
   91        Nathan Wentworth, 9        13:34.5    Lakeville South      
   92        Gunnar Johnson, 11         13:36.2    Lakeville South      
   93        Joseph Cardinal, 10        13:38.6    Farmington           
   94        James Thompson, 10         13:39.0    Farmington           
   95    48  Evan Cashman, 10           13:39.4    New Prague           
   96        James Royce, 8             13:40.0    Simley               
   97    49  Ian Stemper, 11            13:41.1    Richfield            
   98        Kameron Wilson, 11         13:41.7    Eagan                
   99        Derek Stalcar, 12          13:42.2    Richfield            
  100        Kaden Kruse, 10            13:42.5    Eagan                
  101    50  Christian Flanders, 11     13:42.8    Hastings             
  102        Kevin McGonagle, 9         13:45.5    Eagan                
  103    51  Seth Greengo, 10           13:46.4    Hastings             
  104        Alexander Steger, 8        13:47.8    Richfield            
  105        Campbell Mallak, 9         13:48.2    Lakeville South      
  106        Zack Denoma, 12            13:48.7    Eagan                
  107        Jacob Elafandi, 11         13:49.6    Eagan                
  108        Sam Schmidt, 9             13:50.9    Eagan                
  109        Riley Kelly, 9             13:51.7    Farmington           
  110    52  Victor Lindgren, 9         13:52.4    Hastings             
  111        Jake Owen, 9               13:52.8    Apple Valley         
  112        Conner Amundsen, 12        13:53.2    New Prague           
  113        Michael McGill, 11         13:54.1    Eagan                
  114        Josh Bentley, 12           13:55.8    Apple Valley         
  115        Justin Biren, 9            13:58.9    New Prague           
  116        Jake Spitzack, 12          14:04.7    Hastings             
  117        Marvin David, 8            14:04.9    Lakeville South      
  118        Jay Burditt, 10            14:06.4    Farmington           
  119        Jackson Schneider, 10      14:06.6    Farmington           
  120        Kevin Feil, 10             14:07.3    Eagan                
  121    53  Phillip Moulton, 10        14:09.0    St Paul Como Park    
  122        Tyler Kraft, 9             14:10.4    Lakeville South      
  123        Zach Adamson, 9            14:13.5    Farmington           
  124        Brandon Sieh, 12           14:14.0    Hastings             
  125        Zach Teiken, 11            14:14.8    Farmington           
  126        Kenneth Kaijage, 10        14:15.8    Apple Valley         
  127        Zane Douglas, 9            14:20.2    Eagan                
  128        Austin Long, 12            14:20.4    Farmington           
  129        Kevin Treb, 12             14:22.5    Apple Valley         
  130        Ryan Baer, 9               14:22.8    Apple Valley         
  131    54  Leo Wieffering, 9          14:23.5    St Paul Como Park    
  132        Derek Duerre, 9            14:24.5    Eagan                
  133        Matt Mallinger, 12         14:28.8    Eagan                
  134        Ethan Kimmes, 9            14:30.1    Hastings             
  135        Joshua Boyd, 12            14:31.2    Hastings             
  136        Brannon Kanten, 9          14:33.9    New Prague           
  137        Dan Eggert, 11             14:35.1    Hastings             
  138        John Dudley, 10            14:37.0    New Prague           
  139        Jamie Berg, 9              14:37.8    Lakeville South      
  140        Tyler Dankers, 9           14:38.2    Richfield            
  141        Jared Rhinehart, 10        14:38.8    Apple Valley         
  142        Nick Finken, 9             14:39.2    Apple Valley         
  143        Myles Heetland, 12         14:39.6    Farmington           
  144        Nick Bloome, 11            14:40.5    Eagan                
  145        Tate Gahnz, 11             14:40.8    Hastings             
  146        Ben Barry, 9               14:41.4    Lakeville South      
  147        Tommy Anderson, 10         14:44.6    Eagan                
  148        Joey Hamilton, 12          14:47.5    Richfield            
  149        Nicholaus Sampson, 9       14:50.4    Hastings             
  150        Matt O''Malley, 9           14:52.8    Farmington           
  151        Mike Cybart, 10            14:54.6    Apple Valley         
  152        Bo Hessburg, 11            14:55.0    Apple Valley         
  153        Harrison Moser, 9          14:57.4    Lakeville South      
  154        Ben Wick, 9                14:58.2    Lakeville South      
  155        Adam Unke, 9               14:58.4    Lakeville South      
  156    55  Emmet O''Connell, 11        15:00.7    St Paul Como Park    
  157        Cole Mueller, 10           15:09.6    Eagan                
  158        Joe Grelson, 10            15:17.9    Apple Valley         
  159        Evan Owen, 9               15:23.4    Apple Valley         
  160        Nick Bohn, 8               15:24.5    Apple Valley         
  161        Ryan Peterson, 9           15:25.8    Apple Valley         
  162        Elijah Riley, 10           15:36.6    Hastings             
  163    56  D J. Corrigan, 10          15:43.9    Nova ClassicalAcademy 
  164        Alex Gullickson, 9         15:44.6    New Prague           
  165        Vinh Klinzing, 10          15:46.0    New Prague           
  166        Lucas Toutge, 9            15:55.0    Farmington           
  167        Jon Crepeau, 11            15:59.4    Apple Valley         
  168        Zach Conner, 9             15:59.7    Lakeville South      
  169    57  Cael LaPlante, 9           16:15.1    Nova ClassicalAcademy 
  170        McCoy Urbia, 9             16:18.4    Farmington           
  171    58  Elan Nelson, 11            16:22.4    Nova ClassicalAcademy 
  172    59  Christian Hoefs, 8         16:22.7    Nova ClassicalAcademy 
  173        Blake Woolard, 11          16:24.0    Hastings             
  174        James Van Ert, 9           16:26.8    Lakeville South      
  175        Dylan Pitzen, 11           16:29.4    Farmington           
  176        Erik Peterson, 9           16:40.2    Eagan                
  177    60  Luke Berndt, 11            16:47.0    St Paul Como Park    
  178    61  Ben Williams, 8            16:47.2    St Paul Como Park    
  179        Dallas Krech, 10           17:01.3    Eagan                
  180        Quinn Facile, 10           17:02.2    New Prague           
  181    62  Thor Hyvarinen, 10         17:05.0    Nova ClassicalAcademy 
  182        Calvin Hill, 9             17:06.1    Apple Valley         
  183        Joel Douglas, 9            17:11.6    Eagan                
  184        Christian Ruas, 10         17:36.2    Nova ClassicalAcademy 
  185        Adolphus Smith, 12         18:01.0    Apple Valley         
  186        Mitchell Saice, 9          18:04.9    Apple Valley         
  187        Andrew Westgard, 9         19:11.6    Eagan                
  188        Sean Corrigan, 8           19:34.5    Nova ClassicalAcademy 
  189        Danny Ashland, 10          20:07.3    Eagan                
  190        Logan Juell, 8             20:11.9    Richfield            

', 1004)
INSERT [dbo].[Race] ([Id], [Description], [FormattedResults], [MeetId]) VALUES (6, N'JV Girls', N'
PLACE TEAM                POINTS  PLACES OF FINISHERS              AVG. TIME SPREAD

  1 Lakeville South          23    1    4    5    6    7   10   12  13:10.0  0:35.2
  2 Eagan                    33    2    3    8    9   11   13   15  13:20.0  0:48.6
  3 Forest Lake              92   14   17   18   20   23   25   27  14:27.3  1:06.0
  4 New Prague M S          130   21   22   26   28   33   34   41  15:25.8  1:29.8
  5 Farmington              133   16   19   24   35   39            15:39.0  3:18.4
  6 Apple Valley            174   29   30   37   38   40   42   44  16:44.9  1:56.4
  7 Nova ClassicalAcademy   187   31   32   36   43   45            17:25.2  3:27.6

Incomplete Teams: Simley, Richfield, Hastings, St Paul Como Park
<a href="#INDIVIDUALS">Individuals</a>
 PLACE          FINISHER          TIME


1. Lakeville South
    1  Julia Durham, 10           12:49.7  
    4  Hannah Moland, 10          13:11.0  
    5  Megan Lubow, 12            13:11.5  
    6  Aileen Diaz, 12            13:12.8  
    7  Erin Meyers, 11            13:24.8  
   10  Mariah Uphoff, 10          13:35.0  
   12  Kristyn Haar, 10           13:41.4  
Total Time = 1:05:49.8     Total Places = 23

2. Eagan
    2  Karina Johnson, 11         12:52.5  
    3  Katie Koprowski, 10        13:08.6  
    8  Heidi Owens, 12            13:25.1  
    9  Hayley Cleary, 11          13:32.7  
   11  Jordan Anderson, 10        13:41.1  
   13  Delaney Leiter, 10         13:43.7  
   15  Aryn Embretson, 11         13:59.4  
Total Time = 1:06:40.0     Total Places = 33

3. Forest Lake
   14  Madie Clepper, 11          13:54.6  
   17  Mikayla Niederkorn, 8      14:13.5  
   18  Abi Asperheim, 9           14:16.6  
   20  Reagan Duffy, 7            14:51.2  
   23  Jenna Parent, 8            15:00.5  
   25  Kallie Liston, 10          15:23.8  
   27  Hailee Leipzig, 7          15:29.4  
Total Time = 1:12:16.4     Total Places = 92

4. New Prague M S
   21  Jen Theis, 10              14:52.1  
   22  Elisa Johnson, 11          14:56.0  
   26  Mikayla Giles, 12          15:28.8  
   28  Mary Russell, 10           15:29.8  
   33  Katie Hummel, 11           16:21.9  
   34  Joselin Wacker, 9          16:34.2  
   41  Sydney Haines, 10          17:39.4  
Total Time = 1:17:08.6     Total Places = 130

5. Farmington
   16  Alexis Johnson, 11         14:11.0  
   19  Emily Schaffer, 7          14:19.8  
   24  Abby Bollig, 8             15:16.5  
   35  Breana Sutter, 10          16:58.3  
   39  Hannah Morgan, 10          17:29.4  
Total Time = 1:18:15.0     Total Places = 133

6. Apple Valley
   29  Hanna Frekot, 11           15:37.5  
   30  Sadie Sheldon, 12          15:41.0  
   37  Nicole Suter, 11           17:25.6  
   38  Annika Reinertson, 10      17:26.2  
   40  Anna Milbauer, 10          17:33.9  
   42  Natalie Ollila, 9          17:50.0  
   44  Micaela Garcia, 9          18:50.7  
Total Time = 1:23:44.2     Total Places = 174

7. Nova ClassicalAcademy
   31  Anna Salzman, 9            16:03.7  
   32  Amelia Hornseth, 9         16:10.7  
   36  Coretta Beiter, 8          17:12.2  
   43  Pamela Lebert, 9           18:08.1  
   45  Rachel Walker, 8           19:31.3  
Total Time = 1:27:06.0     Total Places = 187
        TEAM
 PLACE SCORE          FINISHER          TIME        TEAM         

<a href="#0">Top</a><a name="INDIVIDUALS"></a><p>
    1     1  Julia Durham, 10           12:49.7    Lakeville South      
    2     2  Karina Johnson, 11         12:52.5    Eagan                
    3     3  Katie Koprowski, 10        13:08.6    Eagan                
    4     4  Hannah Moland, 10          13:11.0    Lakeville South      
    5     5  Megan Lubow, 12            13:11.5    Lakeville South      
    6     6  Aileen Diaz, 12            13:12.8    Lakeville South      
    7     7  Erin Meyers, 11            13:24.8    Lakeville South      
    8     8  Heidi Owens, 12            13:25.1    Eagan                
    9     9  Hayley Cleary, 11          13:32.7    Eagan                
   10    10  Mariah Uphoff, 10          13:35.0    Lakeville South      
   11    11  Jordan Anderson, 10        13:41.1    Eagan                
   12    12  Kristyn Haar, 10           13:41.4    Lakeville South      
   13    13  Delaney Leiter, 10         13:43.7    Eagan                
   14    14  Madie Clepper, 11          13:54.6    Forest Lake          
   15    15  Aryn Embretson, 11         13:59.4    Eagan                
   16        Haleigh Simon, 11          14:09.0    Eagan                
   17    16  Alexis Johnson, 11         14:11.0    Farmington           
   18    17  Mikayla Niederkorn, 8      14:13.5    Forest Lake          
   19        Caraline Slattery, 11      14:15.2    Lakeville South      
   20        Josie Saufferer, 8         14:15.6    Lakeville South      
   21    18  Abi Asperheim, 9           14:16.6    Forest Lake          
   22    19  Emily Schaffer, 7          14:19.8    Farmington           
   23        Kristen Fitzpatrick, 12    14:21.1    Eagan                
   24        Lauren Geary, 7            14:21.7    Lakeville South      
   25        Emily Everson, 11          14:22.0    Lakeville South      
   26        Katelyn Vrieze, 10         14:26.3    Eagan                
   27        Hannah Oeschle, 10         14:27.2    Lakeville South      
   28        Reilly Hostager, 12        14:30.8    Eagan                
   29        Emmy Byers, 9              14:32.3    Lakeville South      
   30        Alexia Wilson, 11          14:36.9    Eagan                
   31        Helen Matsoff, 11          14:49.8    Eagan                
   32        Morgan Nafziger, 11        14:50.2    Eagan                
   33    20  Reagan Duffy, 7            14:51.2    Forest Lake          
   34    21  Jen Theis, 10              14:52.1    New Prague M S       
   35        Claire Christensen, 10     14:52.3    Lakeville South      
   36    22  Elisa Johnson, 11          14:56.0    New Prague M S       
   37    23  Jenna Parent, 8            15:00.5    Forest Lake          
   38        Madeline Elsenheimer, 10   15:08.5    Eagan                
   39    24  Abby Bollig, 8             15:16.5    Farmington           
   40        Alexa Koch, 9              15:17.2    Eagan                
   41        Amy Jazwinski, 12          15:18.6    Lakeville South      
   42        Grace Hanson, 9            15:19.0    Lakeville South      
   43        Nicole Mattson, 8          15:19.3    Richfield            
   44        Tessa Woehrle, 10          15:21.3    Lakeville South      
   45    25  Kallie Liston, 10          15:23.8    Forest Lake          
   46        Taylor Sorenson, 9         15:26.8    Lakeville South      
   47    26  Mikayla Giles, 12          15:28.8    New Prague M S       
   48    27  Hailee Leipzig, 7          15:29.4    Forest Lake          
   49    28  Mary Russell, 10           15:29.8    New Prague M S       
   50        Molly Mead, 11             15:30.1    Forest Lake          
   51        Shannah Howland, 9         15:33.0    Eagan                
   52        Allison Moore, 11          15:34.2    Lakeville South      
   53        Erica Melroe, 12           15:36.4    Eagan                
   54        Emilee Gelineau, 10        15:36.8    Lakeville South      
   55        Clara Richard, 11          15:37.1    Eagan                
   56    29  Hanna Frekot, 11           15:37.5    Apple Valley         
   57        Laura Bailey, 8            15:37.8    Forest Lake          
   58        Kaylee Atrium, 10          15:39.9    Forest Lake          
   59    30  Sadie Sheldon, 12          15:41.0    Apple Valley         
   60        Ali Kruchten, 12           15:41.8    Eagan                
   61        Megan Gamme, 9             15:44.1    Eagan                
   62        Kacy Rodamaker, 11         15:50.2    Lakeville South      
   63        Marci Ricklick, 10         15:52.0    Lakeville South      
   64        McKenna Nelson, 7          15:52.6    Forest Lake          
   65        Gracelyn Skoog, 10         15:57.4    Eagan                
   66        Emma Nollenberger, 9       15:59.7    Richfield            
   67    31  Anna Salzman, 9            16:03.7    Nova ClassicalAcademy 
   68        Vanessa Wiegel, 8          16:07.5    Forest Lake          
   69        Ali Hofstad, 10            16:08.4    Eagan                
   70    32  Amelia Hornseth, 9         16:10.7    Nova ClassicalAcademy 
   71        Kathryn James, 12          16:11.7    Eagan                
   72        Sydney Kappenman, 9        16:12.9    Lakeville South      
   73        Alyssa Haglind, 10         16:13.2    Eagan                
   74        Erin Runquist, 12          16:14.6    Eagan                
   75    33  Katie Hummel, 11           16:21.9    New Prague M S       
   76        Jolynn Nyquist, 9          16:26.0    Forest Lake          
   77        McKayla Miller, 10         16:26.4    Eagan                
   78        Lexis Wedell, 10           16:29.0    Forest Lake          
   79        Maddison Halley, 10        16:29.2    Forest Lake          
   80        Sarah Rutzick, 9           16:33.6    Eagan                
   81    34  Joselin Wacker, 9          16:34.2    New Prague M S       
   82        Kate Mahonen, 8            16:40.7    Forest Lake          
   83        Angela Hugunin, 9          16:43.2    Eagan                
   84        Elle Bartlett, 9           16:47.4    Eagan                
   85        Alyssa Graven, 8           16:53.3    Forest Lake          
   86        Emily Zibrowski, 12        16:55.8    Eagan                
   87    35  Breana Sutter, 10          16:58.3    Farmington           
   88    36  Coretta Beiter, 8          17:12.2    Nova ClassicalAcademy 
   89        Cecilia Carlson, 8         17:17.5    Hastings             
   90        Elsa Manning, 9            17:22.4    Forest Lake          
   91    37  Nicole Suter, 11           17:25.6    Apple Valley         
   92        Jenna Hunt, 10             17:25.9    Forest Lake          
   93    38  Annika Reinertson, 10      17:26.2    Apple Valley         
   94    39  Hannah Morgan, 10          17:29.4    Farmington           
   95    40  Anna Milbauer, 10          17:33.9    Apple Valley         
   96        Hannah Roskamp, 11         17:35.8    Lakeville South      
   97    41  Sydney Haines, 10          17:39.4    New Prague M S       
   98        Brianna Tenace, 11         17:44.1    Eagan                
   99        Delaney Sereika, 9         17:49.4    Eagan                
  100    42  Natalie Ollila, 9          17:50.0    Apple Valley         
  101        Hannah Pitzl, 11           17:50.5    Lakeville South      
  102        Maya Buss, 11              17:57.0    New Prague M S       
  103        Judith Dominguez, 10       17:57.4    Richfield            
  104        Emma Matson, 8             18:06.6    Richfield            
  105        Kailee Young, 11           18:07.3    Lakeville South      
  106    43  Pamela Lebert, 9           18:08.1    Nova ClassicalAcademy 
  107        Alexsandra DaCosta, 9      18:15.3    Lakeville South      
  108        April Boyer, 9             18:20.3    New Prague M S       
  109        Alexis Friesenhanhn, 12    18:24.6    Lakeville South      
  110        Madeline Post, 10          18:31.6    St Paul Como Park    
  111    44  Micaela Garcia, 9          18:50.7    Apple Valley         
  112        Beth Dahlquist, 10         18:53.6    Eagan                
  113        Caitlin Johnson, 9         19:02.2    Lakeville South      
  114        Claire Marshall, 12        19:09.4    St Paul Como Park    
  115        Breana Bamlet, 10          19:09.8    Hastings             
  116        Maya Youngman, 8           19:10.2    Forest Lake          
  117        Emilia Galchutt, 9         19:13.4    Apple Valley         
  118        Laura Fleischhacker, 12    19:15.4    Forest Lake          
  119    45  Rachel Walker, 8           19:31.3    Nova ClassicalAcademy 
  120        Hannah Giese, 7            19:34.6    Simley               
  121        Amber Stenning, 10         19:53.7    Forest Lake          
  122        Irene Manning, 9           19:53.9    Forest Lake          
  123        Courtney Estenson, 11      19:57.9    Eagan                
  124        Ella Laurent, 9            20:06.1    Eagan                
  125        Maddy Langer, 10           22:10.0    St Paul Como Park    
  126        Lydia Nielsen, 10          22:21.1    St Paul Como Park    
  127        Madeline Martens, 10       22:30.2    Apple Valley         
  128        Serena Rolland, 10         26:03.6    Apple Valley         

', 1004)
SET IDENTITY_INSERT [dbo].[Race] OFF
/****** Object:  ForeignKey [FK_Race_Race]    Script Date: 09/01/2013 22:30:54 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Race_Race]') AND parent_object_id = OBJECT_ID(N'[dbo].[Race]'))
ALTER TABLE [dbo].[Race]  WITH CHECK ADD  CONSTRAINT [FK_Race_Race] FOREIGN KEY([MeetId])
REFERENCES [dbo].[Meet] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Race_Race]') AND parent_object_id = OBJECT_ID(N'[dbo].[Race]'))
ALTER TABLE [dbo].[Race] CHECK CONSTRAINT [FK_Race_Race]
GO
