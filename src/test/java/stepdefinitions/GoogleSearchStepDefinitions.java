package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import pages.GooglePage;
import utilities.ConfigReader;
import utilities.Driver;

public class GoogleSearchStepDefinitions {
    GooglePage googlePage = new GooglePage();
    @Given("user is on the google page")
    public void user_is_on_the_google_page() throws InterruptedException {
        Driver.getDriver().get(ConfigReader.getProperty("google_url"));
        Thread.sleep(3000);
    }

    @Given("user search iphone")
    public void user_search_iphone() {
        googlePage.searchButton.sendKeys("iphone" + Keys.ENTER);
    }
    @Then("verify the result has iphone")
    public void verify_the_result_has_iphone() {
        String pageTitle = Driver.getDriver().getTitle().toLowerCase();
        Assert.assertTrue(pageTitle.contains("iphone"));
    }
    @Given("user search tea pot")
    public void user_search_tea_pot() {
        googlePage.searchButton.sendKeys("tea pot" + Keys.ENTER);
    }
    @Then("verify the result has tea pot")
    public void verify_the_result_has_tea_pot() {
        String pageTitle = Driver.getDriver().getTitle().toLowerCase();
        Assert.assertTrue(pageTitle.contains("tea pot"));
    }
    @Given("user search flower")
    public void user_search_flower() {
        googlePage.searchButton.sendKeys("flower" + Keys.ENTER);

    }
    @Then("verify the result has flower")
    public void verify_the_result_has_flower() {
        String pageTitle = Driver.getDriver().getTitle().toLowerCase();
        Assert.assertTrue(pageTitle.contains("flower"));

    }
    @Given("user search {string}")
    public void user_search(String string) {
      googlePage.searchButton.sendKeys(string+Keys.ENTER);
    }
    @Then("verify the result has {string}")
    public void verify_the_result_has(String string) {
        String pageTitle = Driver.getDriver().getTitle().toLowerCase();
        Assert.assertTrue(pageTitle.contains(string));
        Assert.fail();

    }
    @Given("user is on the google search")
    public void user_is_on_the_google_search() throws InterruptedException {
        Driver.getDriver().get(ConfigReader.getProperty("google_url"));
        Thread.sleep(3000);

    }

}
