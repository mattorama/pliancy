# PAYMENTS

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select registered_at, reg_completed_at, activated_at, first_payee_added_at from users where id = 585501 limit 1;
    registered_at    |  reg_completed_at   |    activated_at     | first_payee_added_at 
---------------------+---------------------+---------------------+----------------------
 2017-01-28 13:12:14 | 2017-01-28 13:29:51 | 2017-02-17 10:23:49 | 2017-01-28 13:34:39
(1 row)

Time: 21208.725 ms (00:21.209)
```

#### plastiq_data.staged_payments

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select id, date(date_created) as date_created, date("datetime") as "datetime", date(arrival_date) as arrival_date, status, state from staged_payments where user_id = 585501 order by 2;
   id    | date_created |  datetime  | arrival_date | status  |   state   
---------+--------------+------------+--------------+---------+-----------
 1137109 | 2017-01-28   | 1970-01-01 | (null)       | ACTIVE  | STAGED
 1151488 | 2017-02-04   | 1970-01-01 | (null)       | SUCCESS | COMPLETED
 1242720 | 2017-03-18   | 1970-01-01 | (null)       | SUCCESS | COMPLETED
 1280141 | 2017-04-02   | 1970-01-01 | (null)       | SUCCESS | COMPLETED
 2183176 | 2018-04-21   | 1970-01-01 | 2018-05-01   | SUCCESS | COMPLETED
 2288352 | 2018-05-19   | 1970-01-01 | (null)       | SUCCESS | COMPLETED
 2646615 | 2018-08-22   | 1970-01-01 | 2018-09-01   | ACTIVE  | STAGED
 3262673 | 2019-03-16   | 1970-01-01 | (null)       | SUCCESS | COMPLETED
 3345420 | 2019-04-13   | 1970-01-01 | (null)       | SUCCESS | COMPLETED
 3910123 | 2019-10-12   | 1970-01-01 | (null)       | SUCCESS | COMPLETED
(10 rows)

Time: 58649.375 ms (00:58.649)
```

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select id, payment_id, date(date_created) as date_created, date(arrival_date) as arrival_date, success, status from staged_payments where user_id = 585501 order by 3;
   id    | payment_id | date_created | arrival_date | success | status  
---------+------------+--------------+--------------+---------+---------
 1137109 |          0 | 2017-01-28   | (null)       |       0 | ACTIVE
 1151488 |          0 | 2017-02-04   | (null)       |       0 | SUCCESS
 1242720 |          0 | 2017-03-18   | (null)       |       0 | SUCCESS
 1280141 |          0 | 2017-04-02   | (null)       |       0 | SUCCESS
 2183176 |    1710692 | 2018-04-21   | 2018-05-01   |       1 | SUCCESS
 2288352 |          0 | 2018-05-19   | (null)       |       0 | SUCCESS
 2646615 |          0 | 2018-08-22   | 2018-09-01   |       0 | ACTIVE
 3262673 |          0 | 2019-03-16   | (null)       |       0 | SUCCESS
 3345420 |          0 | 2019-04-13   | (null)       |       0 | SUCCESS
 3910123 |          0 | 2019-10-12   | (null)       |       0 | SUCCESS
(10 rows)

Time: 36621.649 ms (00:36.622)
```

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select * from staged_payments where user_id = 585501 limit 1;
-[ RECORD 1 ]---+-----------------------------------------------------
id              | 1137109
user_id         | 585501
merchant_id     | 134291
payee_id        | 478068
employee_id     | 0
card_id         | 0
schedule_id     | 0
payment_id      | 0
type            | Default Payment Information
answers         | (null)
amount          | 1750.00
fee             | 0
amounts         | 
memo            | rent for March 2017
user_rate       | 0
merchant_rate   | 0
cover           | 0
subsidy         | 0
date_created    | 2017-01-28 13:35:03
datetime        | 1970-01-01 00:00:00
arrival_date    | (null)
demo            | 0
success         | 0
source          | cardholder
platform_result | 0
form_id         | 2672
state           | STAGED
payment_type    | SCHEDULED
status          | ACTIVE
schedule        | (null)
datetimes       | a:1:{i:0;i:1487318400;}
user_ip         | 71.202.209.44
http_referer    | https://www.plastiq.com/cardholder_ui/recipients/add
a_dfp           | (null)
reference_type  | (null)
reference_id    | (null)
channel         | 1
adjusted_rate   | 0
batch_id        | 0
payment_source  | cardholder
authenticated   | 1

Time: 28123.058 ms (00:28.123)
```

