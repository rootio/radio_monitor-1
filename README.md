# Radio Monitoring
A monitor to record community radio transmissions, and stream them for quality control.

The installation uses Ansible and therefore you should have Ansible installed on your machine. 

Once installed on a Linux machine (deb), this system takes audio input from a USB-C plug and writes it to storage as well as stream it to an online server. 

Once can grab input either from an FM receiver, or use it as a box in the middle between audio source and FM transmitter - depending on the needs. 

On an installed debian machine, begin by installing and enabling an ssh service. 

```
sudo apt-get install -y openssh-server openssh-client
systemctl enable ssh
```

Clone the repo onto a local machine (not the linux host to be configured)

```
git clone https://github.com/rootio/radio_monitoring.git && cd radio_monitoring
```

create a hosts.yml file including the IP addresses of the machines you want to configure. Below is a sample:

```
[raspis]
192.168.1.111
```

Using ansible run the below command taking care to fill in the appropriate commands for the stream URL, stream password, remote SSH password and remote SSH username

```
ansible-playbook -i hosts.yml -u pi -k install.yml -e "stream_url=*** stream_password=*** ssh_remote_password=*** ssh_remote_username=****"
```
