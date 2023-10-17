
/****** Object:  Table [dbo].[Actores]    Script Date: 9/8/2022 5:29:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actores](
	[IdActor] [int] IDENTITY(1,1) NOT NULL,
	[IdSerie] [int] NOT NULL,
	[Nombre] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Series]    Script Date: 9/8/2022 5:29:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Series](
	[IdSerie] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[AñoInicio] [int] NULL,
	[Sinopsis] [text] NULL,
	[ImagenSerie] [varchar](150) NULL,
 CONSTRAINT [PK_Series] PRIMARY KEY CLUSTERED 
(
	[IdSerie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temporadas]    Script Date: 9/8/2022 5:29:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temporadas](
	[IdTemprorada] [int] IDENTITY(1,1) NOT NULL,
	[IdSerie] [int] NULL,
	[NumeroTemporada] [int] NULL,
	[TituloTemporada] [varchar](100) NULL,
 CONSTRAINT [PK_Temproadas] PRIMARY KEY CLUSTERED 
(
	[IdTemprorada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Actores] ON 

INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (1, 4, N'Cillian Murphy')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (2, 4, N'Paul Anderson')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (3, 4, N'Tom Hardy')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (4, 4, N'Helen McCrory')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (5, 3, N'Sadie Sink')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (6, 3, N'Caleb McLaughin')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (7, 3, N'Fin Wofthard')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (8, 3, N'Millie Bobby Brown')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (9, 2, N'Jennifer Aniston')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (10, 2, N'Lisa Kudrow')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (11, 2, N'David Schwimmer')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (12, 2, N'Courteney Cox')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (13, 2, N'Matthew Perry')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (14, 2, N'Matt Leblanc')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (15, 1, N'Hugh Laurie')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (16, 1, N'Robert Sean Leonard')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (17, 1, N'Lisa Edelstein')
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (18, 1, N'Omar Epps')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (5, N'Amybeth McNulty')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (5, N'Lucas Jade Zumann')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (5, N'Dalila Bela')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (5, N'R. H. Thomson')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (5, N'Geraldine James')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (6, N'Lauren Graham')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (6, N'Alexis Bledel')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (6, N'Scott Patterson')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (6, N'Melissa McCarthy')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (7, N'Katherine McNamara')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (7, N'Alberto Rosende')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (7, N'Dominic Sherwood')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (7, N'Matthew Daddario')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (7, N'Harry Shum, Jr.')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (7, N'Emeraude Toubia')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (8, N'Asa Butterfield')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (8, N'Emma Mackey')
INSERT [dbo].[Actores] ([IdSerie], [Nombre]) VALUES (8, N'Ncuti Gatwa')



SET IDENTITY_INSERT [dbo].[Actores] OFF
GO
SET IDENTITY_INSERT [dbo].[Series] ON 

INSERT [dbo].[Series] ([IdSerie], [Nombre], [AñoInicio], [Sinopsis], [ImagenSerie]) VALUES (1, N'House', 2004, N'La serie gira alrededor del Dr. Gregory House, un misántropo genio de la medicina, ególatra y de fuerte y marcada personalidad que dirige el departamento de diagnóstico médico del ficticio Hospital Universitario Princeton-Plainsboro de Nueva Jersey', N'https://www.vistazo.com/binrepository/768x487/0c28/768d432/none/12727/YTMK/el-primer-episodio-de-house_VI205981_MG8572114.jpg')
INSERT [dbo].[Series] ([IdSerie], [Nombre], [AñoInicio], [Sinopsis], [ImagenSerie]) VALUES (2, N'Friends', 1994, N'Tuvo un total de 10 temporadas, con 236 episodios. El argumento general gira en torno a un grupo de 6 amigos, 3 chicos y 3 chicas, que conviven en Nueva York y van desarrollando sus vidas profesionales y amorosas.', N'https://i.blogs.es/4c73b4/friends/1366_2000.jpg')
INSERT [dbo].[Series] ([IdSerie], [Nombre], [AñoInicio], [Sinopsis], [ImagenSerie]) VALUES (3, N'Stranger Things', 2016, N'Cuando un niño desaparece, sus amigos, la familia y la policía se ven envueltos en una serie de eventos misteriosos al tratar de encontrarlo. Su ausencia coincide con el avistamiento de una criatura terrorífica y la aparición de una extraña niña.', N'https://www.icmedianet.org/wp/ndog/wp-content/uploads/2016/12/netflix-stranger-things-poster.jpg')
INSERT [dbo].[Series] ([IdSerie], [Nombre], [AñoInicio], [Sinopsis], [ImagenSerie]) VALUES (4, N'Peaky Blinders', 2013, N'Gran Bretaña vive la posguerra. Los soldados regresan, se acuñan nuevas revoluciones y nacen bandas criminales en una nación agitada. En Birmingham, una pandilla de gánsters callejeros asciende hasta convertirse en los reyes de la clase obrera.', N'https://img.asmedia.epimg.net/resizer/xRux5-s3tJAymSotAc2wsqQA504=/644x362/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/MIBE3RUHAFGNTNGXFFB3PSJVD4.jpg')
INSERT [dbo].[Series] ([Nombre], [AñoInicio], [Sinopsis], [ImagenSerie]) VALUES (N'Anne With an E', 2017, N'En la década de 1890, una niña huérfana de 13 años es enviada por error a vivir con hermanos mayores a la Isla del Príncipe Eduardo.', N'https://media.glamour.mx/photos/619060722d97bd4c522a4a82/master/w_1600,c_limit/241214.jpg')
INSERT [dbo].[Series] ([Nombre], [AñoInicio], [Sinopsis], [ImagenSerie]) VALUES (N'Gilmore Girls', 2017, N'Ubicado en un pueblo de cuentos de Connecticut, poblado por una combinación ecléctica de soñadores, artistas y personajes comunes, este drama multi generacional sobre los centros de familia y amistad alrededor de Lorelai Gilmore y su hija, Rory. Lorelai es propietaria del hospedaje, Dragonfly Inn con su mejor amigo y chef Sookie y lidia en las comidas semanales con sus padres excéntricos y pudientes, Richard y Emily Gilmore (quienes siempre tienen que decir algo sobre la vida de su hija). Luego de la secundaria, Rory va a la Universidad de Yale pero frecuentemente regresa a visitar a su madre a Stars Hollow.', N'https://i.blogs.es/80cb16/chicas-gilmore-espinof-1/1366_2000.jpg')
INSERT [dbo].[Series] ([Nombre], [AñoInicio], [Sinopsis], [ImagenSerie]) VALUES (N'Shadowhunters', 2019, N'Clary Fray se entera de que viene de una larga línea de híbridos humano-ángeles que cazan demonios. El misterioso Jace y sus compañeros de caza Isabelle y Alec, ayudan a Clary a internarse en ese nuevo mundo oscuro.', N'https://m.media-amazon.com/images/M/MV5BZjA0OTliMWEtMTIyZS00MzNhLWE1ZjQtM2M2YTEzZDA2M2YwXkEyXkFqcGdeQXRyYW5zY29kZS13b3JrZmxvdw@@._V1_.jpg')
INSERT [dbo].[Series] ([Nombre], [AñoInicio], [Sinopsis], [ImagenSerie]) VALUES (N'Sex Education', 2019, N'Otis siempre tiene una respuesta respecto al sexo. Otis se une a su amiga Maeve para abrir una clínica de terapia sexual en la escuela.', N'https://www.eluniversal.com.co/binrepository/1200x676/0c0/0d0/none/13704/CEKC/sex-education-4ta-temporada_8055130_20230705103741.png')



SET IDENTITY_INSERT [dbo].[Series] OFF
GO
SET IDENTITY_INSERT [dbo].[Temporadas] ON 

INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (1, 1, 1, N'Bla bla bla Temproada 1')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (2, 1, 2, N'Bla bla bla Temproada 2')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (3, 1, 3, N'Bla bla bla Temproada 3')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (4, 1, 4, N'Bla bla bla Temproada 4')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (5, 1, 5, N'Bla bla bla Temproada 5')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (6, 1, 6, N'Bla bla bla Temproada 6')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (7, 1, 7, N'Bla bla bla Temproada 7')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (8, 1, 8, N'Bla bla bla Temproada 8')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (9, 2, 1, N'Bla bla bla Temproada 1')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (10, 2, 2, N'Bla bla bla Temproada 2')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (11, 2, 3, N'Bla bla bla Temproada 3')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (12, 2, 4, N'Bla bla bla Temproada 4')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (13, 2, 5, N'Bla bla bla Temproada 5')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (14, 2, 6, N'Bla bla bla Temproada 6')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (15, 2, 7, N'Bla bla bla Temproada 7')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (16, 2, 8, N'Bla bla bla Temproada 8')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (17, 2, 9, N'Bla bla bla Temproada 9')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (18, 2, 10, N'Bla bla bla Temproada 10')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (19, 3, 1, N'Bla bla bla Temproada 1')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (20, 3, 2, N'Bla bla bla Temproada 2')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (21, 3, 3, N'Bla bla bla Temproada 3')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (22, 3, 4, N'Bla bla bla Temproada 4')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (23, 4, 1, N'Bla bla bla Temproada 1')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (24, 4, 2, N'Bla bla bla Temproada 2')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (25, 4, 3, N'Bla bla bla Temproada 3')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (26, 4, 4, N'Bla bla bla Temproada 4')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (27, 4, 5, N'Bla bla bla Temproada 5')
INSERT [dbo].[Temporadas] ([IdTemprorada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (28, 4, 6, N'Bla bla bla Temproada 6')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (6, 1, N'Bla bla bla Temproada 1')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (6, 2, N'Bla bla bla Temproada 2')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (6, 3, N'Bla bla bla Temproada 3')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (6, 4, N'Bla bla bla Temproada 4')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (6, 5, N'Bla bla bla Temproada 5')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (6, 6, N'Bla bla bla Temproada 6')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (6, 7, N'Bla bla bla Temproada 7')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (7, 1, N'Bla bla bla Temproada 1')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (7, 2, N'Bla bla bla Temproada 2')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (7, 3, N'Bla bla bla Temproada 3')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (7, 4, N'Bla bla bla Temproada 4')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (8, 1, N'Bla bla bla Temproada 1')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (8, 2, N'Bla bla bla Temproada 2')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (8, 3, N'Bla bla bla Temproada 3')
INSERT [dbo].[Temporadas] ([IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (8, 4, N'Bla bla bla Temproada 4')


SET IDENTITY_INSERT [dbo].[Temporadas] OFF
GO
USE [master]
GO
ALTER DATABASE [BDSeries] SET  READ_WRITE 
GO
