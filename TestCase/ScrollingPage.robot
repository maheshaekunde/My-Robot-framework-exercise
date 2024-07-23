*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Scrolling Test
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
    set selenium speed      2

    #to pixel
#    execute javascript    window.scrollTo(0,3000)          #0 HORIZONTAL,1500 VERTICAL(pixel)

    #to scroll till element
#    scroll element into view    xpath://td[normalize-space()='India']

    #scroll till bottom
    execute javascript      window.scrollTo(0,document.body.scrollHieght)
    sleep    5
    execute javascript      window.scrollTo(0,-document.body.scrollHieght)