-- public.dim_currency definition

-- Drop table

-- DROP TABLE public.dim_currency;

CREATE TABLE public.dim_currency (
	currency_key int8 NULL,
	currency_alternate_key text NULL,
	currency_name text NULL
);


-- public.dim_customer definition

-- Drop table

-- DROP TABLE public.dim_customer;

CREATE TABLE public.dim_customer (
	customer_key int8 NULL,
	geography_key int8 NULL,
	customer_alternate_key text NULL,
	title text NULL,
	first_name text NULL,
	middle_name text NULL,
	last_name text NULL,
	name_style int8 NULL,
	birth_date text NULL,
	marital_status text NULL,
	suffix text NULL,
	gender text NULL,
	email_address text NULL,
	yearly_income float8 NULL,
	total_children int8 NULL,
	number_children_at_home int8 NULL,
	english_education text NULL,
	spanish_education text NULL,
	french_education text NULL,
	english_occupation text NULL,
	spanish_occupation text NULL,
	french_occupation text NULL,
	house_owner_flag int8 NULL,
	number_cars_owned int8 NULL,
	address_line1 text NULL,
	address_line2 text NULL,
	phone text NULL,
	date_first_purchase text NULL,
	commute_distance text NULL
);


-- public.dim_date definition

-- Drop table

-- DROP TABLE public.dim_date;

CREATE TABLE public.dim_date (
	date_key int8 NULL,
	full_date_alternate_key text NULL,
	day_number_of_week int8 NULL,
	english_day_name_of_week text NULL,
	spanish_day_name_of_week text NULL,
	french_day_name_of_week text NULL,
	day_number_of_month int8 NULL,
	day_number_of_year int8 NULL,
	week_number_of_year int8 NULL,
	english_month_name text NULL,
	spanish_month_name text NULL,
	french_month_name text NULL,
	month_number_of_year int8 NULL,
	calendar_quarter int8 NULL,
	calendar_year int8 NULL,
	calendar_semester int8 NULL,
	fiscal_quarter int8 NULL,
	fiscal_year int8 NULL,
	fiscal_semester int8 NULL
);


-- public.dim_geography definition

-- Drop table

-- DROP TABLE public.dim_geography;

CREATE TABLE public.dim_geography (
	geography_key int8 NULL,
	city text NULL,
	state_province_code text NULL,
	state_province_name text NULL,
	country_region_code text NULL,
	english_country_region_name text NULL,
	spanish_country_region_name text NULL,
	french_country_region_name text NULL,
	postal_code text NULL,
	sales_territory_key int8 NULL,
	ip_address_locator text NULL
);


-- public.dim_product definition

-- Drop table

-- DROP TABLE public.dim_product;

CREATE TABLE public.dim_product (
	product_key int8 NULL,
	product_alternate_key text NULL,
	product_subcategory_key float8 NULL,
	weight_unit_measure_code text NULL,
	size_unit_measure_code text NULL,
	english_product_name text NULL,
	spanish_product_name text NULL,
	french_product_name text NULL,
	standard_cost float8 NULL,
	finished_goods_flag int8 NULL,
	color text NULL,
	safety_stock_level int8 NULL,
	reorder_point int8 NULL,
	list_price float8 NULL,
	"size" text NULL,
	size_range text NULL,
	weight float8 NULL,
	days_to_manufacture int8 NULL,
	product_line text NULL,
	dealer_price float8 NULL,
	"class" text NULL,
	"style" text NULL,
	model_name text NULL,
	large_photo text NULL,
	english_description text NULL,
	french_description text NULL,
	chinese_description text NULL,
	arabic_description text NULL,
	hebrew_description text NULL,
	thai_description text NULL,
	german_description text NULL,
	japanese_description text NULL,
	turkish_description text NULL,
	start_date text NULL,
	end_date text NULL,
	status text NULL
);


-- public.dim_product_category definition

-- Drop table

-- DROP TABLE public.dim_product_category;

CREATE TABLE public.dim_product_category (
	product_category_key int8 NULL,
	product_category_alternate_key int8 NULL,
	english_product_category_name text NULL,
	spanish_product_category_name text NULL,
	french_product_category_name text NULL
);


-- public.dim_product_subcategory definition

-- Drop table

-- DROP TABLE public.dim_product_subcategory;

CREATE TABLE public.dim_product_subcategory (
	product_subcategory_key int8 NULL,
	product_subcategory_alternate_key int8 NULL,
	english_product_subcategory_name text NULL,
	spanish_product_subcategory_name text NULL,
	french_product_subcategory_name text NULL,
	product_category_key int8 NULL
);


-- public.dim_sales_territory definition

-- Drop table

-- DROP TABLE public.dim_sales_territory;

CREATE TABLE public.dim_sales_territory (
	sales_territory_key int8 NULL,
	sales_territory_alternate_key int8 NULL,
	sales_territory_region text NULL,
	sales_territory_country text NULL,
	sales_territory_group text NULL,
	sales_territory_image text NULL
);


-- public.fact_internet_sales definition

-- Drop table

-- DROP TABLE public.fact_internet_sales;

CREATE TABLE public.fact_internet_sales (
	product_key int8 NULL,
	order_date_key int8 NULL,
	due_date_key int8 NULL,
	ship_date_key int8 NULL,
	customer_key int8 NULL,
	promotion_key int8 NULL,
	currency_key int8 NULL,
	sales_territory_key int8 NULL,
	sales_order_number text NULL,
	sales_order_line_number int8 NULL,
	revision_number int8 NULL,
	order_quantity int8 NULL,
	unit_price float8 NULL,
	extended_amount float8 NULL,
	unit_price_discount_pct int8 NULL,
	discount_amount int8 NULL,
	product_standard_cost float8 NULL,
	total_product_cost float8 NULL,
	sales_amount float8 NULL,
	tax_amt float8 NULL,
	freight float8 NULL,
	carrier_tracking_number float8 NULL,
	customer_p_o_number float8 NULL,
	order_date text NULL,
	due_date text NULL,
	ship_date text NULL
);