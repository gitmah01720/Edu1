-- 17CS30022
-- Kousshik Raj

-- painter_cd	painter_name	painting_id	painting_name	generation_cd	generation_name	generation_start_date	generation_end_date
-- 1	Picasso	1	MOnkey	1	Renaissance	1400-01-01	1599-01-01
-- 1	Picasso	5	The Starry Night	5	Post-Impressionism	1955-01-01	NULL
-- 2	Van Gogh	2	Mona Lisa	2	Baroque	1500-01-01	1799-01-01
-- 2	Van Gogh	3	The Scream	3	Impressionism	1889-01-01	1955-01-01
-- 6	Da Vinci	6	The Birth of Venus	5	Post-Impressionism	1955-01-01	NULL
-- 6	Da Vinci	7	The Scream	4	Cubism	1889-01-01	1955-01-01


INSERT INTO CS30022AXCZ
VALUES
    (1, "MOnkey", "Oil", "1955-01-01");
INSERT INTO CS30022AXCZ
VALUES
    (2, "Mona Lisa", "Oil", "1955-01-01");
INSERT INTO CS30022AXCZ
VALUES
    (3, "The Scream", "Oil", "1955-01-01");
INSERT INTO CS30022AXCZ
VALUES
    (4, "The Last Supper", "Oil", "1955-01-01");
INSERT INTO CS30022AXCZ
VALUES
    (5, "The Starry Night", "Oil", "1955-01-01");
INSERT INTO CS30022AXCZ
VALUES
    (6, "The Birth of Venus", "Oil", "1955-01-01");
INSERT INTO CS30022AXCZ
VALUES
    (7, "The Scream", "Oil", "1955-01-01");
INSERT INTO CS30022RTZ
VALUES
    (1, "Picasso", "1881-10-05", NULL);
INSERT INTO CS30022RTZ
VALUES
    (2, "Van Gogh", "1853-10-29", "1890-10-29");
INSERT INTO CS30022RTZ
VALUES
    (3, "Rembrandt", "1797-12-06", "1837-12-06");
INSERT INTO CS30022RTZ
VALUES
    (4, "Da Vinci", "1452-04-15", "1519-04-15");
INSERT INTO CS30022RTZ
VALUES
    (5, "Monet", "1840-01-01", "1926-01-01");
INSERT INTO CS30022RTZ
VALUES
    (6, "Da Vinci", "1452-04-15", "1519-04-15");
INSERT INTO CS30022ICE3
VALUES
    (1, "Renaissance", "1400-01-01", "1599-01-01");
INSERT INTO CS30022ICE3
VALUES
    (2, "Baroque", "1500-01-01", "1799-01-01");
INSERT INTO CS30022ICE3
VALUES
    (3, "Impressionism", "1889-01-01", "1955-01-01");
INSERT INTO CS30022ICE3
VALUES
    (4, "Cubism", "1889-01-01", "1955-01-01");
INSERT INTO CS30022ICE3
VALUES
    (5, "Post-Impressionism", "1955-01-01", NULL);
INSERT INTO CS30022HLO
VALUES
    (1, 1, 1);
INSERT INTO CS30022HLO
VALUES
    (1, 2, 1);
INSERT INTO CS30022HLO
VALUES
    (1, 3, 1);
INSERT INTO CS30022HLO
VALUES
    (2, 1, 1);
INSERT INTO CS30022HLO
VALUES
    (2, 2, 1);
INSERT INTO CS30022HLO
VALUES
    (2, 3, 1);
INSERT INTO CS30022HLO
VALUES
    (3, 1, 1);
INSERT INTO CS30022HLO
VALUES
    (3, 2, 1);
INSERT INTO CS30022HLO
VALUES
    (3, 3, 1);
INSERT INTO CS30022WPP
VALUES
    (1, 1);
INSERT INTO CS30022WPP
VALUES
    (2, 2);
INSERT INTO CS30022WPP
VALUES
    (3, 2);
INSERT INTO CS30022WPP
VALUES
    (4, 4);
INSERT INTO CS30022WPP
VALUES
    (5, 1);
INSERT INTO CS30022WPP
VALUES
    (6, 6);
INSERT INTO CS30022WPP
VALUES
    (7, 6);
INSERT INTO CS30022ACB
VALUES
    (1, 1, 1);
INSERT INTO CS30022ACB
VALUES
    (1, 2, 2);
INSERT INTO CS30022ACB
VALUES
    (1, 3, 3);
INSERT INTO CS30022ACB
VALUES
    (2, 1, 4);
INSERT INTO CS30022ACB
VALUES
    (2, 2, 5);
INSERT INTO CS30022ACB
VALUES
    (2, 3, 6);
INSERT INTO CS30022ACB
VALUES
    (3, 1, 7);
INSERT INTO CS30022MNO
VALUES
    (1, 1);
INSERT INTO CS30022MNO
VALUES
    (2, 2);
INSERT INTO CS30022MNO
VALUES
    (3, 3);
INSERT INTO CS30022MNO
VALUES
    (4, 4);
INSERT INTO CS30022MNO
VALUES
    (5, 5);
INSERT INTO CS30022MNO
VALUES
    (6, 5);
INSERT INTO CS30022MNO
VALUES
    (7, 4);

SELECT CS30022RTZ.painter_cd, CS30022RTZ.painter_name, CS30022AXCZ.painting_id, CS30022AXCZ.painting_name,
    CS30022ICE3.generation_cd, CS30022ICE3.generation_name, CS30022ICE3.generation_start_date,
    CS30022ICE3.generation_end_date
FROM CS30022RTZ
    INNER JOIN CS30022WPP ON CS30022RTZ.painter_cd = CS30022WPP.painter_cd
    INNER JOIN CS30022AXCZ ON CS30022WPP.painting_id = CS30022AXCZ.painting_id
    INNER JOIN CS30022MNO ON CS30022AXCZ.painting_id = CS30022MNO.painting_id
    INNER JOIN CS30022ICE3 ON CS30022MNO.generation_cd = CS30022ICE3.generation_cd
WHERE (SELECT COUNT(*)
FROM CS30022WPP
WHERE painter_cd = CS30022RTZ.painter_cd) >= 2
ORDER BY CS30022RTZ.painter_cd;