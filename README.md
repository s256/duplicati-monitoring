# Monitor Duplicati Backups with Healtchecks.io

I'm using [Duplicati](https://www.duplicati.com/) to backup some personal Windows Nodes. 
Duplicati can run [scripts](https://duplicati.readthedocs.io/en/latest/appendix-g-example-scripts/) before and after every backup execution, which calls for monitoring via [Healthchecks.io](https://healthchecks.io/).

Unfortunately Duplicati doesn't offer to set custom ENV Vars to pass the Monitoring URL. 

## Setup

* Move all files to `C:\Scripts`(you need to create the folder) and replace `UUID` with your actual healthchecks.io UUID or replace the whole path with you selfhosted url.

* Now configure `Duplicati`to [run these scripts before and after](https://duplicati.readthedocs.io/en/latest/06-advanced-options/) every backup.

* Change the `run-script-result-output-format` to  `JSON`.

Now you'll receive the `start` and `stop` events and also `errors` in healthchecks.io