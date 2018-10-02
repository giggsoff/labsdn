## Installation

1. Make sure [Python](https://www.python.org/downloads/) 2 or 3 is installed. 


2. Install requirements.

```bash
$ sudo sh prepare.sh
``` 

## Testing

### Test with quantum links:
```bash
$ mn --custom=mininet-tools/QKCustom.py --link=qk --topo=tree,depth=2,fanout=3
```

### Test with ryu:

```bash
$ sudo mn --custom=mininet-tools/topo_2sw-2host.py --topo mytopo --mac --controller remote --switch ovs
```

Go to blockchain-alchemy directory and start ryu-manager:

```bash
$ sudo ryu-manager mininet-tools/rest_forward.py
```

You can switch channels with RestAPI:
For raw channel:
```bash
$ curl -X GET http://localhost:8080/channel/1/1
```
For quantum channel:
```bash
$ curl -X GET http://localhost:8080/channel/1/2
```
