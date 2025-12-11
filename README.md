# 🎬 IMDB Movie Data Analysis (SQL)

### 📌 Project Overview
The goal of this project was to analyze historical movie data to identify key trends in cinema success. Using **SQL**, I investigated the relationship between runtime, genre, and user ratings to determine what factors contribute to a "hit" movie.

### 📂 Project Files
| File Name | Description | Download |
| :--- | :--- | :--- |
| **IMDB_Analysis.sql** | The raw SQL scripts used for data extraction and analysis. | [📥 Download SQL](IMDB_Analysis.sql) |
| **actor_batting_avg_preview.png** | Insight: High-consistency actors. | (See Preview Below) |
| **golden_era_preview.png** | Insight: Best years for cinema. | (See Preview Below) |

### 📊 The Database
**Source:** [IMDB Relational Database (CS50 Version)](https://cdn.cs50.net/2019/fall/psets/7/movies/movies.zip)
*(Note: This analysis uses a relational version of the IMDB dataset, requiring JOINs between tables.)*

**Structure:**
* `movies` (Title, Year, Runtime)
* `people` (Actor/Director Names, Birth Year)
* `stars` / `directors` (Linking Tables)
* `ratings` (User Scores, Vote Counts)

### 🧠 Key Business Insights

#### 1. "Star Power" Analysis (Complex 4-Table Join)
**Question:** Which actors have the highest "Batting Average" (consistent high ratings)?
**SQL Skill:** `INNER JOIN` (4 tables), `AVG()`, `HAVING`.
**Result:** Regional stars like **Dr. Rajkumar** outperform global stars in consistency.
*(See code and result below)*
![Actor Analysis](actor_batting_avg_preview.png)

#### 2. The "Golden Era" of Cinema
**Question:** Which years had the highest average quality (min. 10 movies)?
**SQL Skill:** `GROUP BY`, `HAVING` vs `WHERE`.
**Result:** Older eras (e.g., 1920s-40s) show higher average ratings due to survivorship bias/lower volume.
*(See code and result below)*
![Golden Era Analysis](golden_era_preview.png)

#### 3. Director Efficiency
**Question:** Who are the most prolific directors in history?
**SQL Skill:** `COUNT()`, Sorting `DESC`.
*(See code and result below)*
![Director Analysis](directors_ranking_preview.png)

### ⚙️ How to Run This Project
1.  **Download** the `IMDB_Analysis.sql` file above.
2.  **Download** the [Database Source File](https://cdn.cs50.net/2019/fall/psets/7/movies/movies.zip) and unzip it.
3.  Open **DB Browser for SQLite** (Free Tool).
4.  Click **"Open Database"** and select `movies.db`.
5.  Go to the **"Execute SQL"** tab, paste the script, and click Run (▶).

---
*Created as part of a Data Analytics Portfolio Project.*
