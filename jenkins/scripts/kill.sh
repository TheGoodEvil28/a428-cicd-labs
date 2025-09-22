#!/usr/bin/env sh

echo 'The following command terminates the "npm start" process using its PID'
echo '(written to ".pidfile"), all of which were conducted when "deliver.sh" was executed.'

set -x

if [ -f .pidfile ]; then
  PID=$(cat .pidfile)
  # Cek apakah process masih berjalan
  if kill -0 $PID 2>/dev/null; then
    kill $PID
    echo "Process $PID terminated"
  else
    echo "Process $PID is not running"
  fi
  rm -f .pidfile
else
  echo ".pidfile not found"
fi

set +x
