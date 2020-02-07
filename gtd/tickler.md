# reading

https://blog.soomla.com/2016/04/clv-calculation-modeling-lifetime.html
https://medium.com/@UPLTV/the-ultimate-guide-to-calculating-user-ltv-formula-tutorial-791eb5d34f6c
https://docs.snowflake.net/manuals/user-guide.html
https://www.snowflake.com/test-driving-snowflake-the-definitive-guide-to-maximizing-your-free-trial/
https://app.periscopedata.com/app/plastiq/456816/Paid-Acquisition
https://doc.periscopedata.com/article/the-periscope-data-community
review giving great feedback slide deck
https://stats.stackexchange.com/questions/178854/a-b-tests-z-test-vs-t-test-vs-chi-square-vs-fisher-exact-test#178860

# domain

### research

* start a confluence page for onboarding notes
* find papers and tutorials on customer lead scoring
* risk modeling

### general data proficiency

* learn how to join by segment correctly
* find a slice, or some major slices to model (debt, tax, rent, tuition)
* watch optimizely demo: https://optimizely.zoom.us/recording/play/tukWMVTKIpI8G4ToEty1l35ZKndLZdWtsszd3u8fLUNSSkWMUSFgjMTjz0C0Knis?continueMode=true
* review LTV calculations: https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/984809667/LTV+and+ROI+Calculation

### forecast features

* consider modeling the MAE, RMSE as time series
* add features based on lead times
  * consider lead times for wire (same biz day), ach (3 biz days), check (8 biz days), expedited check (3 biz days)
  * consider end of month payment due date
* split by business, personal
* split by category
* write decent OOP code for forecasting: start with a design
* forecast users, transactions, revenue

### daily dashboard model

* add monthly cumulative goal, forecast, actual
* add cumulative residuals

### visualizations

* geomap / heatmap (hour, dow) of users / transactions / volume
* split by biz vs per and category

### forecast code

* oop design consider more slicing of data
* standard structure for sarimax and gam
* cross validation, hyperparameter tuning, feature elimination objects
* standard figures for monitoring
* try R packages for implementation practice
* filter out large volume transactions from forecast, e.g., largest 30 trans

# setup

### expenses

* get license for sublime

### laptop

* make a utilities repo for periscope, sql, r, python
* configure git/github with tufterati

### interns and new hires

* update the scoring guide for interviewing interns
* create wiki documenting dashboards and views
* Bella

```
Paid Ads: https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/949420075/Paid+Ads+Report+Updates
Permissible Investment Report: https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/971145686/Accounting+-+Permissible+Investment+Report
TUTV-Monthly Shifting Analysis: https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/971047108/TUTV+-+Monthly+Leads+Shifting+Analysis
Vertical Seasonal Campaign Proposal: https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/956596670/Vertical+Seasonal+Campaign+Proposal
LTV and ROI Calculation:
https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/984809667/LTV+and+ROI+Calculation
Affiliates Clean-up: https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/984842521/Affiliates+Clean-up
SMBaes Historical Activation Promo Result and Analysis: https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/965771566/SMBaes+Historical+Activation+Promo+Result+and+Analysis
Users Table - Simplified Version: https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/976716281/Users+Table+-+Simplified+Version
Risk Chargeback report: https://app.periscopedata.com/app/plastiq/423467/Risk---Chargeback-Dashboard (edited) 
```

* Jenny

```
Generate Email List:
https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/967508177/Generating+Email+Lists
Monthly Tracking Dashboards Explanation:
https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/965182516/TUTV+Monthly+Performance+Tracking+Dashboards
Statistical Test Template:
https://docs.google.com/spreadsheets/d/1eVUvgA1eypE8S0jbWu-AD7fZXKvwYV63ppVvlNGb8Fs/edit?usp=sharing
AM Performance Table:
https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/985007545/AM+Performance+Table
Payments Table Update: https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/971047857/Payments+Table+Update
Payees Table Update:
https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/984842436/Payees+Table+Update
How-to Articles:
query users that are eligible for a promo:
https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/963281181/How+to+query+users+that+are+eligible+for+a+certain+promotion
email list pulling request setup in Jira:
https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/922320956/How+To+Request+Email+List+Pull+using+Jira
check list when pulling email list:
https://plastiqwiki.atlassian.net/wiki/spaces/ANALYTICS/pages/917798991/Checklist+for+Email+Planning (edited) 
```

# technical

### monitoring

* outline a dashboard to help me monitor my views

### version control

* setup files in infrastructure repo to import code

### periscope

* set up python periscope header and footer for local compatibility
* design workflow for productionized models in periscope

### snowflake

* review snowflake sql dml and ddl
* snowflake tutorials
https://docs.snowflake.net/manuals/user-guide.html
https://www.snowflake.com/test-driving-snowflake-the-definitive-guide-to-maximizing-your-free-trial/

### python

* plug in logging to code
* add proper function descriptions and templates
* tests for sql queries
* start a project with rstudio packages installed for data reading and plotting
* document outline project
* play with google colab: read, write, import

### plotly

* figure out sisense handshake with local
* generate nicer time series plots
* generate some plots with plotly/tufterati
