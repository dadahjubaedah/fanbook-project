set -eu 

export PYTHONUNBUFFERED=true

VIRTUALLENV=.data/venv
if [! -d $VIRTUALLENV]; then
  ptyhon -m venv $VIRTUALLENV
fi 

if [! -f $VIRTUALLENV/bin/pip]; then
  curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py |$VIRTUALLENV
fi

$VIRTUALLENV/bin/pip install -r requements.txt

$VIRTUALLENV/bin/python3 app.py
Footer


