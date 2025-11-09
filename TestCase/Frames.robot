*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html


*** Test Cases ***
Handling Frames
    [Documentation]    iframe stands for Inline Frame.
    ...     It is an HTML tag used to embed one webpage inside another webpage.
    ...     Think of it like a small browser window inside a webpage that loads a different page or content.
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    2 seconds

    # Switch to iframe using its name or id
    select frame    packageListFrame            #selecting first frame
    click link    org.openqa.selenium
    unselect frame

    select frame    packageFrame      #selecting 2nd frame
    click link    WebDriver
#    go back to the main page from where you have selected new frame
    unselect frame

    select frame    classFrame      #selecting 3rd frame
    click link    Help
    unselect frame

    close browser
