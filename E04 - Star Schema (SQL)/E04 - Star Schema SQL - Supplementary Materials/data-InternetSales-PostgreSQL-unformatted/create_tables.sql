-- public."DimCurrency" definition

-- Drop table

-- DROP TABLE public."DimCurrency";

CREATE TABLE public."DimCurrency" (
	currencykey int8 NULL,
	currencyalternatekey text NULL,
	currencyname text NULL
);


-- public."DimCustomer" definition

-- Drop table

-- DROP TABLE public."DimCustomer";

CREATE TABLE public."DimCustomer" (
	customerkey int8 NULL,
	geographykey int8 NULL,
	customeralternatekey text NULL,
	title text NULL,
	firstname text NULL,
	middlename text NULL,
	lastname text NULL,
	namestyle int8 NULL,
	birthdate text NULL,
	maritalstatus text NULL,
	suffix text NULL,
	gender text NULL,
	emailaddress text NULL,
	yearlyincome float8 NULL,
	totalchildren int8 NULL,
	numberchildrenathome int8 NULL,
	englisheducation text NULL,
	spanisheducation text NULL,
	frencheducation text NULL,
	englishoccupation text NULL,
	spanishoccupation text NULL,
	frenchoccupation text NULL,
	houseownerflag int8 NULL,
	numbercarsowned int8 NULL,
	addressline1 text NULL,
	addressline2 text NULL,
	phone text NULL,
	datefirstpurchase text NULL,
	commutedistance text NULL
);


-- public."DimDate" definition

-- Drop table

-- DROP TABLE public."DimDate";

CREATE TABLE public."DimDate" (
	datekey int8 NULL,
	fulldatealternatekey text NULL,
	daynumberofweek int8 NULL,
	englishdaynameofweek text NULL,
	spanishdaynameofweek text NULL,
	frenchdaynameofweek text NULL,
	daynumberofmonth int8 NULL,
	daynumberofyear int8 NULL,
	weeknumberofyear int8 NULL,
	englishmonthname text NULL,
	spanishmonthname text NULL,
	frenchmonthname text NULL,
	monthnumberofyear int8 NULL,
	calendarquarter int8 NULL,
	calendaryear int8 NULL,
	calendarsemester int8 NULL,
	fiscalquarter int8 NULL,
	fiscalyear int8 NULL,
	fiscalsemester int8 NULL
);


-- public."DimGeography" definition

-- Drop table

-- DROP TABLE public."DimGeography";

CREATE TABLE public."DimGeography" (
	geographykey int8 NULL,
	city text NULL,
	stateprovincecode text NULL,
	stateprovincename text NULL,
	countryregioncode text NULL,
	englishcountryregionname text NULL,
	spanishcountryregionname text NULL,
	frenchcountryregionname text NULL,
	postalcode text NULL,
	salesterritorykey int8 NULL,
	ipaddresslocator text NULL
);


-- public."DimProduct" definition

-- Drop table

-- DROP TABLE public."DimProduct";

CREATE TABLE public."DimProduct" (
	productkey int8 NULL,
	productalternatekey text NULL,
	productsubcategorykey float8 NULL,
	weightunitmeasurecode text NULL,
	sizeunitmeasurecode text NULL,
	englishproductname text NULL,
	spanishproductname text NULL,
	frenchproductname text NULL,
	standardcost float8 NULL,
	finishedgoodsflag int8 NULL,
	color text NULL,
	safetystocklevel int8 NULL,
	reorderpoint int8 NULL,
	listprice float8 NULL,
	"size" text NULL,
	sizerange text NULL,
	weight float8 NULL,
	daystomanufacture int8 NULL,
	productline text NULL,
	dealerprice float8 NULL,
	"class" text NULL,
	"style" text NULL,
	modelname text NULL,
	largephoto text NULL,
	englishdescription text NULL,
	frenchdescription text NULL,
	chinesedescription text NULL,
	arabicdescription text NULL,
	hebrewdescription text NULL,
	thaidescription text NULL,
	germandescription text NULL,
	japanesedescription text NULL,
	turkishdescription text NULL,
	startdate text NULL,
	enddate text NULL,
	status text NULL
);


-- public."DimProductCategory" definition

-- Drop table

-- DROP TABLE public."DimProductCategory";

CREATE TABLE public."DimProductCategory" (
	productcategorykey int8 NULL,
	productcategoryalternatekey int8 NULL,
	englishproductcategoryname text NULL,
	spanishproductcategoryname text NULL,
	frenchproductcategoryname text NULL
);


-- public."DimProductSubcategory" definition

-- Drop table

-- DROP TABLE public."DimProductSubcategory";

CREATE TABLE public."DimProductSubcategory" (
	productsubcategorykey int8 NULL,
	productsubcategoryalternatekey int8 NULL,
	englishproductsubcategoryname text NULL,
	spanishproductsubcategoryname text NULL,
	frenchproductsubcategoryname text NULL,
	productcategorykey int8 NULL
);


-- public."DimSalesTerritory" definition

-- Drop table

-- DROP TABLE public."DimSalesTerritory";

CREATE TABLE public."DimSalesTerritory" (
	salesterritorykey int8 NULL,
	salesterritoryalternatekey int8 NULL,
	salesterritoryregion text NULL,
	salesterritorycountry text NULL,
	salesterritorygroup text NULL,
	salesterritoryimage text NULL
);


-- public."FactInternetSales" definition

-- Drop table

-- DROP TABLE public."FactInternetSales";

CREATE TABLE public."FactInternetSales" (
	productkey int8 NULL,
	orderdatekey int8 NULL,
	duedatekey int8 NULL,
	shipdatekey int8 NULL,
	customerkey int8 NULL,
	promotionkey int8 NULL,
	currencykey int8 NULL,
	salesterritorykey int8 NULL,
	salesordernumber text NULL,
	salesorderlinenumber int8 NULL,
	revisionnumber int8 NULL,
	orderquantity int8 NULL,
	unitprice float8 NULL,
	extendedamount float8 NULL,
	unitpricediscountpct int8 NULL,
	discountamount int8 NULL,
	productstandardcost float8 NULL,
	totalproductcost float8 NULL,
	salesamount float8 NULL,
	taxamt float8 NULL,
	freight float8 NULL,
	carriertrackingnumber float8 NULL,
	customerponumber float8 NULL,
	orderdate text NULL,
	duedate text NULL,
	shipdate text NULL
);