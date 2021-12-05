# GOTEST BUILDER
echo "Welcome to Gotask Builder for any platforms"

env GOOS=darwin GOARCH=amd64 go build -ldflags="-s -w" -o builds/Gotask_darwin-amd64 ./app
env GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o builds/Gotask_linux-amd64 ./app
env GOOS=linux GOARCH=arm64 go build -ldflags="-s -w" -o builds/Gotask_linux-arm64 ./app
env GOOS=windows GOARCH=386 go build -ldflags="-s -w" -o builds/Gotask_windows-386 ./app
upx builds/Gotask_*

echo "SHA256 sum of release binaries: \n"
shasum -a 256 -b builds/Gotask_*

read -r -p "Do you want put program to /usr/bin/? [Y/n] " install

case $install in
    [yY][eE][sS]|[yY])
    echo "Wait..."
    mkdir temp
    cp ./builds/Gotask_linux-amd64 ./temp/gotask
    sudo cp ./temp/gotask /usr/bin/
    rm -rf ./temp/
    echo "Installing completed!"
    echo "Usage: gotask"
    ;;
    [nN][oO]|[nN])
    exit
    ;;
    *)
    echo "Invalid input..."
    exit 1
    ;;
esac

