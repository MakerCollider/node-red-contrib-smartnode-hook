echo "patching... $FILE"

CMD="require('./node_modules/node-red-contrib-smartnode/node_modules/node-red-contrib-smartnode-hook').hook(app, server, express);"
if grep atlas_hook $1 
then
  echo "atlas_hook has already patched"
else
  echo $CMD >> $1
fi

CMD1="var checkPin = require('./node_modules/node-red-contrib-smartnode/extends/check_pin');"
if grep check_pin $1
then
  echo "check pin has already patched"
else
  echo $CMD1 >> $1
fi

echo done
