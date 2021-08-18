*** Settings ***
Documentation     settings for celerity_tests

Library           SeleniumLibrary
Library           OperatingSystem
Library           BuiltIn

*** Variables ***
${SERVER}         www.celerity.com
${HEADLESS FIREFOX}        HeadlessFireFox
${HEADLESS CHROME}         HeadlessChrome
${DELAY}          0
