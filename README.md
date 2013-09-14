caterpillar
===========

ROR - Test Case Management Tool
=========================

Features Done:
-------------------------
The tools has the following functionality as explained in the mock-ups.

1. User can add/edit/delete Test Scenarios
2. User can add/edit/delete Test Cases
3. Admin can add/edit/delete Users
4. Website has black and white theme with minimalistic styling accomplished.
5. Validations have not been added to the forms.
6. It was understood that DB Level FK was not required so continued with ActiveRecord relationships, without modifying db to have a SQL FK Constraint.
7. User management was added.
8. Sign Up was added.


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
2. Rails MVC was exploited thoroughly, except for relations and validations.
3. Stylesheets and templates for layouts were used sparringly.
4. Routes configured were very basic.

References:
-------------------------
1. Style Sheet Hints and Bits: http://sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html
2. Image Assets were downloaded from https://www.iconfinder.com/free_icons The content on this site is freely available for download and usage.
3. Rails Related bits: http://api.rubyonrails.org/classes/ActiveRecord/Migration.html
4. JQuery JS Examples scripts were borrowed and modified to suite the website behavior. One example being http://jqueryui.com/dialog/#modal-form
5. SASS CSS default templates were used at many places and some of custom css was added. One example http://getbootstrap.com/css/#forms and some understanding was developed from this source http://sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html

