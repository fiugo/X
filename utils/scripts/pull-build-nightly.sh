SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
XTKUTILS_DIR=$SCRIPTS_DIR/../
XTK_DIR=$XTKUTILS_DIR/../

cd $XTK_DIR
git checkout master

# grab differences to update 'update file'

# pull new master
git pull

cd $XTKUTILS_DIR
# -n: nightly
python build.py -d -t -n
python build.py -b -t -n

