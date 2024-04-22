## Termux setup
```bash
pkg update&&pkg upgrade &&termux-setup-storage&&pkg install git
```

### Clone this Repository
```bash
git clone https://github.com/Risik34/qemu-config&&cd qemu-config&&mkdir iso
```
### Move iso file to iso dir

### Run vm-setup.sh
```bash
./vm-setup.sh 
```
## Vm steps
```bash
setup-interfaces&&ifup eth0
```
### Dns config
```bash
echo -e "nameserver 192.168.1.1\nnameserver 1.1.1.1" > /etc/resolv.conf
```

### Setting up alpine
```bash
wget https://raw.githubusercontent.com/Risik34/qemu-config/main/config/answerfile
```
```bash
sed -i -E 's/(local kernel_opts)=.*/\1="console=ttyS0"/' /sbin/setup-disk
```
```bash
setup-alpine -f answerfile
```
### Power off and turn on again 
```bash
qemu-system-x86_64 -machine q35 -m 1024 -smp cpus=2 -cpu qemu64 -drive if=pflash,format=raw,read-only=on,file=$PREFIX/share/qemu/edk2-x86_64-code.fd -netdev user,id=n1,dns=8.8.8.8,hostfwd=tcp::2222-:22 -device virtio-net,netdev=n1 -nographic iso/alpine.img
```
### Add google Dns
```bash

echo "nameserver 8.8.8.8" > /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf
```

