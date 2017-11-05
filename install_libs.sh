#!/bin/bash

virtualenv .
source ./bin/activate

pip install requests
pip install robotframework-requests
pip install robotframework-archivelibrary
pip install robotframework-jsonlibrary
pip install robotframework-selenium2library

deactivate
