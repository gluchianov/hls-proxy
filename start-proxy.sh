set -e

DIR="$( cd "$( dirname "$0" )" && pwd )"

if [ ! -d "$DIR/Twisted-18.9.0" ]; then
	wget "https://files.pythonhosted.org/packages/5d/0e/a72d85a55761c2c3ff1cb968143a2fd5f360220779ed90e0fadf4106d4f2/Twisted-18.9.0.tar.bz2" -P "$DIR"
	tar xfv "$DIR/Twisted-18.9.0.tar.bz2" -C "$DIR"
	rm -f "$DIR/Twisted-18.9.0.tar.bz2"
fi

PYTHONPATH="$DIR/Twisted-18.9.0/:$PYTHONPATH" python "$DIR/hlsproxy.py" "$@"
