# Networking basics #0
## Resources
* [OSI model](https://en.wikipedia.org/wiki/OSI_model)
* [Types of networks](https://www.lifewire.com/lans-wans-and-other-area-networks-817376)
* [Internet](https://en.wikipedia.org/wiki/Internet)
* [MAC address](https://whatismyipaddress.com/mac-address)
* [What is an IP address](https://www.bleepingcomputer.com/tutorials/ip-addresses-explained/)
* [TCP and UDP](https://www.howtogeek.com/190014/htg-explains-what-is-the-difference-between-tcp-and-udp/)
* [TCP/UDP ports list](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers)
* [What is ping/ICMP](https://en.wikipedia.org/wiki/Ping_%28networking_utility%29)
* [Positional arguments](https://wiki.bash-hackers.org/scripting/posparams)

## Tasks
### 0. OSI model
OSI (Open Systems Interconnection) is an abstract model to describe layered communication and computer network design. The idea is to segregate the different parts of what make communication possible.

It is organized from the lowest level to the highest level:
* The lowest level: layer 1 which is for transmission on physical layers with electrical impulse, light or radio signal
* The highest level: layer 7 which is for application specific communication like SNMP for emails, HTTP for your web browser, etc

Keep in mind that the OSI model is a concept, it’s not even tangible. The OSI model doesn’t perform any functions in the networking process. It is a conceptual framework so we can better understand complex interactions that are happening. Most of the functionality in the OSI model exists in all communications systems.

![osi model](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2018/6/4e6a0ad87a65d7054248.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230201%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230201T083342Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=6ec0b21473ef0acacf3c0815c9a0d159616328fc2adc802d9d41ef4eb9b0e313)



In this project we will mainly focus on:
* The Transport layer and especially TCP/UDP
* On the Network layer with IP and ICMP

The image bellow describes more concretely how you can relate to every level.

![osi model 2](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/0fc96bd99faa7941b18bcae4c5f90c6acd11791d.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230201%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230201T083342Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=f5e577ab0dca2ad486ea4de9bb6639160301e3d536ee47d3e96dffc41456bec0)

Questions:

What is the OSI model?
1. Set of specifications that network hardware manufacturers must respect
2. The OSI model is a conceptual model that characterizes the communication functions of a telecommunication system without regard to their underlying internal structure and technology
3. The OSI model is a model that characterizes the communication functions of a telecommunication system with a strong regard for their underlying internal structure and technology

How is the OSI model organized?
1. Alphabetically
2. From the lowest to the highest level
3. Randomly

File: [0-OSI_model](./0-OSI_model)

***

### 1. Types of network
![networks](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/4b995d4f8078b44afa968d68a98035d2bd7e8fac.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230201%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230201T083342Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=9cdd27c3b91a72384ce951d40a84bb167c7c09e135fc9a51cec1a734496f20c7)

LAN connect local devices together, WAN connects LANs together, and WANs are operating over the Internet.

Questions:

What type of network a computer in local is connected to?
1. Internet
2. WAN
3. LAN

What type of network could connect an office in one building to another office in a building a few streets away?
1. Internet
2. WAN
3. LAN

What network do you use when you browse www.google.com from your smartphone (not connected to the Wifi)?
1. Internet
2. WAN
3. LAN

File: [1-types_of_network](./1-types_of_network)

***

### 2. MAC and IP address
![mac and ip](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/1e348ba3bcbb094b02922f821ffeb3d8c5438b7b.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230201%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230201T083342Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=7a79b1042ed303cff420e5707c50a707b5c9a02b2fcbedaae43f65a41f53f08b)

Questions:

What is a MAC address?
1. The name of a network interface
2. The unique identifier of a network interface
3. A network interface

What is an IP address?

1. Is to devices connected to a network what postal address is to houses
2. The unique identifier of a network interface
3. Is a number that network devices use to connect to networks

File: [2-MAC_and_IP_address](./2-MAC_and_IP_address)

***

### 3. UDP and TCP
![udp and tcp](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/3d92e3c4a470f8ecf4c73db511fcbbadaa002e1c.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230201%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230201T083342Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=77fc7128dff9ab97b1420be7bdd1937555cd0a11c7216d5260e14c582c8c1445)

Let’s fill the empty parts in the drawing above.

Questions:

    Which statement is correct for the TCP box:
        It is a protocol that is transferring data in a slow way but surely
        It is a protocol that is transferring data in a fast way and might loss data along in the process
    Which statement is correct for the UDP box:
        It is a protocol that is transferring data in a slow way but surely
        It is a protocol that is transferring data in a fast way and might loss data along in the process
    Which statement is correct for the TCP worker:
        Have you received boxes x, y, z?
        May I increase the rate at which I am sending you boxes?

File: [3-UDP_and_TCP](./3-UDP_and_TCP)

***

### 4. TCP and UDP ports
Once packets have been sent to the right network device using IP using either UDP or TCP as a mode of transportation, it needs to actually enter the network device.

If we continue the comparison of a network device to your house, where IP address is like your postal address, UDP and TCP ports are like the windows and doors of your place. A TCP/UDP network device has 65535 ports. Some of them are officially reserved for a specific usage, some of them are known to be used for a specific usage (but nothing is officially declared) and the rest are free of use.

While the full list of ports should not be memorized, it is important to know the most used ports, let’s start by remembering 3 of them:
* **22** for SSH
* **80** for HTTP
* **443** for HTTPS

Note that a specific IP + port = socket.

Write a Bash script that displays listening ports:
* That only shows listening sockets
* That shows the PID and name of the program to which each socket belongs

File: [4-TCP_and_UDP_ports](./4-TCP_and_UDP_ports)

***

### 5. Is the host on the network
![host](https://media.giphy.com/media/uDxkJAVSU7GY8/giphy.gif)

The Internet Control Message Protocol (ICMP) is a protocol in the Internet protocol suite. It is used by network devices, to check if other network devices are available on the network. The command `ping` uses ICMP to make sure that a network device remains online or to troubleshoot issues on the network.

Write a Bash script that pings an IP address passed as an argument.

Requirements:
* Accepts a string as an argument
* Displays `Usage: 5-is_the_host_on_the_network {IP_ADDRESS}` if no argument passed
* Ping the IP 5 times

It is interesting to look at the `time` value, which is the time that it took for the ICMP request to go to the 8.8.8.8 IP and come back to my host. The IP `8.8.8.8` is owned by Google, and the quickest roundtrip between my computer and Google was 7.57 ms which is pretty fast, which is a sign that the network path between my computer and Google’s datacenter is in good shape. A slow ping would indicate a slow network.

Next time you feel that your connection is slow, try the `ping` command to see what is going on!

File: [5-is_the_host_on_the_network](./5-is_the_host_on_the_network)
