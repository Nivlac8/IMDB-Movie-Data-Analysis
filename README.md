# 🎬 IMDB Movie Data Analysis (SQL)

### 📌 Project Overview
The goal of this project was to analyze historical movie data to identify key trends in cinema success. Using **SQL**, I investigated the relationship between runtime, genre, and user ratings to determine what factors contribute to a "hit" movie.

### 📂 Project Files
<table style="width: 100%; border-collapse: collapse;">
  <thead>
    <tr style="border-bottom: 2px solid #ddd;">
      <th style="padding: 10px; text-align: left;">File Name</th>
      <th style="padding: 10px; text-align: left;">Description</th>
      <th style="padding: 10px; text-align: center;">Action</th>
    </tr>
  </thead>
  <tbody>
    <tr style="border-bottom: 1px solid #eee;">
      <td style="padding: 10px;"><strong>IMDB_Analysis.sql</strong></td>
      <td style="padding: 10px;">The raw SQL scripts used for data extraction and analysis.</td>
      <td style="padding: 10px; text-align: center;">
        <a href="IMDB_Analysis.sql" style="text-decoration: none;">📥 Download SQL</a>
      </td>
    </tr>
    <tr style="border-bottom: 1px solid #eee;">
      <td style="padding: 10px;"><strong>actor_batting_avg_preview.png</strong></td>
      <td style="padding: 10px;">Insight: High-consistency actors.</td>
      <td style="padding: 10px; text-align: center;">
        <a href="actor_batting_avg_preview.png" target="_blank" title="View Image" style="color: #333;">
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
            <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
            <circle cx="12" cy="12" r="3"></circle>
          </svg>
        </a>
      </td>
    </tr>
    <tr style="border-bottom: 1px solid #eee;">
      <td style="padding: 10px;"><strong>golden_era_preview.png</strong></td>
      <td style="padding: 10px;">Insight: Best years for cinema.</td>
      <td style="padding: 10px; text-align: center;">
        <a href="golden_era_preview.png" target="_blank" title="View Image" style="color: #333;">
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
            <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
            <circle cx="12" cy="12" r="3"></circle>
          </svg>
        </a>
      </td>
    </tr>
  </tbody>
</table>

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
**SQL Skill:** `GROUP BY`,
