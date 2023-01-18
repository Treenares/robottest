*** Settings ***
Library    BuiltIn
Library    Browser

*** Variables ***
${browser}    chromium
${headless}   ${True}

*** Test Cases ***
test
    ${launch_args}=   Set Variable  ['--no-sandbox', '--headless']
    New Persistent Context    url=https://www.google.com/    browser=${browser}  headless=${headless}  args=${launch_args}    viewport=None
    @{LogBrowserCat}    Get Browser Catalog
    Log To Console    test robot framework test on docker
