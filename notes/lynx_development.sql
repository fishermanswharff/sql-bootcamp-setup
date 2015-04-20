SHOW TABLES FROM lynx_development;
/*
+-----------------------------------------+
| Tables_in_lynx_development              |
+-----------------------------------------+
| ab_test_results                         |
| ab_test_rules                           |
| ab_tests                                |
| ad_requests                             |
| afi_auto_quote_requests                 |
| agent_listings                          |
| api_users                               |
| app_states                              |
| arrivals                                |
| asset_libraries                         |
| auto_insurance_terms                    |
| auto_policies                           |
| auto_policy_state_discounts             |
| autos                                   |
| blacklisted_phone_numbers               |
| blocked_ips                             |
| blog_authors                            |
| blog_categories                         |
| blog_categories_blog_posts              |
| blog_layouts                            |
| blog_posts                              |
| blog_posts_blog_tags                    |
| blog_tags                               |
| call_center_filters                     |
| call_center_payouts                     |
| call_center_performance_ranks           |
| call_center_phone_number_callable_hours |
| call_center_phone_number_postal_states  |
| call_center_phone_numbers               |
| call_center_states                      |
| call_centers                            |
| call_impression_ads                     |
| call_impressions                        |
| calls                                   |
| config_set_pages                        |
| config_set_rules                        |
| config_set_settings                     |
| config_sets                             |
| content_pages                           |
| drivers                                 |
| expando_attributes                      |
| expert_postal_state_auto_infos          |
| feedbacks                               |
| fraudlogix_urls                         |
| gatekeeper_redirects                    |
| home_policies                           |
| html_logs                               |
| insurance_claims                        |
| insurance_types                         |
| insurer_insurance_types                 |
| insurers                                |
| ivr_configurations                      |
| ivr_flows                               |
| keywords                                |
| landings                                |
| lead_buyers                             |
| life_policies                           |
| marketplaces                            |
| page_rules                              |
| pages                                   |
| parameter_values                        |
| partner_contacts                        |
| pixel_rules                             |
| pixels                                  |
| polk_makes                              |
| polk_makes_old                          |
| polk_models                             |
| polk_models_old                         |
| polk_series                             |
| polk_series_old                         |
| polk_vehicles                           |
| polk_vehicles_old                       |
| polk_years                              |
| polk_years_old                          |
| postal_state_auto_infos                 |
| postal_states                           |
| queued_posts                            |
| rule_parameters                         |
| rules                                   |
| scheduled_calls                         |
| schema_migrations                       |
| sessions                                |
| setting_rules                           |
| settings                                |
| site_errors                             |
| sms_messages                            |
| state_discounts                         |
| surehits_daily_counts                   |
| surehits_direct_impressions             |
| survey_answers                          |
| survey_landings                         |
| surveys                                 |
| ta_bankruptcies                         |
| ta_divorces                             |
| ta_duis                                 |
| ta_leads                                |
| ta_requests                             |
| third_party_email_arrivals              |
| tips                                    |
| twilio_phone_numbers                    |
| users                                   |
| versions                                |
| violations                              |
| visitor_mappings                        |
| visitors                                |
| visits                                  |
| warthog_records                         |
| zipcodes                                |
+-----------------------------------------+
*/


DESCRIBE lynx_development.arrivals;
/*
+------------------+---------------+------+-----+-------------------+-----------------------------+
| Field            | Type          | Null | Key | Default           | Extra                       |
+------------------+---------------+------+-----+-------------------+-----------------------------+
| id               | int(11)       | NO   | PRI | NULL              | auto_increment              |
| site_version     | varchar(255)  | YES  | MUL | NULL              |                             |
| host             | varchar(255)  | YES  |     | NULL              |                             |
| ip               | varchar(255)  | YES  |     | 0.0.0.0           |                             |
| referer          | text          | YES  |     | NULL              |                             |
| user_agent       | varchar(1024) | YES  |     | NULL              |                             |
| request_uri      | text          | YES  |     | NULL              |                             |
| query_string     | varchar(1024) | YES  |     | NULL              |                             |
| xid              | varchar(16)   | YES  |     |                   |                             |
| tid              | int(11)       | YES  | MUL | 0                 |                             |
| keyword_id       | bigint(20)    | YES  |     | 0                 |                             |
| domain           | varchar(255)  | YES  |     | NULL              |                             |
| is_mobile        | tinyint(1)    | YES  |     | 0                 |                             |
| subid            | varchar(255)  | YES  |     | NULL              |                             |
| eid              | varchar(255)  | YES  |     | NULL              |                             |
| product_type     | varchar(255)  | YES  |     | NULL              |                             |
| created_at       | datetime      | NO   |     | NULL              |                             |
| updated_at       | datetime      | NO   |     | NULL              |                             |
| updated_ts       | timestamp     | NO   | MUL | CURRENT_TIMESTAMP | on update CURRENT_TIMESTAMP |
| uber_client_type | varchar(255)  | YES  |     | NULL              |                             |
| hostname         | varchar(255)  | YES  |     | NULL              |                             |
| original_slid    | varchar(255)  | YES  |     | NULL              |                             |
| device_type      | varchar(25)   | YES  |     | NULL              |                             |
| uuid             | varchar(255)  | YES  | MUL | NULL              |                             |
+------------------+---------------+------+-----+-------------------+-----------------------------+
*/


