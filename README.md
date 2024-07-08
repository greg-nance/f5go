
# The F5 Go Redirector

[![Build Status](https://travis-ci.org/f5devcentral/f5go.svg?branch=master)](https://travis-ci.org/f5devcentral/f5go)

*A simple service for redirecting mnemonic terms to destination urls.*

Features include:

  - anyone can add terms easily
  - regex parsing for "special cases" (using regular expressions)
  - automatically appends everything after the second slash to the destination url
  - tracks and displays term usage frequency on frontpage with fontsize
  - variables allow destination URLs to change en masse (e.g. project name)

## Required Packages

python-cherrypy3
python-jinja2

## Tips

To run, execute go.py and go to localhost:8080 in a browser.

backup go database regularly

        $ ./go.py export
        $ backup newterms.txt

## To install as a local service on OSX

1. Clone the repository

2. Change to scripts/osx where the venv will be created
        $ cd scripts/osx

3. Create a virtual environment under scripts/osx
        $ python -m venv venv

4. Activate the virtual environment
        $ source venv/bin/activate

5. Install dependencies
        $ pip install -r ../../requirements.txt

6. Install the plist file to /Library/LaunchDaemons
        $ sudo cp com.f5.go.plist /Library/LaunchDaemons/

7. Start the service
        $ ./start.sh

Either that's it, or /tmp/f5go.err is your new friend.

---
contributed by Saul Pwanson

