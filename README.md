caterpillar
===========

ROR - Test Case Management Tool
=========================

Features Done:
-------------------------
The tools has the following functionality as explained in the mock-ups.

1. User can add/edit/delete Test Scenarios
2. User can add/edit/delete Test Cases
3. User can add/edit/delete Users
4. Website has black and white theme with minimalistic styling accomplished.
5. Many basic Validations have been added to the forms. No complex rules.
6. It was understood that DB Level FK was not required so continued with ActiveRecord relationships, without modifying db to have a SQL FK Constraint.
7. User management was added.
8. Sign Up was added.
9. XML API for viewing records and lists of records for all models. (XML API for exposed for actions index,new,show)


Following features could not be accomplished:
-------------------------
1. Tests Driven Development couldn't be achieved because RSpec setup took a lot
of time was still not functional.
2. Heroku deployment kept failing after the DB was added.
3. Ajax based forms were not implemented.
4. Signin feature was introduced but disabled due to a lot of issues. There is /signin but users are not forced to authenticate themselves to use the features.


Technology Usage:
-------------------------
1. Git was used extensively.
2. Rails MVC was exploited as thoroughly as possible.
3. Stylesheets and templates for layouts were used minimally.
4. Ajax was attempted using JQuery (not fully functional.)
5. Heroku deployment was attempted (failing for db.)
6. Session management attempted (failing signin.)
7. Rails ActiveRecord pattern was used models (along with incremental migrations, relations and validations)

References:
-------------------------
1. SASS CSS default templates were used at many places and some of custom css was added. One example http://getbootstrap.com/css/#forms and some understanding was developed from this source  http://sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html
2. Image Assets were downloaded from https://www.iconfinder.com/free_icons The content on this site is freely available for download and usage.
3. Rails Related bits: http://api.rubyonrails.org/classes/ActiveRecord/Migration.html
4. JQuery JS Examples scripts were borrowed and modified to suite the website behavior. One example being http://jqueryui.com/dialog/#modal-form 