DESCRIBE lynx_development.auto_policies;
/*
+------------------------+--------------+------+-----+-------------------+-----------------------------+
| Field                  | Type         | Null | Key | Default           | Extra                       |
+------------------------+--------------+------+-----+-------------------+-----------------------------+
| id                     | int(11)      | NO   | PRI | NULL              | auto_increment              |
| arrival_id             | int(11)      | YES  | MUL | NULL              |                             |
| credit_rating          | varchar(255) | YES  |     | NULL              |                             |
| filing_required        | varchar(255) | YES  |     | NULL              |                             |
| occupation             | varchar(255) | YES  |     | NULL              |                             |
| residence              | varchar(255) | YES  |     | NULL              |                             |
| years_at_residence     | int(11)      | YES  |     | NULL              |                             |
| street_address         | varchar(255) | YES  |     | NULL              |                             |
| phone                  | varchar(255) | YES  | MUL | NULL              |                             |
| email                  | varchar(255) | YES  | MUL | NULL              |                             |
| bankruptcy             | tinyint(1)   | YES  |     | NULL              |                             |
| has_auto_insurance     | tinyint(1)   | YES  |     | NULL              |                             |
| current_insurer        | varchar(255) | YES  |     | NULL              |                             |
| years_insured          | int(11)      | YES  |     | NULL              |                             |
| insurance_expiration   | date         | YES  |     | NULL              |                             |
| high_gpa_student       | tinyint(1)   | YES  |     | NULL              |                             |
| email_opt_in           | tinyint(1)   | YES  |     | NULL              |                             |
| add_insurance_type     | varchar(255) | YES  |     | NULL              |                             |
| add_auto               | tinyint(1)   | YES  |     | NULL              |                             |
| add_driver             | tinyint(1)   | YES  |     | NULL              |                             |
| add_violation          | tinyint(1)   | YES  |     | NULL              |                             |
| add_insurance_claim    | tinyint(1)   | YES  |     | NULL              |                             |
| sl_post_comments       | varchar(255) | YES  |     | NULL              |                             |
| sl_status              | int(11)      | YES  | MUL | NULL              |                             |
| sl_lead_id             | int(11)      | YES  | MUL | NULL              |                             |
| created_at             | datetime     | NO   |     | NULL              |                             |
| updated_at             | datetime     | NO   |     | NULL              |                             |
| updated_ts             | timestamp    | NO   | MUL | CURRENT_TIMESTAMP | on update CURRENT_TIMESTAMP |
| current_bi_liability   | varchar(255) | YES  |     | NULL              |                             |
| coverage_type          | varchar(255) | YES  |     | NULL              |                             |
| completed_at           | datetime     | YES  |     | NULL              |                             |
| prior_policy_id        | int(11)      | YES  |     | NULL              |                             |
| insurance_lapse_months | varchar(255) | YES  |     | NULL              |                             |
+------------------------+--------------+------+-----+-------------------+-----------------------------+
*/

DESCRIBE lynx_development.drivers;
/*
+----------------------------+--------------+------+-----+---------+----------------+
| Field                      | Type         | Null | Key | Default | Extra          |
+----------------------------+--------------+------+-----+---------+----------------+
| id                         | int(11)      | NO   | PRI | NULL    | auto_increment |
| auto_policy_id             | int(11)      | YES  | MUL | NULL    |                |
| driver_type                | varchar(255) | YES  | MUL | NULL    |                |
| relation_to_primary_driver | varchar(255) | YES  |     | NULL    |                |
| first_name                 | varchar(255) | YES  | MUL | NULL    |                |
| last_name                  | varchar(255) | YES  | MUL | NULL    |                |
| birth_date                 | date         | YES  |     | NULL    |                |
| city                       | varchar(255) | YES  |     | NULL    |                |
| postal_state               | varchar(255) | YES  |     | NULL    |                |
| zip_code                   | varchar(255) | YES  |     | NULL    |                |
| license_status             | varchar(255) | YES  |     | NULL    |                |
| education                  | varchar(255) | YES  |     | NULL    |                |
| age_licensed               | int(11)      | YES  |     | NULL    |                |
| gender                     | varchar(255) | YES  |     | NULL    |                |
| marital_status             | varchar(255) | YES  |     | NULL    |                |
| ever_suspended_revoked     | tinyint(1)   | YES  |     | NULL    |                |
| driver_training            | tinyint(1)   | YES  |     | NULL    |                |
| repossessions              | int(11)      | YES  |     | NULL    |                |
| created_at                 | datetime     | NO   |     | NULL    |                |
| updated_at                 | datetime     | NO   | MUL | NULL    |                |
| occupation                 | varchar(255) | YES  |     | NULL    |                |
+----------------------------+--------------+------+-----+---------+----------------+
*/

DESCRIBE lynx_development.polk_makes;
/*
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id           | int(11)      | NO   | PRI | NULL    | auto_increment |
| polk_year_id | int(11)      | YES  |     | NULL    |                |
| make         | varchar(255) | YES  | MUL | NULL    |                |
| make_abbr    | varchar(255) | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
*/

DESCRIBE lynx_development.polk_models;
/*
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id           | int(11)      | NO   | PRI | NULL    | auto_increment |
| polk_make_id | int(11)      | YES  | MUL | NULL    |                |
| model        | varchar(255) | YES  |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+
*/

-- returns back a count of only the distinct makes in the polk_makes tables.
SELECT make, COUNT(DISTINCT make) FROM lynx_development.polk_makes GROUP BY make;

