caterpillar
===========

ROR - Test Case Management Tool
=========================

Features Accomplished:
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
10. Tests Driven Development was achieved partially because RSpec setup took significant time. Unit Tests are added and passing. Functional and Integration Tests added but FAILING.
11. AJAX was implemented to show the child records belonging to a parent by fetching child records based on parent id. server request.
12. AJAX call implemented allows change of parent without navigating away from the page or the dialog, by simply refreshing the content based on the parent selected. This demonstrates the usability advantages of using AJAX based server calls.

Data Model:
-------------------------
Scenario and Testcase are the models in this domain with the relationship of one-to-many from Secnario to Testcase. A scenario can have multiple test cases and a test case can belong to only one scenario. Testcase has a column Scenario Id that points to the scenario it belongs to.

#### Relationship
__One-To-Many__
> Scenario 1:* Testcase

### Scenario

Id   | Name    | Feature | Status | Assignee |
-----| ------- | ------- | ------ | -------- |
1    | XYZ     | 1232    | OPEN   | John     |
2    | XYZ     | 1232    | COMPLETE| Mary |

### Testcase

Id   | Name    | Feature | Status | Assignee |Something Changed |Flagged  |Scenario Id  |
-----| ------- | ------- | ------ | -------- |----------------  |-------- |-------------|
1    | XYZ     | 1232    | OPEN   | John     |True              |False    |1            |
2    | XYZ     | 1232    | COMPLETE| Mary    |False             |False    |2            |



Following features could not be accomplished:
-------------------------
1. Heroku deployment successful but not 100% reliable. DB has been casuing a lot of trouble.
2. Sign-In feature was introduced but disabled due to a lot of issues. There is /signin route but users are not forced to authenticate themselves to use the features of this website.

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
5. Integration testing: https://www.relishapp.com/rspec/rspec-rails/docs/feature-specs/feature-spec
6. Asset Pipeline: http://guides.rubyonrails.org/asset_pipeline.html#manifest-files-and-directives
7. Unobtrusive JavaScript and Coffee: https://github.com/rails/jquery-ujs/wiki/Unobtrusive-scripting-support-for-jQuery, https://github.com/rails/jquery-ujs/wiki/ajax

