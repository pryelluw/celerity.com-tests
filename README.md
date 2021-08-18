# celerity.com-tests
tests with robot framework

Setup to run headless firefox



# Setup

Requires `Python 3.9.x`

Create virtualenv `python3 -m venv .venv`

Run `pip install -r requirements.txt`


Note:

Install webdriver

- Download the driver itself. Gecko: https://github.com/mozilla/geckodriver/releases

- Put it in `/urs/local/bin` or equivalent on Windows. 🤷‍♂️

- Install this utility to make it easier to manage. It basically symlinks it for you.

```
pip install webdrivermanager
webdrivermanager firefox --linkpath /usr/local/bin
```

# Run

`robot celerity_tests --argumentfile=arguments.robot` will invoke all tests inside the directory with the default configuration provided

`chmod u+x run.sh` to make the included bash script executable.

`./run` to run it.


# Structure

`celerity_tests/resource.robot` settings files for tests
`reports/` for all test reports