/*
+--------------------------------------+----------------------+
| make                                 | COUNT(DISTINCT make) |
+--------------------------------------+----------------------+
| ACURA                                |                    1 |
| ADVANCE MIXER                        |                    1 |
| ALFA ROMEO                           |                    1 |
| AMERICAN GENERAL                     |                    1 |
| AMERICAN IRON HORSE                  |                    1 |
| AMERICAN LA FRANCE                   |                    1 |
| AMERICAN MOTORS                      |                    1 |
| APRILIA                              |                    1 |
| ARO                                  |                    1 |
| ASTON MARTIN                         |                    1 |
| ASUNA                                |                    1 |
| ATK                                  |                    1 |
| AUDI                                 |                    1 |
| AUSTIN ROVER                         |                    1 |
| AUTOCAR                              |                    1 |
| AUTOCAR LLC.                         |                    1 |
| AVANTI                               |                    1 |
| AZURE DYNAMICS                       |                    1 |
| BASHAN                               |                    1 |
| BENTLEY                              |                    1 |
| BERING                               |                    1 |
| BIG BEAR CHOPPERS                    |                    1 |
| BIG DOG                              |                    1 |
| BLUE BIRD                            |                    1 |
| BMW                                  |                    1 |
| BUELL                                |                    1 |
| BUGATTI                              |                    1 |
| BUICK                                |                    1 |
| BUS & COACH INTL (BCI)               |                    1 |
| CADILLAC                             |                    1 |
| CAGIVA                               |                    1 |
| CAN-AM                               |                    1 |
| CAPACITY OF TEXAS                    |                    1 |
| CAPRI                                |                    1 |
| CATERPILLAR                          |                    1 |
| CHANCE COACH TRANSIT BUS             |                    1 |
| CHEVROLET                            |                    1 |
| CHRYSLER                             |                    1 |
| COUNTRY COACH MOTORHOME              |                    1 |
| CPI MOTOR COMPANY                    |                    1 |
| CRANE CARRIER                        |                    1 |
| CROWN COACH                          |                    1 |
| DAEWOO                               |                    1 |
| DAIHATSU                             |                    1 |
| DATSUN                               |                    1 |
| DERBI                                |                    1 |
| DIAMOND REO                          |                    1 |
| DINA TRANSIT BUS                     |                    1 |
| DODGE                                |                    1 |
| DUCATI                               |                    1 |
| DUPLEX                               |                    1 |
| EAGLE                                |                    1 |
| EAGLE TRANSIT BUSES                  |                    1 |
| EL DORADO                            |                    1 |
| ELECTRIC VEHICLE TECHNOLOGIES        |                    1 |
| EMERGENCY ONE                        |                    1 |
| ETON                                 |                    1 |
| EVOBUS                               |                    1 |
| FEDERAL MOTORS                       |                    1 |
| FERRARI                              |                    1 |
| FIAT                                 |                    1 |
| FISKER AUTOMOTIVE                    |                    1 |
| FLXIBLE TRANSIT BUS                  |                    1 |
| FORD                                 |                    1 |
| FORETRAVEL MOTORHOME                 |                    1 |
| FREIGHTLINER                         |                    1 |
| FWD CORPORATION                      |                    1 |
| GENESIS TRANSIT BUSES                |                    1 |
| GENUINE SCOOTER CO.                  |                    1 |
| GEO                                  |                    1 |
| GIANT                                |                    1 |
| GILLIG                               |                    1 |
| GLOBAL ELECTRIC MOTORS               |                    1 |
| GM EV1                               |                    1 |
| GMC                                  |                    1 |
| HARLEY-DAVIDSON                      |                    1 |
| HENDRICKSON                          |                    1 |
| HINO                                 |                    1 |
| HONDA                                |                    1 |
| HUMMER                               |                    1 |
| HUSABERG                             |                    1 |
| HUSQVARNA                            |                    1 |
| HYOSUNG                              |                    1 |
| HYUNDAI                              |                    1 |
| IC CORPORATION                       |                    1 |
| INDIAN MOTORCYCLE CO.                |                    1 |
| INDIANA PHOENIX                      |                    1 |
| INFINITI                             |                    1 |
| INTERNATIONAL                        |                    1 |
| ISUZU                                |                    1 |
| IVECO                                |                    1 |
| IVECO-MAGIRUS                        |                    1 |
| JAGUAR                               |                    1 |
| JEEP                                 |                    1 |
| JENSON                               |                    1 |
| JOHN DEERE                           |                    1 |
| KALMAR                               |                    1 |
| KAWASAKI                             |                    1 |
| KENWORTH                             |                    1 |
| KIA                                  |                    1 |
| KOVATCH                              |                    1 |
| KTM                                  |                    1 |
| KYMCO USA INC                        |                    1 |
| LADA                                 |                    1 |
| LAFORZA                              |                    1 |
| LAMBORGHINI                          |                    1 |
| LANCIA                               |                    1 |
| LAND ROVER                           |                    1 |
| LES AUTOBUS MCI                      |                    1 |
| LEXUS                                |                    1 |
| LINCOLN                              |                    1 |
| LODAL                                |                    1 |
| LOTUS                                |                    1 |
| M. V. AGUSTA                         |                    1 |
| MACK                                 |                    1 |
| MAHINDRA AND MAHINDRA                |                    1 |
| MARMON HERRINGTON                    |                    1 |
| MASERATI                             |                    1 |
| MAXIM                                |                    1 |
| MAYBACH                              |                    1 |
| MAZDA                                |                    1 |
| MCLAREN AUTOMOTIVE                   |                    1 |
| MERCEDES BENZ                        |                    1 |
| MERCEDES-BENZ                        |                    1 |
| MERCURY                              |                    1 |
| MERKUR                               |                    1 |
| MG                                   |                    1 |
| MINI                                 |                    1 |
| MITSUBISHI                           |                    1 |
| MITSUBISHI FUSO TRUCK OF AMERICA INC |                    1 |
| MOTO GUZZI                           |                    1 |
| MOTOR COACH INDUSTRIES               |                    1 |
| MOTORRAD UND ZWEIRADWERK             |                    1 |
| NEOPLAN                              |                    1 |
| NEW FLYER                            |                    1 |
| NISSAN                               |                    1 |
| NISSAN DIESEL                        |                    1 |
| NORTH AMERICAN BUS INDUSTRIES (NABI) |                    1 |
| NOVA BUS CORPORATION                 |                    1 |
| OLDSMOBILE                           |                    1 |
| ONTARIO BUS                          |                    1 |
| OPEL                                 |                    1 |
| ORION BUS                            |                    1 |
| OSHKOSH MOTOR TRUCK CO.              |                    1 |
| OTTAWA                               |                    1 |
| PASSPORT                             |                    1 |
| PETER PIRSCH & SONS CO.              |                    1 |
| PETERBILT                            |                    1 |
| PEUGEOT                              |                    1 |
| PIAGGIO                              |                    1 |
| PIERCE MFG. INC.                     |                    1 |
| PLYMOUTH                             |                    1 |
| POLARIS                              |                    1 |
| PONTIAC                              |                    1 |
| PORSCHE                              |                    1 |
| PREVOST                              |                    1 |
| RAM                                  |                    1 |
| RENAULT                              |                    1 |
| ROADMASTER RAIL                      |                    1 |
| ROLLS-ROYCE                          |                    1 |
| ROYAL ENFIELD MOTORS                 |                    1 |
| SAAB                                 |                    1 |
| SATURN                               |                    1 |
| SAVAGE                               |                    1 |
| SCANIA                               |                    1 |
| SEAGRAVE FIRE APPARATUS              |                    1 |
| SMART                                |                    1 |
| SMITH ELECTRIC                       |                    1 |
| SPARTAN MOTORS                       |                    1 |
| SPRINTER                             |                    1 |
| SSI                                  |                    1 |
| STERLING                             |                    1 |
| STERLING TRUCK                       |                    1 |
| STEWART & STEVENSON                  |                    1 |
| SUBARU                               |                    1 |
| SUTPHEN CORP.                        |                    1 |
| SUZUKI                               |                    1 |
| SYM                                  |                    1 |
| TEREX / TEREX ADVANCE                |                    1 |
| TESLA                                |                    1 |
| THOMAS                               |                    1 |
| TOYOTA                               |                    1 |
| TRANSPORTATION MFG CORP.             |                    1 |
| TRIUMPH CAR                          |                    1 |
| TRIUMPH MOTORCYCLE                   |                    1 |
| TVR                                  |                    1 |
| UNIMOG                               |                    1 |
| UTILIMASTER                          |                    1 |
| VAN HOOL                             |                    1 |
| VESPA                                |                    1 |
| VICTORY MOTORCYCLES                  |                    1 |
| VOLKSWAGEN                           |                    1 |
| VOLVO                                |                    1 |
| WESTERN RV                           |                    1 |
| WESTERN STAR/AUTO CAR                |                    1 |
| WHITE                                |                    1 |
| WHITE/GMC                            |                    1 |
| WINNEBAGO                            |                    1 |
| WORKHORSE CUSTOM CHASSIS             |                    1 |
| YAMAHA                               |                    1 |
| YIBEN                                |                    1 |
| YUGO                                 |                    1 |
| ZELIGSON                             |                    1 |
| ZERO MOTORCYCLES INC                 |                    1 |
| ZONGSHEN                             |                    1 |
+--------------------------------------+----------------------+
*/


