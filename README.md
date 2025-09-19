# 🎬 Disney+ & Hotstar Shows Analysis

A data analytics project using **SQL** to explore and derive insights from a dataset of Disney+ and Hotstar shows & movies. The analysis helps understand content trends, popular ratings, runtime distributions, and growth in content offerings over time.

---

## 📋 Objectives

- Identify shows/movies **added in the last 5 years** to spot recent content expansion.  
- Determine the **most common ratings** among movies vs TV shows (e.g. PG, PG-13, etc.).  
- Compute **average runtime** for movies grouped by their rating.  
- Analyze **content distribution**: how many movies vs shows; genre breakdown; rating breakdown.  
- Extract **actor-wise insights** (which actors appear most frequently).  
- Track **content addition trends per year** to see how the platform’s library has grown.

---

## 🧰 Dataset & Schema

- **Source**: Kaggle dataset *Disney+ Shows* :contentReference[oaicite:8]{index=8}  
- **Main Table: `disney_plus_shows`** with columns such as:

  | Column | Description |
  |---|---|
  | `imdb_id` | Unique ID from IMDb |
  | `title` | Name of show/movie |
  | `type` | Either *Movie* or *TV Show* |
  | `rated` | Rating (e.g. PG, PG-13, etc.) |
  | `year` | Year of release |
  | `added_at` | Date when added to Disney+/Hotstar library |
  | `runtime` | Duration (minutes) |
  | `genre` | Genre(s) |
  | `actors` | Lead actors |
  | `imdb_rating` | IMDb rating score |
  | ... | etc. |

---

## 🔍 Tools & Approach

- SQL queries written to answer specific business-questions.  
- Data filtering & aggregation (e.g. group by rating, genre, type).  
- Time-based comparisons (e.g. content added per year).  
- Use of computed statistics (averages, counts, distributions).

---

## 📈 Key Findings & Insights

1. **Content Trends**  
   - Number of new titles added per year shows whether growth is accelerating.  
   - Proportion of movies vs TV shows across recent years.

2. **Ratings & Audience**  
   - Which ratings are most common (e.g. PG-13, PG, etc.).  
   - Whether certain ratings have longer average runtimes.

3. **Genre & Runtime**  
   - Which genres dominate.  
   - Typical runtime per genre or per rating.

4. **Actor Appearances**  
   - Actors who appear most frequently in the catalog.

5. **Content Age vs Added Date**  
   - Some titles may be older but recently added.

---

## 🚀 Business Value

- Helps platform content strategy: what kinds of shows / movies are being added, which ratings / genres are favored.  
- Inform decisions on licensing or producing content in underrepresented genres or ratings.  
- Runtime insights can help with scheduling, user expectations.  
- Understanding actor frequency can be used in marketing or production decisions.

---

## 📂 Repository Structure