#### plastiq_data.scheduled_payments

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select staged_payment_id as staged, date(date_created) as date_created, date("datetime") as "datetime", date(arrival_date) as arrival_date, success, status from scheduled_payments where user_id = 585501 order by 1;
 staged | date_created |  datetime  | arrival_date | success | status  
-------------------+--------------+------------+--------------+--------
1151488 | 2017-02-04   | 2017-02-17 | 2017-02-28   |       1 | SUCCESS
1242720 | 2017-03-18   | 2017-03-22 | 2017-03-31   |       1 | SUCCESS
1280141 | 2017-04-02   | 2017-04-17 | 2017-04-26   |       1 | SUCCESS
2288352 | 2018-05-19   | 2018-05-21 | 2018-05-31   |       1 | SUCCESS
3262673 | 2019-03-16   | 2019-03-20 | 2019-03-29   |       1 | SUCCESS
3345420 | 2019-04-13   | 2019-04-21 | 2019-04-30   |       1 | SUCCESS
3910123 | 2019-10-12   | 2019-11-18 | 2019-11-27   |       0 | ABORT
(7 rows)

Time: 55283.926 ms (00:55.284)
```

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select staged_payment_id as staged, payment_id, date(arrival_date) as arrival_date, success, status from scheduled_payments where user_id = 585501 order by 1;         
 staged  | payment_id | arrival_date | success | status  
---------+------------+--------------+---------+---------
 1151488 |     970354 | 2017-02-28   |       1 | SUCCESS
 1242720 |    1026070 | 2017-03-31   |       1 | SUCCESS
 1280141 |    1077593 | 2017-04-26   |       1 | SUCCESS
 2288352 |    1783808 | 2018-05-31   |       1 | SUCCESS
 3262673 |    2553314 | 2019-03-29   |       1 | SUCCESS
 3345420 |    2619681 | 2019-04-30   |       1 | SUCCESS
 3910123 |         -1 | 2019-11-27   |       0 | ABORT
(7 rows)

Time: 65494.595 ms (01:05.495)
```

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select * from scheduled_payments where user_id = 585501 limit 1;
-[ RECORD 1 ]---
id                | 443768
user_id           | 585501
merchant_id       | 134291
employee_id       | 0
card_id           | 567072
schedule_id       | 0
payment_id        | 970354
type              | Default Payment Information
answers           | (null)
amount            | 1750.00
fee               | 35
amounts           | <snip>
user_rate         | 2
merchant_rate     | 2.5
cover             | 0
subsidy           | 0
date_created      | 2017-02-04 20:59:14
datetime          | 2017-02-17 00:00:00
arrival_date      | 2017-02-28 00:00:00
demo              | 0
success           | 1
platform_result   | 0
form_id           | 2672
payee_id          | 478068
staged_payment_id | 1151488
memo              | rent for March 2017
state             | COMPLETED
payment_type      | SCHEDULED
status            | SUCCESS
user_ip           | 71.202.209.44
a_dfp             | (null)
channel           | 1
source            | cardholder
source_currency   | (null)
combine_fee       | 0
batch_id          | 0
payment_source    | cardholder