SELECT make, make_abbr, model, COUNT(DISTINCT model), polk_year_id
FROM lynx_development.polk_models
INNER JOIN lynx_development.polk_makes
ON polk_makes.id = polk_models.polk_make_id
WHERE make = 'BMW'
GROUP BY model;

/*
+------+-----------+---------------------+-----------------------+--------------+
| make | make_abbr | model               | COUNT(DISTINCT model) | polk_year_id |
+------+-----------+---------------------+-----------------------+--------------+
| BMW  | BMW       |                     |                     1 |          176 |
| BMW  | BMW       | 128 I               |                     1 |           14 |
| BMW  | BMW       | 135 I               |                     1 |           14 |
| BMW  | BMW       | 1M                  |                     1 |          102 |
| BMW  | BMW       | 2002                |                     1 |          288 |
| BMW  | BMW       | 2002 AUTOMATIC      |                     1 |          288 |
| BMW  | BMW       | 228 I               |                     1 |          138 |
| BMW  | BMW       | 228 XI              |                     1 |          138 |
| BMW  | BMW       | 3.0 SI              |                     1 |          288 |
| BMW  | BMW       | 3.0 SI AUTOMATIC    |                     1 |          288 |
| BMW  | BMW       | 318 I               |                     1 |           12 |
| BMW  | BMW       | 318 I AUTOMATIC     |                     1 |           12 |
| BMW  | BMW       | 318 IC              |                     1 |            2 |
| BMW  | BMW       | 318 IC AUTOMATIC    |                     1 |            2 |
| BMW  | BMW       | 318 IS              |                     1 |          101 |
| BMW  | BMW       | 318 IS AUTOMATIC    |                     1 |          101 |
| BMW  | BMW       | 318 TI              |                     1 |          113 |
| BMW  | BMW       | 318 TI AUTOMATIC    |                     1 |          113 |
| BMW  | BMW       | 320 I               |                     1 |          155 |
| BMW  | BMW       | 320 I AUTOMATIC     |                     1 |           56 |
| BMW  | BMW       | 323 CI              |                     1 |           46 |
| BMW  | BMW       | 323 I               |                     1 |           14 |
| BMW  | BMW       | 323 I AUTOMATIC     |                     1 |          113 |
| BMW  | BMW       | 323 IC              |                     1 |          113 |
| BMW  | BMW       | 323 IC AUTOMATIC    |                     1 |          113 |
| BMW  | BMW       | 323 IS              |                     1 |          113 |
| BMW  | BMW       | 323 IS AUTOMATIC    |                     1 |          113 |
| BMW  | BMW       | 323 IT              |                     1 |           46 |
| BMW  | BMW       | 325                 |                     1 |           20 |
| BMW  | BMW       | 325 AUTOMATIC       |                     1 |           20 |
| BMW  | BMW       | 325 BASE            |                     1 |           29 |
| BMW  | BMW       | 325 CI              |                     1 |            3 |
| BMW  | BMW       | 325 CI SULEV        |                     1 |          128 |
| BMW  | BMW       | 325 E               |                     1 |           71 |
| BMW  | BMW       | 325 E AUTOMATIC     |                     1 |           71 |
| BMW  | BMW       | 325 I               |                     1 |           29 |
| BMW  | BMW       | 325 I AUTOMATIC     |                     1 |           66 |
| BMW  | BMW       | 325 IC              |                     1 |           66 |
| BMW  | BMW       | 325 IC AUTOMATIC    |                     1 |           66 |
| BMW  | BMW       | 325 IS              |                     1 |           29 |
| BMW  | BMW       | 325 IS AUTOMATIC    |                     1 |           29 |
| BMW  | BMW       | 325 IS SULEV        |                     1 |          128 |
| BMW  | BMW       | 325 IT              |                     1 |            3 |
| BMW  | BMW       | 325 IT SULEV        |                     1 |          128 |
| BMW  | BMW       | 325 IX              |                     1 |           20 |
| BMW  | BMW       | 325 IX AUTOMATIC    |                     1 |           35 |
| BMW  | BMW       | 325 XI              |                     1 |            3 |
| BMW  | BMW       | 325 XIT             |                     1 |            3 |
| BMW  | BMW       | 328                 |                     1 |          113 |
| BMW  | BMW       | 328 CI              |                     1 |           46 |
| BMW  | BMW       | 328 D               |                     1 |          138 |
| BMW  | BMW       | 328 I               |                     1 |          102 |
| BMW  | BMW       | 328 I AUTOMATIC     |                     1 |          113 |
| BMW  | BMW       | 328 I SULEV         |                     1 |           68 |
| BMW  | BMW       | 328 IC              |                     1 |           79 |
| BMW  | BMW       | 328 IC AUTOMATIC    |                     1 |           79 |
| BMW  | BMW       | 328 IS              |                     1 |           79 |
| BMW  | BMW       | 328 IS AUTOMATIC    |                     1 |           31 |
| BMW  | BMW       | 328 IT              |                     1 |           68 |
| BMW  | BMW       | 328 XI              |                     1 |           68 |
| BMW  | BMW       | 328 XI SULEV        |                     1 |           68 |
| BMW  | BMW       | 328 XIGT            |                     1 |          138 |
| BMW  | BMW       | 328 XIT             |                     1 |           68 |
| BMW  | BMW       | 330 CI              |                     1 |            3 |
| BMW  | BMW       | 330 I               |                     1 |            3 |
| BMW  | BMW       | 330 XI              |                     1 |            3 |
| BMW  | BMW       | 335 D               |                     1 |          102 |
| BMW  | BMW       | 335 I               |                     1 |          102 |
| BMW  | BMW       | 335 I SULEV         |                     1 |           94 |
| BMW  | BMW       | 335 IS              |                     1 |          102 |
| BMW  | BMW       | 335 XI              |                     1 |           68 |
| BMW  | BMW       | 335 XIGT            |                     1 |          138 |
| BMW  | BMW       | 428 I               |                     1 |           64 |
| BMW  | BMW       | 428 XI              |                     1 |          142 |
| BMW  | BMW       | 428 XI SULEV        |                     1 |          142 |
| BMW  | BMW       | 435 I               |                     1 |          142 |
| BMW  | BMW       | 435 XI              |                     1 |          142 |
| BMW  | BMW       | 524 TD AUTOMATIC    |                     1 |           71 |
| BMW  | BMW       | 525 I               |                     1 |           35 |
| BMW  | BMW       | 525 I AUTOMATIC     |                     1 |           35 |
| BMW  | BMW       | 525 IT              |                     1 |            3 |
| BMW  | BMW       | 525 IT AUTOMATIC    |                     1 |          101 |
| BMW  | BMW       | 525 XI              |                     1 |           19 |
| BMW  | BMW       | 528 E               |                     1 |           56 |
| BMW  | BMW       | 528 E AUTOMATIC     |                     1 |           56 |
| BMW  | BMW       | 528 I               |                     1 |            5 |
| BMW  | BMW       | 528 I AUTOMATIC     |                     1 |           31 |
| BMW  | BMW       | 528 IT              |                     1 |           46 |
| BMW  | BMW       | 528 IT AUTOMATIC    |                     1 |           46 |
| BMW  | BMW       | 528 XI              |                     1 |            5 |
| BMW  | BMW       | 530 I               |                     1 |           19 |
| BMW  | BMW       | 530 I AUTOMATIC     |                     1 |           66 |
| BMW  | BMW       | 530 IT              |                     1 |           66 |
| BMW  | BMW       | 530 XI              |                     1 |           19 |
| BMW  | BMW       | 530 XIT             |                     1 |           19 |
| BMW  | BMW       | 533 I               |                     1 |           56 |
| BMW  | BMW       | 533 I AUTOMATIC     |                     1 |           56 |
| BMW  | BMW       | 535 AUTOMATIC       |                     1 |           20 |
| BMW  | BMW       | 535 BASE            |                     1 |           20 |
| BMW  | BMW       | 535 D               |                     1 |           64 |
| BMW  | BMW       | 535 GT              |                     1 |          102 |
| BMW  | BMW       | 535 I               |                     1 |          138 |
| BMW  | BMW       | 535 I AUTOMATIC     |                     1 |           36 |
| BMW  | BMW       | 535 IGT             |                     1 |          138 |
| BMW  | BMW       | 535 XI              |                     1 |           64 |
| BMW  | BMW       | 535 XIGT            |                     1 |           64 |
| BMW  | BMW       | 540 I               |                     1 |           66 |
| BMW  | BMW       | 540 I AUTOMATIC     |                     1 |           66 |
| BMW  | BMW       | 540 IT AUTOMATIC    |                     1 |            3 |
| BMW  | BMW       | 545 I               |                     1 |          128 |
| BMW  | BMW       | 550 GT              |                     1 |          102 |
| BMW  | BMW       | 550 I               |                     1 |           64 |
| BMW  | BMW       | 550 IGT             |                     1 |           64 |
| BMW  | BMW       | 550 XI              |                     1 |           64 |
| BMW  | BMW       | 550 XIGT            |                     1 |           64 |
| BMW  | BMW       | 630 CSI             |                     1 |           10 |
| BMW  | BMW       | 630 CSI AUTOMATIC   |                     1 |           10 |
| BMW  | BMW       | 633 CSI             |                     1 |           69 |
| BMW  | BMW       | 633 CSI AUTOMATIC   |                     1 |           69 |
| BMW  | BMW       | 635 CSI             |                     1 |           35 |
| BMW  | BMW       | 635 CSI AUTOMATIC   |                     1 |           12 |
| BMW  | BMW       | 640 I               |                     1 |            5 |
| BMW  | BMW       | 640 XI              |                     1 |          142 |
| BMW  | BMW       | 645 CI AUTOMATIC    |                     1 |          128 |
| BMW  | BMW       | 650 I               |                     1 |          138 |
| BMW  | BMW       | 650 XI              |                     1 |           94 |
| BMW  | BMW       | 733 I               |                     1 |           69 |
| BMW  | BMW       | 733 I AUTOMATIC     |                     1 |           69 |
| BMW  | BMW       | 735 I               |                     1 |           12 |
| BMW  | BMW       | 735 I AUTOMATIC     |                     1 |           29 |
| BMW  | BMW       | 735 IL              |                     1 |           20 |
| BMW  | BMW       | 740 I               |                     1 |           94 |
| BMW  | BMW       | 740 I AUTOMATIC     |                     1 |          113 |
| BMW  | BMW       | 740 IL              |                     1 |          113 |
| BMW  | BMW       | 740 IL AUTOMATIC    |                     1 |          101 |
| BMW  | BMW       | 740 IL PROTECTION   |                     1 |           89 |
| BMW  | BMW       | 740 LD              |                     1 |          138 |
| BMW  | BMW       | 740 LI              |                     1 |           94 |
| BMW  | BMW       | 740 LXI             |                     1 |           94 |
| BMW  | BMW       | 745 I               |                     1 |            3 |
| BMW  | BMW       | 745 LI              |                     1 |            3 |
| BMW  | BMW       | 750                 |                     1 |           59 |
| BMW  | BMW       | 750 I               |                     1 |           94 |
| BMW  | BMW       | 750 IL              |                     1 |           20 |
| BMW  | BMW       | 750 IL AUTOMATIC    |                     1 |           36 |
| BMW  | BMW       | 750 IL PROTECTION   |                     1 |           46 |
| BMW  | BMW       | 750 LI              |                     1 |           94 |
| BMW  | BMW       | 750 LXI             |                     1 |           94 |
| BMW  | BMW       | 750 XI              |                     1 |           94 |
| BMW  | BMW       | 760 I               |                     1 |           19 |
| BMW  | BMW       | 760 LI              |                     1 |           94 |
| BMW  | BMW       | 840 CI AUTOMATIC    |                     1 |           13 |
| BMW  | BMW       | 850 CI              |                     1 |            2 |
| BMW  | BMW       | 850 CI AUTOMATIC    |                     1 |           13 |
| BMW  | BMW       | 850 CSI             |                     1 |           66 |
| BMW  | BMW       | 850 I               |                     1 |           36 |
| BMW  | BMW       | 850 I AUTOMATIC     |                     1 |           36 |
| BMW  | BMW       | ACTIVE E            |                     1 |            5 |
| BMW  | BMW       | ACTIVEHYBRID 3      |                     1 |          142 |
| BMW  | BMW       | ACTIVEHYBRID 5      |                     1 |          138 |
| BMW  | BMW       | ALPINA B7           |                     1 |           94 |
| BMW  | BMW       | C600 SPORT          |                     1 |           94 |
| BMW  | BMW       | C650 GT             |                     1 |           94 |
| BMW  | BMW       | F1200 C INDEPENDENT |                     1 |           89 |
| BMW  | BMW       | F650                |                     1 |           46 |
| BMW  | BMW       | F650 CS             |                     1 |           40 |
| BMW  | BMW       | F650 DAKAR          |                     1 |           19 |
| BMW  | BMW       | F650 GS             |                     1 |          128 |
| BMW  | BMW       | F650 ST             |                     1 |           13 |
| BMW  | BMW       | F700 GS             |                     1 |           94 |
| BMW  | BMW       | F800 GS             |                     1 |           94 |
| BMW  | BMW       | F800 GS ADVENTURE   |                     1 |          138 |
| BMW  | BMW       | F800 GT             |                     1 |           94 |
| BMW  | BMW       | F800 R              |                     1 |           94 |
| BMW  | BMW       | F800 S              |                     1 |           68 |
| BMW  | BMW       | F800 ST             |                     1 |           68 |
| BMW  | BMW       | G450 X              |                     1 |            4 |
| BMW  | BMW       | G650 GS             |                     1 |            4 |
| BMW  | BMW       | G650 SERTAO         |                     1 |           94 |
| BMW  | BMW       | G650 X-CHALLENGE    |                     1 |            4 |
| BMW  | BMW       | G650 X-COUNTRY      |                     1 |           59 |
| BMW  | BMW       | G650 X-MOTO         |                     1 |           14 |
| BMW  | BMW       | HP2 ENDURO          |                     1 |           14 |
| BMW  | BMW       | HP2 MEGAMOTO        |                     1 |           14 |
| BMW  | BMW       | HP2 SPORT           |                     1 |           14 |
| BMW  | BMW       | HP4                 |                     1 |           94 |
| BMW  | BMW       | I3 BEV              |                     1 |          138 |
| BMW  | BMW       | I3 REX              |                     1 |          138 |
| BMW  | BMW       | I8                  |                     1 |           64 |
| BMW  | BMW       | K1                  |                     1 |           36 |
| BMW  | BMW       | K100                |                     1 |           12 |
| BMW  | BMW       | K100 K1             |                     1 |           35 |
| BMW  | BMW       | K100 LT             |                     1 |           29 |
| BMW  | BMW       | K100 RS             |                     1 |           29 |
| BMW  | BMW       | K100 RT             |                     1 |           29 |
| BMW  | BMW       | K1100 LT            |                     1 |           70 |
| BMW  | BMW       | K1100 RS            |                     1 |            2 |
| BMW  | BMW       | K1200 GT            |                     1 |          128 |
| BMW  | BMW       | K1200 LT            |                     1 |           38 |
| BMW  | BMW       | K1200 LT HIGHLINE   |                     1 |           38 |
| BMW  | BMW       | K1200 R             |                     1 |           19 |
| BMW  | BMW       | K1200 RS            |                     1 |           89 |
| BMW  | BMW       | K1200 S             |                     1 |          128 |
| BMW  | BMW       | K1300 GT            |                     1 |            4 |
| BMW  | BMW       | K1300 R             |                     1 |            4 |
| BMW  | BMW       | K1300 S             |                     1 |           64 |
| BMW  | BMW       | K1600 GT            |                     1 |           64 |
| BMW  | BMW       | K1600 GTL           |                     1 |           64 |
| BMW  | BMW       | K75                 |                     1 |           70 |
| BMW  | BMW       | K75 C               |                     1 |           29 |
| BMW  | BMW       | K75 C/T             |                     1 |           29 |
| BMW  | BMW       | K75 RT              |                     1 |           36 |
| BMW  | BMW       | K75 S               |                     1 |           34 |
| BMW  | BMW       | L7                  |                     1 |           29 |
| BMW  | BMW       | M COUPE             |                     1 |           89 |
| BMW  | BMW       | M ROADSTER          |                     1 |           31 |
| BMW  | BMW       | M235I               |                     1 |           64 |
| BMW  | BMW       | M235XI              |                     1 |          142 |
| BMW  | BMW       | M3                  |                     1 |           34 |
| BMW  | BMW       | M3 AUTOMATIC        |                     1 |           31 |
| BMW  | BMW       | M3 CI               |                     1 |           89 |
| BMW  | BMW       | M4                  |                     1 |          142 |
| BMW  | BMW       | M5                  |                     1 |           59 |
| BMW  | BMW       | M6                  |                     1 |           59 |
| BMW  | BMW       | M6 GRAN COUPE       |                     1 |          138 |
| BMW  | BMW       | R NINE T            |                     1 |          138 |
| BMW  | BMW       | R100                |                     1 |           36 |
| BMW  | BMW       | R100 CS             |                     1 |            6 |
| BMW  | BMW       | R100 GS             |                     1 |           34 |
| BMW  | BMW       | R100 GS PARISDAKAR  |                     1 |           34 |
| BMW  | BMW       | R100 GSPD           |                     1 |           34 |
| BMW  | BMW       | R100 GSPD CL        |                     1 |           66 |
| BMW  | BMW       | R100 R              |                     1 |            2 |
| BMW  | BMW       | R100 R CLASS        |                     1 |           66 |
| BMW  | BMW       | R100 R MYSTIC       |                     1 |            2 |
| BMW  | BMW       | R100 RS             |                     1 |           56 |
| BMW  | BMW       | R100 RT             |                     1 |           70 |
| BMW  | BMW       | R100 RT CLASS       |                     1 |           66 |
| BMW  | BMW       | R1100 GS            |                     1 |            2 |
| BMW  | BMW       | R1100 R             |                     1 |          113 |
| BMW  | BMW       | R1100 RL            |                     1 |           89 |
| BMW  | BMW       | R1100 RS            |                     1 |            2 |
| BMW  | BMW       | R1100 RT            |                     1 |           46 |
| BMW  | BMW       | R1100 S             |                     1 |           46 |
| BMW  | BMW       | R1100 S BOXERCUP    |                     1 |          128 |
| BMW  | BMW       | R1150 GS            |                     1 |            3 |
| BMW  | BMW       | R1150 GS ADVENTURE  |                     1 |           38 |
| BMW  | BMW       | R1150 R             |                     1 |           89 |
| BMW  | BMW       | R1150 R ROCKSTER    |                     1 |           40 |
| BMW  | BMW       | R1150 RS            |                     1 |           38 |
| BMW  | BMW       | R1150 RT            |                     1 |          128 |
| BMW  | BMW       | R1200 C             |                     1 |           89 |
| BMW  | BMW       | R1200 C INDEPENDENT |                     1 |           89 |
| BMW  | BMW       | R1200 C MONTAUK     |                     1 |          128 |
| BMW  | BMW       | R1200 C PHOENIX     |                     1 |           38 |
| BMW  | BMW       | R1200 CL            |                     1 |           40 |
| BMW  | BMW       | R1200 GS            |                     1 |          138 |
| BMW  | BMW       | R1200 GS ADVENTURE  |                     1 |           64 |
| BMW  | BMW       | R1200 LT            |                     1 |           89 |
| BMW  | BMW       | R1200 R             |                     1 |          102 |
| BMW  | BMW       | R1200 RS            |                     1 |          142 |
| BMW  | BMW       | R1200 RT            |                     1 |            5 |
| BMW  | BMW       | R1200 RT-P          |                     1 |           59 |
| BMW  | BMW       | R1200 S             |                     1 |           59 |
| BMW  | BMW       | R1200 ST            |                     1 |          128 |
| BMW  | BMW       | R45                 |                     1 |          155 |
| BMW  | BMW       | R50                 |                     1 |            1 |
| BMW  | BMW       | R60                 |                     1 |            1 |
| BMW  | BMW       | R65                 |                     1 |          155 |
| BMW  | BMW       | R65 LS              |                     1 |           56 |
| BMW  | BMW       | R650 ST             |                     1 |           13 |
| BMW  | BMW       | R69                 |                     1 |            1 |
| BMW  | BMW       | R75                 |                     1 |          161 |
| BMW  | BMW       | R80                 |                     1 |          155 |
| BMW  | BMW       | R80 GS              |                     1 |           56 |
| BMW  | BMW       | R80 RT              |                     1 |           56 |
| BMW  | BMW       | R80 ST              |                     1 |           56 |
| BMW  | BMW       | R850 R              |                     1 |           13 |
| BMW  | BMW       | R90                 |                     1 |           26 |
| BMW  | BMW       | R900 RT             |                     1 |           59 |
| BMW  | BMW       | S 1000 R            |                     1 |           64 |
| BMW  | BMW       | S 1000 RR           |                     1 |            5 |
| BMW  | BMW       | S 1000 XR           |                     1 |          142 |
| BMW  | BMW       | X1 SDRIVE28I        |                     1 |            5 |
| BMW  | BMW       | X1 XDRIVE28I        |                     1 |            5 |
| BMW  | BMW       | X1 XDRIVE35I        |                     1 |          138 |
| BMW  | BMW       | X3 2.5I             |                     1 |          128 |
| BMW  | BMW       | X3 3.0I             |                     1 |           68 |
| BMW  | BMW       | X3 3.0SI            |                     1 |           59 |
| BMW  | BMW       | X3 SDRIVE28I        |                     1 |          138 |
| BMW  | BMW       | X3 XDRIVE28D        |                     1 |          138 |
| BMW  | BMW       | X3 XDRIVE28I        |                     1 |          102 |
| BMW  | BMW       | X3 XDRIVE30I        |                     1 |           68 |
| BMW  | BMW       | X3 XDRIVE35I        |                     1 |          102 |
| BMW  | BMW       | X4 XDRIVE28I        |                     1 |          138 |
| BMW  | BMW       | X4 XDRIVE35I        |                     1 |          138 |
| BMW  | BMW       | X5 3.0I             |                     1 |           89 |
| BMW  | BMW       | X5 4.4I             |                     1 |            3 |
| BMW  | BMW       | X5 4.6IS            |                     1 |            3 |
| BMW  | BMW       | X5 4.8I             |                     1 |           59 |
| BMW  | BMW       | X5 4.8IS            |                     1 |          128 |
| BMW  | BMW       | X5 M                |                     1 |          102 |
| BMW  | BMW       | X5 SDRIVE35I        |                     1 |          138 |
| BMW  | BMW       | X5 XDRIVE30I        |                     1 |           68 |
| BMW  | BMW       | X5 XDRIVE35D        |                     1 |           68 |
| BMW  | BMW       | X5 XDRIVE35I        |                     1 |          102 |
| BMW  | BMW       | X5 XDRIVE48I        |                     1 |           68 |
| BMW  | BMW       | X5 XDRIVE50I        |                     1 |          102 |
| BMW  | BMW       | X6                  |                     1 |           68 |
| BMW  | BMW       | X6 HYBRID           |                     1 |          102 |
| BMW  | BMW       | X6 M                |                     1 |          102 |
| BMW  | BMW       | X6 SDRIVE35I        |                     1 |          138 |
| BMW  | BMW       | X6 XDRIVE35I        |                     1 |          102 |
| BMW  | BMW       | X6 XDRIVE50I        |                     1 |           94 |
| BMW  | BMW       | Z3 1.9              |                     1 |           13 |
| BMW  | BMW       | Z3 2.3              |                     1 |           46 |
| BMW  | BMW       | Z3 2.5              |                     1 |           89 |
| BMW  | BMW       | Z3 2.8              |                     1 |           13 |
| BMW  | BMW       | Z3 3.0              |                     1 |           89 |
| BMW  | BMW       | Z4 2.5              |                     1 |            3 |
| BMW  | BMW       | Z4 3.0              |                     1 |            3 |
| BMW  | BMW       | Z4 3.0SI            |                     1 |           59 |
| BMW  | BMW       | Z4 SDRIVE28I        |                     1 |           94 |
| BMW  | BMW       | Z4 SDRIVE30I        |                     1 |          102 |
| BMW  | BMW       | Z4 SDRIVE35I        |                     1 |           94 |
| BMW  | BMW       | Z4 SDRIVE35IS       |                     1 |           94 |
| BMW  | BMW       | Z8                  |                     1 |            3 |
+------+-----------+---------------------+-----------------------+--------------+
*/



