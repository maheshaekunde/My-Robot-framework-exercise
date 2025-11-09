*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://demo.automationtesting.in/Windows.html


*** Test Cases ***
Tabbed windows
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    3seconds

    click element    xpath://a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    switch window    title:Selenium
    click element    xpath://span[normalize-space()='Projects']

    close all browsers


#| Keyword              | Description                                  |
#| -------------------- | -------------------------------------------- |
#| `Get Window Titles`  | Returns list of all open window titles       |
#| `Get Window Handles` | Returns internal handles of all open windows |
#| `Close Window`       | Closes the current active window             |
#| `Close All Browsers` | Closes all open browser windows              |