Time: 34648.964 ms (00:34.649)
```

#### plastiq_data.payments

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select id, card_id, staged_payment_id as staged, date("datetime") as "datetime", date(arrival_date) as arrival_date, success from payments where user_id = 585501 order by 4;
   id    | card_id | staged  |  datetime  | arrival_date | success 
---------+---------+---------+------------+--------------+---------
  970354 |  567072 | 1151488 | 2017-02-17 | 2017-02-28   |       1
 1026070 |  597364 | 1242720 | 2017-03-22 | 2017-03-31   |       1
 1077593 |  567072 | 1280141 | 2017-04-17 | 2017-04-26   |       1
 1710692 |  899413 | 2183176 | 2018-04-21 | 2018-05-01   |       1
 1783808 |  899413 | 2288352 | 2018-05-21 | 2018-05-31   |       1
 2553314 | 1195464 | 3262673 | 2019-03-20 | 2019-03-29   |       1
 2619681 | 1195464 | 3345420 | 2019-04-21 | 2019-04-30   |       1
(7 rows)

Time: 54444.977 ms (00:54.445)
```

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select * from payments where user_id = 585501 limit 1; 
-[ RECORD 1 ]-------------------------------------------
id                   | 970354
user_id              | 585501
merchant_id          | 134291
employee_id          | 0
card_id              | 567072
promotion_id         | 0
amount               | 1750.00
fee                  | 35
amounts              | <snip>
user_rate            | 2
merchant_rate        | 2.5
cover                | 0
subsidy              | 0
type                 | Default Payment Information
answers              | (null)
auth_response        | a:0:{}
merchant_response    | <snip>
datetime             | 2017-02-17 10:23:49
arrival_date         | 2017-02-28 10:23:49
demo                 | 0
source               | cardholder
success              | 1
merchant_cancelled   | 
plastiq_cancelled    | 
transaction_id       | 5143465900876028638
plastiq_payment_id   | 5550571389756129189
merchant_payment_id  | 5874707111319037561
platform_result      | 0
referenceid          | 970354
payment_method_id    | (null)
principal_refundable | (null)
address_id           | (null)
form_id              | 2672
funding_type         | CHECK
payee_id             | 478068
memo                 | rent for March 2017
staged_payment_id    | 1151488
user_ip              | 0.0.0.0
a_dfp                | (null)
channel              | 0
source_currency      | (null)
combine_fee          | 0
batch_id             | 0
payment_type         | SCHEDULED
payment_source       | cardholder
charge_principal     | (null)
tms                  | 2019-12-01 03:08:25
authenticated        | 1

