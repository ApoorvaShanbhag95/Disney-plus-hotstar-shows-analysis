 Disney-plus-hotstar-shows-analysis

 Overview

 This project involves a comprehensive analysis of Disney movies and TV shows data using SQL. The goal is to extract valuable insights and answer various business questions based on the 
 dataset. The following README provides a detailed account of the project's objectives, business problems, solutions, findings, and conclusions.

Objectives

Analyze the distribution of content types (movies vs TV shows).
Identify the most common ratings for movies and TV shows.
List and analyze content based on release years, countries, and durations.
Explore and categorize content based on specific criteria and keywords.

Dataset

The data for this project is sourced from the Kaggle dataset:
Dataset link: https://www.kaggle.com/datasets/unanimad/disney-plus-shows

Schema

CREATE TABLE [dbo].[disney_plus_shows](
	[imdb_id] [varchar](max) NULL,
	[title] [varchar](max) NULL,
	[plot] [varchar](max) NULL,
	[type] [varchar](max) NULL,
	[rated] [varchar](max) NULL,
	[year] [varchar](max) NULL,
	[released_at] [varchar](max) NULL,
	[added_at] [varchar](max) NULL,
	[runtime] [varchar](max) NULL,
	[genre] [varchar](max) NULL,
	[director] [varchar](max) NULL,
	[writer] [varchar](max) NULL,
	[actors] [varchar](max) NULL,
	[language] [varchar](max) NULL,
	[country] [varchar](max) NULL,
	[awards] [varchar](max) NULL,
	[metascore] [varchar](max) NULL,
	[imdb_rating] [varchar](max) NULL,
	[imdb_votes] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO




select * from [dbo].[disney_plus_shows]

