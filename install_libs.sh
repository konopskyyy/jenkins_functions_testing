#!/bin/bash

virtualenv .
source ./bin/activate

pip install robotframework-selenium2library

deactivate
