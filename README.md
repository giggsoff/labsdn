# Installation

Only for RHEL 7, CentOS 7, ScientificLinux 7 and so on...

```bash
sudo sh prepare.sh
``` 

# Testing

## Test with quantum links:
```bash
mn --custom=mininet-tools/QKCustom.py --link=qk --topo=tree,depth=2,fanout=3
```

## Test with ryu:

### Running mininet topology
```bash
sudo mn --custom=mininet-tools/topo_2sw-2host.py --topo mytopo --mac --controller remote --switch ovs
```

### Running ryu application
```bash
sudo ryu-manager mininet-tools/rest_forward.py
```

### You can switch channels with RestAPI:
#### For raw channel:
```bash
curl -X GET http://localhost:8080/channel/1/1
```
#### For quantum channel:
```bash
curl -X GET http://localhost:8080/channel/1/2
```

### Yuo can obtain statistics:
```bash
curl -X GET http://localhost:8080/status
curl -X GET http://localhost:8080/channels
curl -X GET http://localhost:8080/statistics
```
