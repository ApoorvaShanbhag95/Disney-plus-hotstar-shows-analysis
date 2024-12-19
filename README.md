 Disney-plus-hotstar-shows-analysis

 Overview

 This project involves a comprehensive analysis of Disney movies and TV shows data using SQL. The goal is to extract valuable insights and answer various business questions based on the 
 dataset. The following README provides a detailed account of the project's objectives, business problems, solutions, findings, and conclusions.

Objectives

Find the content added in the last 5 years.
Identify the most common ratings for movies and TV shows.
Find the average duration of Movies based on rating.

Dataset

The data for this project is sourced from the Kaggle

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

Findings and Conclusion
Content Distribution: The dataset contains a diverse range of movies and TV shows with varying ratings and genres.
Common Ratings: Insights into the most common ratings provide an understanding of the content's target audience.
Actor Insights: The number of movie a particular actor appeard.
Content Added: Number of content items added each year on Disney.
This analysis provides a comprehensive view of Disneys's content and can help inform content strategy and decision-making.

