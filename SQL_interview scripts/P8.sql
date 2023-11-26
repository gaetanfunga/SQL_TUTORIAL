create table Quality(quality float)
insert into Quality values(99.12),
(87.34),
(52.67),
(63.48),
(86.48)


SELECT
    Quality AS quality,
    CAST(Quality AS INT) AS int,
    CAST((Quality - CAST(Quality AS INT)) * 100 AS INT) AS decimal
FROM Quality;
