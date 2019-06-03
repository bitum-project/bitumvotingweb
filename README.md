# bitumvotingweb

bitumvotingweb is a simple web app that connects to bitumd and displays
information about consensus rule voting.

## Installation

## Developing

It is recommended to use Go 1.12 for development:

```no-highlight
$ go version
go version go1.12 linux/amd64
```

To build the code:

```no-highlight
go install
```

Start bitumd with the following options:

```no-highlight
bitumd --testnet -u USER -P PASSWORD --rpclisten=127.0.0.1:19209 --rpccert=$HOME/.bitumd/rpc.cert
```

Start bitumvotingweb:

```no-highlight
bitumvotingweb
```

## Docker

Build the docker container:

```no-highlight
docker build -t bitum/bitumvotingweb .
```

Run the container:

```no-highlight
docker run -it -v ~/.bitumd:/root/.bitumd -v ~/.bitumvotingweb:/root/.bitumvotingweb -p <local port>:8000 bitumvotingweb
```

This example assumes you have configured `.bitumd` and `.bitumvotingweb` directories in `~` on the host machine.

Your `bitumvotingweb.conf` file will need to specificy `listen=0.0.0.0` in order for the external port mapping to work correctly.

## Contact

If you have any further questions you can join the [Bitum community](https://bitum.org/community/) using your preferred chat platform.

## Issue Tracker

The [integrated github issue tracker](https://github.com/bitum-project/bitumvotingweb/issues) is used for this project.

## License

bitumvotingweb is licensed under the [copyfree](http://copyfree.org) ISC License.
