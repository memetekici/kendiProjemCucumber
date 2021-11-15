$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/features/jdbc_create.feature");
formatter.feature({
  "name": "Create Data",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@DBCreate"
    }
  ]
});
formatter.background({
  "name": "User connected to the database",
  "description": "",
  "keyword": "Background"
});
formatter.step({
  "name": "user connects to the application database",
  "keyword": "Given "
});
formatter.match({
  "location": "database_stepdefinitions.DBUpdate_StepDefinitions.user_connects_to_the_application_database()"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "Creating new Hotel",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@DBCreate"
    }
  ]
});
formatter.step({
  "name": "create a new hotel with the new data",
  "keyword": "And "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
formatter.step({
  "name": "verify if the hotel is created",
  "keyword": "Then "
});
formatter.match({});
formatter.result({
  "status": "undefined"
});
});