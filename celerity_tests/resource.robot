*** Settings ***
Documentation     settings for celerity_tests

Library           SeleniumLibrary
Library           OperatingSystem
Library           BuiltIn

*** Variables ***
${SERVER}         www.celerity.com
${BROWSER}        Firefox
${DELAY}          0