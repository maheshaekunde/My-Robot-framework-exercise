*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html


*** Test Cases ***
Handling Frames
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    2 seconds

    select frame    packageListFrame            #selecting first frame
    click link    org.openqa.selenium
    unselect frame

    select frame    packageFrame      #selecting 2nd frame
    click link    WebDriver
    unselect frame

    select frame    classFrame      #selecting 3rd frame
    click link    Help
    unselect frame


    close browser


