
all:
	#go get code.google.com/p/go.net/html
	#go get gopkg.in/dutchcoders/goftp.v1
	#go get github.com/stacktitan/smb/smb

	go build pipper.go requests.go
	go build fauth.go requests.go
	go build smtpEnum.go requests.go
	go build params.go vulncheck.go requests.go
	#go build crawl.go requests.go
	go build massftpanon.go 
	go build smbrute.go
	go build tcpscan.go octet.go
	go build sshbrute.go octet.go

linux32:
	GOOS=linux GOARCH=386 go build pipper.go requests.go
	GOOS=linux GOARCH=386 go build fauth.go requests.go
	GOOS=linux GOARCH=386 go build smtpEnum.go requests.go
	GOOS=linux GOARCH=386 go build params.go vulncheck.go requests.go
	#GOOS=linux GOARCH=386 go build crawl.go requests.go
	GOOS=linux GOARCH=386 go build massftpanon.go 
	GOOS=linux GOARCH=386 go build smbrute.go
	GOOS=linux GOARCH=386 go build tcpscan.go octet.go
	GOOS=linux GOARCH=386 go build sshbrute.go octet.go

linux64:
	GOOS=linux GOARCH=amd64 go build pipper.go requests.go
	GOOS=linux GOARCH=amd64 go build fauth.go requests.go
	GOOS=linux GOARCH=amd64 go build smtpEnum.go requests.go
	GOOS=linux GOARCH=amd64 go build params.go vulncheck.go requests.go
	#GOOS=linux GOARCH=amd64 go build crawl.go requests.go
	GOOS=linux GOARCH=amd64 go build massftpanon.go 
	GOOS=linux GOARCH=amd64 go build smbrute.go
	GOOS=linux GOARCH=amd64 go build tcpscan.go octet.go
	GOOS=linux GOARCH=amd64 go build sshbrute.go octet.go

win32:
	GOOS=windows GOARCH=386 go build pipper.go requests.go
	GOOS=windows GOARCH=386 go build fauth.go requests.go
	GOOS=windows GOARCH=386 go build smtpEnum.go requests.go
	#GOOS=windows GOARCH=386 go build crawl.go requests.go
	GOOS=windows GOARCH=386 go build params.go vulncheck.go requests.go
	GOOS=windows GOARCH=386 go build massftpanon.go 
	GOOS=windows GOARCH=386 go build smbrute.go
	GOOS=windows GOARCH=386 go build tcpscan.go octet.go
	GOOS=windows GOARCH=386 go build sshbrute.go octet.go

win64:
	GOOS=windows GOARCH=amd64 go build pipper.go requests.go
	GOOS=windows GOARCH=amd64 go build fauth.go requests.go
	GOOS=windows GOARCH=amd64 go build smtpEnum.go requests.go
	GOOS=windows GOARCH=amd64 go build params.go vulncheck.go requests.go
	#GOOS=windows GOARCH=amd64 go build crawl.go requests.go
	GOOS=windows GOARCH=amd64 go build massftpanon.go 
	GOOS=windows GOARCH=amd64 go build smbrute.go
	GOOS=windows GOARCH=amd64 go build tcpscan.go octet.go
	GOOS=windows GOARCH=amd64 go build sshbrute.go octet.go
 
clean:
	rm -f pipper fauth smtpEnum params massftpanon smbrute tcpscan sshbrute *.exe
	
uninstall:
	rm -f /usr/bin/pipper /usr/bin/fauth /usr/bin/smtpEnum /usr/bin/smbrute /usr/bin/tcpscan /usr/bin/params /usr/bin/massftpanon

install:
	cp pipper fauth smtpEnum params massftpanon smbrute tcpscan sshbrute /usr/bin/
