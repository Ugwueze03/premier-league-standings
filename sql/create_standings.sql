--Premier League Standings: 2023/2024, 2024/2025, 2025/2026]
CREATE TABLE Premier_league_standings AS 
--Using CTE to create dataset for home_games--
WITH home_games AS (
SELECT season, away_goal AS goal_conceded, home_goal AS goal_scored, home_team AS team,
 -- Using CASE WHEN to get home_points--
CASE WHEN home_goal > away_goal THEN 3
WHEN home_goal < away_goal THEN 0
ELSE 1 END AS points,
 --Using CASE WHEN to get home_wins--
CASE WHEN home_goal > away_goal THEN 1
when home_goal < away_goal THEN 0
ELSE 0 END AS win,
  --Using CASE WHEN to get home_loss--
CASE WHEN home_goal > away_goal THEN 0
when home_goal < away_goal THEN 1
ELSE 0 END AS loss,
 --Using CASE WHEN to get home_draw--
CASE WHEN home_goal > away_goal THEN 0
when home_goal < away_goal THEN 0
ELSE 1 END AS draw
FROM matches_statistics),
 --Using CTE to create dataset for away games--
away_games AS(
SELECT season, home_goal AS goal_conceded, away_goal AS goal_scored,  away_team AS team,
  --Using CASE WHEN to get away_points--
CASE WHEN home_goal > away_goal THEN 0 
WHEN home_goal < away_goal THEN 3
ELSE 1 END AS points,
  --Using CASE WHEN to get away_win--
CASE WHEN home_goal > away_goal THEN 0 
WHEN home_goal < away_goal THEN 1
ELSE 0 END AS win,
  --Using CASE WHEN to get away_loss--
CASE WHEN home_goal > away_goal THEN 1 
WHEN home_goal < away_goal THEN 0
ELSE 0 END AS loss,
  --Using CASE WHEN to get away_draw--
CASE WHEN home_goal > away_goal THEN 0 
WHEN home_goal < away_goal THEN 0
ELSE 1 END AS draw
from matches_statistics)
SELECT season, team, 
SUM(win) AS W, 
SUM(draw) AS D,
SUM(loss) AS L, 
SUM(points) AS points,
SUM(goal_scored) AS GF, 
SUM(goal_conceded) AS GA, 
SUM(goal_scored - goal_conceded) AS GD
FROM(
SELECT *
FROM home_games
UNION ALL
SELECT *
FROM away_games)
group BY season, team
ORDER BY season ASC, points DESC;