Time: 4715.356 ms (00:04.715)
```

#### periscope_views.staged_payments

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select id, success, date("datetime") as datetime, date(arrival_date) as arrival_date from staged_payments where user_id = 585501 order by 4;
   id    | success |  datetime  | arrival_date 
---------+---------+------------+--------------
  970354 |       1 | 2017-02-17 | 2017-02-28
 1026070 |       1 | 2017-03-22 | 2017-03-31
 1077593 |       1 | 2017-04-17 | 2017-04-26
 1710692 |       1 | 2018-04-21 | 2018-05-01
 1783808 |       1 | 2018-05-21 | 2018-05-31
 2553314 |       1 | 2019-03-20 | 2019-03-29
 2619681 |       1 | 2019-04-21 | 2019-04-30
(7 rows)

Time: 101868.408 ms (01:41.868)
```

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select * from payments where user_id = 585501;
-[ RECORD 1 ]-------------+--------------------------------------------
id                        | 1077593
submitted_at              | 2017-04-17 10:27:36
principal                 | 1000.00
fee                       | 22.50
volume                    | 1022.50
is_expedited              | 0
disbursement_method       | CHECK
memo                      | rent for May 2017 (check 1 of 2)
ip                        | 0.0.0.0
type                      | Default Payment Information
submission_schedule       | SCHEDULED
was_scheduled             | 1
scheduled_at              | 2017-04-02 12:07:26
gross_principal           | 1000.00
gross_fee                 | 22.50
gross_volume              | 1022.50
is_refunded               | 0
is_fully_refunded         | 0
refunded_principal        | 0.00
refunded_fee              | 0.00
refunded_volume           | 0.00
was_user_first_payment    | 0
was_international_wire    | 0
t_id                      | 2344044920947031077
m_id                      | 3404003044650914481
p_id                      | 5b57b6e4-aa5c-464e-b7e9-f75259139ca9
is_actual                 | 1
processor                 | Amex
plan_name                 | 3047466420
processed_vertical        | Rent & Real Estate
processed_mcc             | 6513
revenue                   | 22.50
discount                  | 22.00
rebate_amount             | 0.00
profit                    | 0.50
interchange_fee           | 22.00
assessment_fee            | 0.00
processor_fee             | 0.00
cross_border_fee          | 0.00
other_revenue             | 0.00
discount_reimbursed       | 0.00
gross_interchange_fee     | 22.00
gross_assessment_fee      | 0.00
gross_processor_fee       | 0.00
gross_cross_border_fee    | 0.00
gross_other_revenue       | 0.00
gross_discount_reimbursed | 0.00
user_id                   | 585501
user_first_name           | Matthew
user_last_name            | Percival
user_name                 | Matthew Percival
user_email                | matthew.percival@gmail.com
user_is_active            | 1
user_registered_at        | 2017-01-28 13:12:14
user_reg_completed_at     | 2017-01-28 13:29:51
user_activated_at         | 2017-02-17 10:23:49
user_is_smb               | 0
user_is_smb_old           | 0
was_new_biz_activation    | 0
card_id                   | 567072
card_cardholder_name      | Matthew W Percival
card_short_pan            | 1000
card_zip                  | 94702
card_is_active            | 0
card_brand                | American Express
card_bin                  | 379806
card_issuing_bank         | AMERICAN EXPRESS COMPANY
card_issuing_bank_name    | AMERICAN EXPRESS
card_issuing_bank_country | United States
card_type                 | CREDIT
card_level                | PERSONAL
card_bingrp               | (null)
was_biz_card              | 0
was_small_business_card   | 0
card_billing_city         | Berkeley
card_billing_state        | CA
was_plv                   | 0
payee_id                  | 478068
payee_created_at          | 2017-01-28 13:34:39
payee_is_active           | 1
payee_manually_added      | 1
payee_merchant_id         | 134291
payee_merchant_name       | Insun Son
biller_status             | NOT A BILLER
payee_country             | US
payee_vertical            | Residential Rent & Condo Fees
payee_activated_at        | 2017-02-17 10:23:49
payee_region              | United States
day                       | 17
day_of_week               | 1
day_of_year               | 107
week                      | 16
week_of_month             | 3
quarter                   | 2
year                      | 2017
yearmonth                 | 201704
yearmonthday              | 20170417
is_weekday                | 1
is_holiday                | 0
channel_bucket            | sales_and_marketing
channel_grouping          | direct
channel_grouping_sub1     | cardholder_ui
channel_grouping_sub2     | (null)
was_account_managed       | 0
account_manager           | (null)
was_sales_managed         | 0
sales_manager             | (null)
chargeback_result         | (null)
chargeback_amount         | (null)
chargeback_received_at    | (null)
was_chargedback           | 0
chargeback_loss           | 0
chargeback_debited        | 0
chargeback_credited       | 0
into_datamart_at          | 2017-04-17 10:39:20
into_hammurabi_at         | 2017-04-17 09:38:41
captured_at               | 2017-04-17 22:44:51
committed_at              | (null)
arrived_at                | 2017-04-26 10:27:36
refunded_at               | (null)
was_single_trans          | 0
```

#### periscope_views.staged_scheduled_payments

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select * from periscope_views.staged_scheduled_payments where user_id = 585501
-[ RECORD 1 ]+----------------------------
id           | 443768
user_id      | 585501
merchant_id  | 134291
card_id      | 567072
payment_id   | 970354
payee_id     | 478068
type         | Default Payment Information
amount       | 1750
fee          | 35
date_created | 2017-02-04 20:59:14
datetime     | 2017-02-17 00:00:00
arrival_date | 2017-02-28 00:00:00
schedule_id  | 0
state        | COMPLETED
status       | SUCCESS

Time: 5522.833 ms (00:05.523)
```

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select id, date(date_created) as date_created, date(datetime) as datetime, date(arrival_date) arrival_date from periscope_views.staged_scheduled_payments where user_id = 585501 order by 1;
   id    | date_created |  datetime  | arrival_date 
---------+--------------+------------+--------------
  443768 | 2017-02-04   | 2017-02-17 | 2017-02-28
  482819 | 2017-03-18   | 2017-03-22 | 2017-03-31
  496260 | 2017-04-02   | 2017-04-17 | 2017-04-26
 1016733 | 2018-05-19   | 2018-05-21 | 2018-05-31
 1646596 | 2019-03-16   | 2019-03-20 | 2019-03-29
 1693480 | 2019-04-13   | 2019-04-21 | 2019-04-30
(6 rows)

