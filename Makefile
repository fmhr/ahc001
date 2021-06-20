build: main.go
	go build

example:
	./solver < tools/example.in > example.out


runscript:
	go run script/main.go


pprof:
	./solver -cpuprofile cpu.prof < tools/in/0000.txt
	pprof -http=localhost:8080 cpu.prof

vis:
	cd tools &&\
	cargo run --release --bin vis example.in example.out
