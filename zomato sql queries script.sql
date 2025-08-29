SELECT 
    COUNT(*)
FROM
    zomatomain;


SELECT 
    CITY, `PRIMARY CUISINE`, COUNT(*) AS RESTURANT_COUNT
FROM
    zomatomain
WHERE
    `Primary Cuisine` = 'NORTH INDIAN'
GROUP BY CITY;


SELECT 
    COUNT(Restaurant_Name)
FROM
    zomatomain
WHERE
    Country_Code = (SELECT 
            CountryID
        FROM
            zomatocountry
        WHERE
            Countryname = 'INDIA');
            
            
SELECT 
    Restaurant_Name, Rating
FROM
    zomatomain
WHERE
    Country_Code = (SELECT 
            COUNTRYID
        FROM
            zomatocountry
        WHERE
            Countryname = 'INDIA')
        AND Rating > 4;
        
        
	
SELECT 
    COUNTRYNAME, COUNT(RESTAURANT_NAME)
FROM
    ZOMATOMAIN ZM
        INNER JOIN
    zomatocountry ZC
WHERE
    ZM.COUNTRY_CODE = ZC.CountryID
GROUP BY Countryname;


SELECT 
    Restaurant_Name,
    AVERAGE_COST_FOR_TWO * `USD RATE` AS `AVERAGE COST FOR TWO IN USD`
FROM
    zomatomain ZM
        INNER JOIN
    zomatocurrency ZC
WHERE
    ZM.Currency = ZC.CURRENCY;
    
    
ALTER table zomatomain ADD column AVERAGE_COST_FOR_TWO_USD float ;
