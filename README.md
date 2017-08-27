# CSDevOpsChallenge
Monitoring Application

Travis Build Status
[![Build Status](https://travis-ci.org/SLIV3RZA/CSDevOpsChallenge.svg?branch=master)](https://travis-ci.org/SLIV3RZA/CSDevOpsChallenge)

Code Quality Compliance
[![BCH compliance](https://bettercodehub.com/edge/badge/SLIV3RZA/CSDevOpsChallenge?branch=master)](https://bettercodehub.com/)

This simple program allows a user to enter up to 20 URL's to be validated under the criteria below.

URL Status list
GREEN - HTTP 200 and within Response time threshold
PURPLE - HTTP 200 but Response time threshold of 1ms exceeded
YELLOW - HTTP 401 Authentication exception
RED - Any other HTTP Exception


Example User input
http://www.google.com,https://developer.apple.com/account/#/overview,http://bleh.bleh,cdas

Network Code library details - JustHTTP (https://github.com/justhttp/Just)