-- returns all unique BMW Models
SELECT make, model
FROM lynx_development.polk_models
INNER JOIN lynx_development.polk_makes
ON polk_makes.id = polk_models.polk_make_id
WHERE make = 'BMW'
GROUP BY model;


DESCRIBE lynx_development.polk_years;
/*
+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| id    | int(11)      | NO   | PRI | NULL    | auto_increment |
| year  | varchar(255) | YES  | UNI | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
*/

-- select all bmw models made in 2016
-- ————————————————————————————————————
SELECT make, model, COUNT(DISTINCT model), year
FROM lynx_development.polk_models
INNER JOIN lynx_development.polk_makes
ON polk_makes.id = polk_models.polk_make_id
INNER JOIN lynx_development.polk_years
ON polk_makes.polk_year_id = polk_years.id
WHERE make = 'BMW' AND year = '2016'
GROUP BY model;

/*
+------+----------------+-----------------------+------+
| make | model          | COUNT(DISTINCT model) | year |
+------+----------------+-----------------------+------+
| BMW  | 228 I          |                     1 | 2016 |
| BMW  | 228 XI         |                     1 | 2016 |
| BMW  | 320 I          |                     1 | 2016 |
| BMW  | 328 D          |                     1 | 2016 |
| BMW  | 328 I          |                     1 | 2016 |
| BMW  | 328 I SULEV    |                     1 | 2016 |
| BMW  | 328 XI         |                     1 | 2016 |
| BMW  | 328 XI SULEV   |                     1 | 2016 |
| BMW  | 328 XIGT       |                     1 | 2016 |
| BMW  | 335 I          |                     1 | 2016 |
| BMW  | 335 XI         |                     1 | 2016 |
| BMW  | 335 XIGT       |                     1 | 2016 |
| BMW  | 428 I          |                     1 | 2016 |
| BMW  | 428 XI         |                     1 | 2016 |
| BMW  | 428 XI SULEV   |                     1 | 2016 |
| BMW  | 435 I          |                     1 | 2016 |
| BMW  | 435 XI         |                     1 | 2016 |
| BMW  | 640 I          |                     1 | 2016 |
| BMW  | 640 XI         |                     1 | 2016 |
| BMW  | 650 I          |                     1 | 2016 |
| BMW  | 650 XI         |                     1 | 2016 |
| BMW  | ACTIVEHYBRID 3 |                     1 | 2016 |
| BMW  | M235I          |                     1 | 2016 |
| BMW  | M235XI         |                     1 | 2016 |
| BMW  | M3             |                     1 | 2016 |
| BMW  | M4             |                     1 | 2016 |
| BMW  | M5             |                     1 | 2016 |
| BMW  | M6             |                     1 | 2016 |
| BMW  | M6 GRAN COUPE  |                     1 | 2016 |
| BMW  | R1200 RS       |                     1 | 2016 |
| BMW  | S 1000 XR      |                     1 | 2016 |
| BMW  | X3 SDRIVE28I   |                     1 | 2016 |
| BMW  | X3 XDRIVE28D   |                     1 | 2016 |
| BMW  | X3 XDRIVE28I   |                     1 | 2016 |
| BMW  | X3 XDRIVE35I   |                     1 | 2016 |
| BMW  | X4 XDRIVE28I   |                     1 | 2016 |
| BMW  | X4 XDRIVE35I   |                     1 | 2016 |
| BMW  | X5 SDRIVE35I   |                     1 | 2016 |
| BMW  | X5 XDRIVE35D   |                     1 | 2016 |
| BMW  | X5 XDRIVE35I   |                     1 | 2016 |
| BMW  | X5 XDRIVE50I   |                     1 | 2016 |
| BMW  | X6 XDRIVE35I   |                     1 | 2016 |
| BMW  | X6 XDRIVE50I   |                     1 | 2016 |
| BMW  | Z4 SDRIVE28I   |                     1 | 2016 |
| BMW  | Z4 SDRIVE35I   |                     1 | 2016 |
| BMW  | Z4 SDRIVE35IS  |                     1 | 2016 |
+------+----------------+-----------------------+------+
*/





