Time: 23191.250 ms (00:23.191)
```

#### periscope_views.payments

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select id, date(scheduled_at) as scheduled_at, date(submitted_at) as submitted_at, was_scheduled, date(arrived_at) arrived_at from payments where user_id = 585501 order by 1;
   id    | scheduled_at | submitted_at | was_scheduled | arrived_at 
---------+--------------+--------------+---------------+------------
  970354 | 2017-02-04   | 2017-02-17   |             1 | 2017-02-28
 1026070 | 2017-03-18   | 2017-03-22   |             1 | 2017-03-31
 1077593 | 2017-04-02   | 2017-04-17   |             1 | 2017-04-26
 1710692 | (null)       | 2018-04-21   |             0 | 2018-05-01
 1783808 | 2018-05-19   | 2018-05-21   |             1 | 2018-05-31
 2553314 | 2019-03-16   | 2019-03-20   |             1 | 2019-03-29
 2619681 | 2019-04-13   | 2019-04-21   |             1 | 2019-04-30
(7 rows)

Time: 71305.860 ms (01:11.306)
```

# CARDS

#### plastiq_data.cards

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select * from cards where user_id = 585501 limit 1;
-[ RECORD 1 ]-----+-------------------------------------
id                | 597364
user_id           | 585501
card_brand_id     | 2
cardholder_name   | Matthew W Percival
pan               | (null)
token             | 2BBC10CF-95FB-0A32-BCA1-D6E4CBDE4067
short_pan         | 9338
exp_month         | 3
exp_year          | 2020
zip               | 94702
last_preauth      | 1970-01-01 00:00:00
auth_response     | 
default           | 0
active            | 0
payment_method_id | 291353158957690086301
bin_id            | 351270
address_id        | 926842
source            | (null)
nickname          | (null)
created           | 2017-03-18 22:44:44
authenticated     | 1

Time: 9370.699 ms (00:09.371)
```

#### periscope_views.cards

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select card_id, added_date, card_activation_date, card_added_Date from cards where user_id = 585501 order by 1;
 card_id |     added_date      | card_activation_date |   card_added_date   
---------+---------------------+----------------------+---------------------
  567072 | 2017-02-04 21:00:19 | 2017-02-17 10:23:49  | 2017-02-04 21:00:19
  597364 | 2017-03-18 22:44:44 | 2017-03-22 10:56:40  | 2017-03-18 22:44:44
  899413 | 2018-04-21 15:21:32 | 2018-04-21 15:36:21  | 2018-04-21 15:21:32
 1025154 | 2018-08-22 22:36:26 | (null)               | 2018-08-22 22:36:26
 1195464 | 2019-03-16 09:56:33 | 2019-03-20 03:45:59  | 2019-03-16 09:56:33
 1403526 | 2019-10-12 15:16:46 | (null)               | 2019-10-12 15:16:46
(6 rows)

Time: 12689.467 ms (00:12.689)
```

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select c.user_id, u.activated_at as user_activated_at, c.card_id, c.card_added_date, c.card_activation_date from cards as c inner join users as u on c.user_id = u.id where c.card_added_date <= u.activated_at and u.id = 585501;
 user_id |  user_activated_at  | card_id |   card_added_date   | card_activation_date 
---------+---------------------+---------+---------------------+----------------------
  585501 | 2017-02-17 10:23:49 |  567072 | 2017-02-04 21:00:19 | 2017-02-17 10:23:49
(1 row)
```

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select * from periscope_views.cards where user_id = 585501 limit 1;
-[ RECORD 1 ]-------------+-------------------------
card_id                   | 1195464
cardholder_name           | Matthew W Percival
user_id                   | 585501
short_pan                 | 2080
active                    | 0
zip                       | 94702
address_id                | 2806088
address1                  | 2316 Valley St
address2                  | C
billing_city              | Berkeley
billing_state             | CA
added_date                | 2019-03-16 09:56:33
card_cardholder_name      | Matthew W Percival
card_short_pan            | 2080
card_zip                  | 94702
card_is_active            | 0
card_brand_id             | 2
card_brand                | Visa
card_bin                  | 438857
card_issuing_bank         | JPMORGAN CHASE BANK N.A.
card_issuing_bank_name    | JPMORGAN CHASE
card_issuing_bank_country | United States
card_type                 | CREDIT
card_level                | CLASSIC
is_biz_card               | 0
is_small_business_card    | 0
bruno_classification      | 
card_bingrp               | VISA_HIGH_END_CONSUMER
card_activation_date      | 2019-03-20 03:45:59
monthly_max_spending      | 1793.75
volume                    | 3075.00
last_active_month         | 2019-04-01
inactive_12_month         | 0
datamart_card_id          | 40225866
reputation                | none
card_added_date           | 2019-03-16 09:56:33

Time: 23611.169 ms (00:23.611)
```

