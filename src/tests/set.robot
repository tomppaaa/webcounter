*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter

*** Test Cases ***
Setting a value changes the counter
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=aseta
    Get Text  body  *=  nappia painettu 10 kertaa

Setting a new value replaces the current counter value
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=aseta
    Fill Text  input[name="value"]  5
    Click  button >> text=aseta
    Get Text  body  *=  nappia painettu 5 kertaa
