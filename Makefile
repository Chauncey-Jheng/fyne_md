BINARY_NAME=MarkDown.exe
APP_NAME=MarkDown
VERSION=1.0.0
APP_ID=123.456

build:
	fyne package -appVersion ${VERSION} -appID ${APP_ID} -name ${APP_NAME} -release

run:
	go run .

clean:
	echo "cleaning..."
	go clean
	del ./${BINARY_NAME}
	echo "cleaned"

test:
	go test -v ./...