# PAYEES

#### plastiq_data.payees

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select * from payees where user_id = 585501;
-[ RECORD 1 ]----------------+--------------------
id                           | 478068
nickname                     | Insun Son
original_name                | Insun Son
description                  | 
payee_type                   | UNKNOWN
email                        | 
phone                        | 5104142022
user_id                      | 585501
merchant_id                  | 134291
reference_id                 | 0
notification                 | 0
active                       | 1
created                      | 2017-01-28 13:34:39
reference_type               | 
transfer_id                  | (null)
undeliverable_address_chosen | 0
is_for_business_expense      | (null)
authenticated                | 1
```

#### periscope_views.payees

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select y.user_id, u.activated_at as user_activated_at, y.id as payee_id, y.created_at as payee_created_at, y.activated_at as payee_activation_date from payees as y inner join users as u on y.user_id = u.id where y.created_at <= u.activated_at and u.id = 585501;
 user_id |  user_activated_at  | payee_id |  payee_created_at   | payee_activation_date 
---------+---------------------+----------+---------------------+-----------------------
  585501 | 2017-02-17 10:23:49 |   478068 | 2017-01-28 13:34:39 | 2017-02-17 10:23:49
(1 row)

Time: 6281.655 ms (00:06.282)
```

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select id, created_at, activated_at from payees where user_id = 585501;
   id   |     created_at      |    activated_at     
--------+---------------------+---------------------
 478068 | 2017-01-28 13:34:39 | 2017-02-17 10:23:49
(1 row)

Time: 7782.321 ms (00:07.782)
```

```
plastiq.periscopewarehouse.com:5439 plastiq@site_14042=# select * from payees where user_id = 585501;
-[ RECORD 1 ]-------------------+------------------------------
id                              | 478068
created_at                      | 2017-01-28 13:34:39
was_activated                   | 1
activated_at                    | 2017-02-17 10:23:49
ref_type                        | 
is_active                       | 1
undeliverable_address_chosen    | 0
was_manually_added              | 1
merchant_id                     | 134291
biller_status                   | NOT A BILLER
name                            | Insun Son
nickname                        | Insun Son
address                         | 2316 Valley St Apt B
city                            | Berkeley
state                           | CA
postal_code                     | 94702
country                         | US
vertical                        | Residential Rent & Condo Fees
was_first_payee_added           | 1
was_second_payee_added          | 0
payee_region                    | United States
user_id                         | 585501
user_name                       | Matthew Percival
user_email                      | matthew.percival@gmail.com
user_is_smb_old                 | 0
user_registered_at              | 2017-01-28 13:12:14
user_activated_at               | 2017-02-17 10:23:49
num_autoapproved                | 4
num_autorejected                | 0
num_autoescalated               | 3
num_approvals                   | 7
num_rejections                  | 0
num_escalations                 | 0
num_resets                      | 0
num_auth_requests               | 0
num_cancellations_by_user       | 0
has_been_chargedback            | 0
num_chargebacks                 | 0
chargeback_volume               | 0
has_been_chargedback_for_fraud  | 0
has_been_chargedback_for_other  | 0
is_tw_biz                       | 0
tw_biz_name                     | (null)
tw_biz_address                  | (null)
tw_biz_city                     | (null)
tw_biz_state                    | (null)
tw_biz_zip                      | (null)
tw_biz_phone                    | (null)
tw_biz_industry                 | (null)
tw_biz_industry_sub1            | (null)
tw_biz_industry_sub2            | (null)
tw_biz_num_employees            | (null)
tw_biz_num_employees_range_code | (null)
tw_biz_revenue                  | (null)
tw_biz_year_founded             | (null)

Time: 13598.128 ms (00:13.598)
```
