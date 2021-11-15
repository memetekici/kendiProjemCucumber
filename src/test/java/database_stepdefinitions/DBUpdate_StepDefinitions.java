package database_stepdefinitions;

import io.cucumber.java.en.Given;
import utilities.DBUtils;

import java.sql.SQLException;

public class DBUpdate_StepDefinitions {

    @Given("user connects to the application database")
    public void user_connects_to_the_application_database() {
        DBUtils.createConnection();

    }

    @Given("user updates Email as {string} whenIDHotel is {int}")
    public void user_updates_Email_as_whenIDHotel_is(String string, Integer int1) throws SQLException {
        String query = "SELECT Email FROM dbo.tHOTEL";
        //Executing query
        DBUtils.executeQuery(query);
        DBUtils.getResultset().next();
        DBUtils.getResultset().next();
        DBUtils.getResultset().next();
        System.out.println(DBUtils.getResultset().getObject("Email"));
        while (DBUtils.getResultset().next()){
            String str = DBUtils.getResultset().getString("Email");
            System.out.println(str);
        }


        String updateQuery="UPDATE dbo.tHOTEL SET Email = '" + string +"' WHERE IDHotel=" + int1 + "";
        DBUtils.executeQuery(updateQuery);
    }
}
