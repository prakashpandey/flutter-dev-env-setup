# flutter installation script

echo "Downloading flutter ..."
wget https://storage.googleapis.com/flutter_infra/releases/beta/linux/flutter_linux_v0.11.13-beta.tar.xz

echo "extracting flutter.."
tar xf flutter_linux_v0.11.13-beta.tar.xz

echo "exporting flutter to os path. Note this flutter path export is temporary"
export PATH=$PATH:`pwd`/flutter/bin

flutter --version
