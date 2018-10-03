# Installation

Only for RHEL 7, CentOS 7, ScientificLinux 7 and so on...

```bash
sudo sh prepare.sh
``` 

# Testing

## Tests with quantum links:
```bash
sudo mn --custom=mininet-tools/QKCustom.py --link=qk --topo=tree,depth=2,fanout=3
```

## Tests with ryu:

### Running mininet topology (in first terminal/screen)
```bash
sudo mn --custom=mininet-tools/topo_2sw-2host.py --topo mytopo --mac --controller remote --switch ovs
```

### Running ryu application (in second terminal/screen)
```bash
sudo ryu-manager mininet-tools/rest_forward.py
```

### Module RestAPI (from third terminal/screen):
#### Switch to raw channel:
```bash
curl -X GET http://localhost:8080/channel/1/1
```
#### Switch to quantum channel:
```bash
curl -X GET http://localhost:8080/channel/1/2
```

#### You can check packets and encryption of raw channel:
```bash
sudo tcpdump -i lo udp port 3338 -vv -X
```
#### You can check packets and encryption of quantum channel:
```bash
sudo tcpdump -i lo udp port 3339 -vv -X
```

#### You can obtain statistics:
```bash
curl -X GET http://localhost:8080/status
curl -X GET http://localhost:8080/channels
curl -X GET http://localhost:8080/statistics
```
