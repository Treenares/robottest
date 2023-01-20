*** Settings ***
Library    BuiltIn
Library    Browser

*** Variables ***
${browser}    chromium
${headless}   ${True}

*** Test Cases ***
test
    ${launch_args}=   Set Variable  ['--no-sandbox', '--headless']
    New Persistent Context    url=https://robotframework-browser.org/    browser=${browser}  headless=${headless}  args=${launch_args}    viewport=None
    @{LogBrowserCat}    Get Browser Catalog

    ${test}    Get Text    (//*[@class="col-md-5 col-lg-4 order-1 textblock-left p-3"])[1]
    Log To Console    ${test} test robot framework test on docker.
    
    
