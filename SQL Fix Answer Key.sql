﻿UPDATE Questions
SET answerId =
  CASE
    WHEN Id = 1 THEN 1
    WHEN Id = 2 THEN 2
    WHEN Id = 3 THEN 3
    WHEN Id = 4 THEN 17
    WHEN Id = 5 THEN 24
    WHEN Id = 6 THEN 29
    WHEN Id = 7 THEN 31
    WHEN Id = 8 THEN 38
    WHEN Id = 9 THEN 41
    WHEN Id = 10 THEN 46
    WHEN Id = 11 THEN 53
    WHEN Id = 12 THEN 58
    WHEN Id = 13 THEN 60
    WHEN Id = 14 THEN 66
    WHEN Id = 15 THEN 72
    WHEN Id = 16 THEN 75
    WHEN Id = 17 THEN 81
    WHEN Id = 18 THEN 85
    WHEN Id = 19 THEN 91
    WHEN Id = 20 THEN 95
    WHEN Id = 21 THEN 102
    WHEN Id = 22 THEN 107
    WHEN Id = 23 THEN 111
    WHEN Id = 24 THEN 117
    WHEN Id = 25 THEN 121
    WHEN Id = 26 THEN 124
    WHEN Id = 27 THEN 132
    WHEN Id = 28 THEN 134
    WHEN Id = 29 THEN 140
    WHEN Id = 30 THEN 146
    WHEN Id = 31 THEN 152
    WHEN Id = 32 THEN 155
    WHEN Id = 33 THEN 159
    WHEN Id = 34 THEN 166
    WHEN Id = 35 THEN 171
    WHEN Id = 36 THEN 174
    ELSE answerId
  END;