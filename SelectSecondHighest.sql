-- select the second highest with doc. type

-- option 1
WITH DocumentSums AS (
    SELECT
        dt.DOCTYPE,
        SUM(cd.AMOUNT) AS TotalAmount
    FROM
        DocumentTypes dt
    JOIN
        CountryDocuments cd ON dt.DOCID = cd.DOCID
    GROUP BY
        dt.DOCTYPE
)
SELECT
    DOCTYPE,
    TotalAmount
FROM
    DocumentSums
ORDER BY
    TotalAmount DESC
LIMIT 1 OFFSET 1;

--option 2
WITH DocumentSumsRanked AS (
    SELECT
        DOCTYPE,
        TotalAmount,
        ROW_NUMBER() OVER (ORDER BY TotalAmount DESC) AS rnk
    FROM (
        SELECT
            dt.DOCTYPE,
            SUM(cd.AMOUNT) AS TotalAmount
        FROM
            DocumentTypes dt
        JOIN
            CountryDocuments cd ON dt.DOCID = cd.DOCID
        GROUP BY
            dt.DOCTYPE
    ) AS DocumentSums
)
SELECT
    DOCTYPE,
    TotalAmount
FROM
    DocumentSumsRanked
WHERE
    rnk = 2;

-- select the second highest for every file
SELECT
    dt.DOCTYPE,
    MAX(cd.AMOUNT) AS SECOND_HIGHEST_AMOUNT
FROM
    DocumentTypes dt
JOIN
    CountryDocuments cd ON dt.DOCID = cd.DOCID
WHERE
    (cd.DOCID, cd.AMOUNT) NOT IN (
        SELECT
            cd.DOCID,
            MAX(cd.AMOUNT) AS MAX_AMOUNT
        FROM
            CountryDocuments cd
        GROUP BY
            cd.DOCID
    )
GROUP BY
    dt.DOCTYPE;
