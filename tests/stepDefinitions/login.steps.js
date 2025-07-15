const { Given, When, Then } = require('@cucumber/cucumber')
// import expect for assertion
const { expect } = require("@playwright/test")

Given('user launches the url', async function () {
    await page.goto("https://practicetestautomation.com/practice-test-login/")
});

When('user enters valid username as {string} and password as {string}', async function (username, password) {
    await page.locator('input[name="username"]').fill(username)
    await page.locator('input[name="password"]').fill(password)
});
When('user click on login button', async function () {
    await page.locator('.btn').click()
});


Then('user should navigate to the dashboard page', async function () {
    await expect(page).toHaveURL("https://practicetestautomation.com/logged-in-successfully/")
});



Then('user should see error message in the login page', async function () {
    await expect(page.locator(".show")).toBeVisible()
});