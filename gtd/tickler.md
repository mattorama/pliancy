# reading

https://docs.snowflake.net/manuals/user-guide.html
https://www.snowflake.com/test-driving-snowflake-the-definitive-guide-to-maximizing-your-free-trial/
https://en.wikipedia.org/wiki/Dun_%26_Bradstreet
https://app.periscopedata.com/app/plastiq/456816/Paid-Acquisition
https://doc.periscopedata.com/article/the-periscope-data-community

# domain

### research

* start a confluence page for onboarding notes
* find papers and tutorials on customer lead scoring

### general data proficiency

* learn how to join by segment correctly
* find a slice, or some major slices to model (debt, tax, rent, tuition)

### forecast features

* consider modeling the MAE, RMSE as time series
* add features based on lead times
  * consider lead times for wire (same biz day), ach (3 biz days), check (8 biz days), expedited check (3 biz days)
  * consider end of month payment due date
* split by business, personal
* split by category

### daily dashboard model

* document the views in the pipeline in the repo, then add to confluence
* pull current daily volume for the month and plot with forecast
* add monthly cumulative goal, forecast, actual
* add cumulative residuals

### forecast code

* oop design consider more slicing of data
* standard structure for sarimax and gam
* cross validation, hyperparameter tuning, feature elimination objects
* standard figures for monitoring
* try R packages for implementation practice

# setup

### expenses

* get license for sublime

### laptop

* make a utilities repo for periscope, sql, r, python
  * (tufterati, trapezion)
* add secondary git account for dotfiles and pliancy
  * set remote url
  * check mwplastiq can clone infrastructure repo

### interns and new hires

* update the scoring guide for interviewing interns
* draft notes for team building

# technical

### version control

* https://github.com/plastiq/infrastructure folder
* setup files there to import code

### periscope

* set up python periscope header and footer for local compatibility
* design workflow for productionized models in periscope

### snowflake

* set up python and r to query snowflake
* review snowflake sql dml and ddl
* snowflake tutorials

### python

* plug in logging to code
* add proper function descriptions and templates
* tests for sql queries
* setup database for testing queries
* start a project with python packages installed for data reading and plotting
* start a project with rstudio packages installed for data reading and plotting
* document outline project
* play with google colab: read, write, import

### plotly

* figure out periscope handshake with local
* generate nicer time series plots

