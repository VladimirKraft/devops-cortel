# Компьютерные сети 3

1. Подключитесь к публичному маршрутизатору в интернет. Найдите маршрут к вашему публичному IP.

    ![1](./img/1.jpg)

    ```bash
    route-views>show bgp 54.80.0.0
    BGP routing table entry for 54.80.0.0/14, version 2748814678
    Paths: (20 available, best #18, table default)
    Not advertised to any peer
    Refresh Epoch 1
    3549 3356 16509 14618
        208.51.134.254 from 208.51.134.254 (67.16.168.191)
        Origin IGP, metric 0, localpref 100, valid, external
        Community: 3356:3 3356:86 3356:575 3356:666 3356:901 3356:2011 3549:600 3549:2581 3549:30840
        path 7FE028AEF388 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    3267 2603 16509 14618
        194.85.40.15 from 194.85.40.15 (185.141.126.1)
        Origin IGP, metric 0, localpref 100, valid, external
        path 7FE0A9DB8548 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    20912 3257 16509 14618
        212.66.96.126 from 212.66.96.126 (212.66.96.126)
        Origin IGP, localpref 100, valid, external
        Community: 3257:4000 3257:6530 3257:8834 3257:50002 3257:50120 3257:51100 3257:51101 20912:65004
        path 7FE0E9E033A0 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    20130 23352 16509 14618
        140.192.8.16 from 140.192.8.16 (140.192.8.16)
        Origin IGP, localpref 100, valid, external
        path 7FE0EE568E68 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    3356 16509 14618
        4.68.4.46 from 4.68.4.46 (4.69.184.201)
        Origin IGP, metric 0, localpref 100, valid, external
        Community: 3356:3 3356:86 3356:576 3356:666 3356:901 3356:2012 3549:600 65000:64980 65000:64987
        path 7FE0E3121788 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    852 16509 14618
        154.11.12.212 from 154.11.12.212 (96.1.209.43)
        Origin IGP, metric 0, localpref 100, valid, external
        path 7FE10BA30DD0 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    57866 6830 16509 14618
        37.139.139.17 from 37.139.139.17 (37.139.139.17)
        Origin IGP, metric 0, localpref 100, valid, external
        Community: 6830:17000 6830:17480 6830:23001 6830:35307 57866:100 65100:6830 65103:2 65104:31
        unknown transitive attribute: flag 0xE0 type 0x20 length 0x30
            value 0000 E20A 0000 0064 0000 1AAE 0000 E20A
                0000 0065 0000 0064 0000 E20A 0000 0067
                0000 0002 0000 E20A 0000 0068 0000 001F

        path 7FE0D9A848F0 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    3333 3320 16509 14618
        193.0.0.56 from 193.0.0.56 (193.0.0.56)
        Origin IGP, localpref 100, valid, external
        Community: 3320:1840 3320:2020 3320:9010
        path 7FE1119EC828 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    49788 1299 16509 14618
        91.218.184.60 from 91.218.184.60 (91.218.184.60)
        Origin IGP, localpref 100, valid, external
        Community: 1299:35000
        Extended Community: 0x43:100:0
        path 7FE109BAB140 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    7018 16509 14618
        12.0.1.63 from 12.0.1.63 (12.0.1.63)
        Origin IGP, localpref 100, valid, external
        Community: 7018:2500 7018:37232
        path 7FE12B986F50 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    6939 16509 16509 14618
        64.71.137.241 from 64.71.137.241 (216.218.253.53)
        Origin IGP, localpref 100, valid, external
        path 7FE186ED9A18 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    8283 1299 16509 14618
        94.142.247.3 from 94.142.247.3 (94.142.247.3)
        Origin IGP, metric 0, localpref 100, valid, external
        Community: 1299:35000 8283:1 8283:101 8283:102
        unknown transitive attribute: flag 0xE0 type 0x20 length 0x24
            value 0000 205B 0000 0000 0000 0001 0000 205B
                0000 0005 0000 0001 0000 205B 0000 0005
                0000 0002
        path 7FE14CC2F9D8 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    1351 16509 14618
        132.198.255.253 from 132.198.255.253 (132.198.255.253)
        Origin IGP, localpref 100, valid, external
        path 7FE125210260 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    19214 3257 16509 14618
        208.74.64.40 from 208.74.64.40 (208.74.64.40)
        Origin IGP, localpref 100, valid, external
        Community: 3257:4000 3257:8784 3257:50002 3257:50122 3257:51300 3257:51302
        path 7FE1245BE0B0 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    101 16509 14618
        209.124.176.223 from 209.124.176.223 (209.124.176.223)
        Origin IGP, localpref 100, valid, external
        Community: 101:20400 101:22200
        Extended Community: RT:101:22200
        path 7FE114870968 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    3257 16509 14618
        89.149.178.10 from 89.149.178.10 (213.200.83.26)
        Origin IGP, metric 10, localpref 100, valid, external
        Community: 3257:4000 3257:6530 3257:8834 3257:50002 3257:50120 3257:51100 3257:51101
        path 7FE1234D2D80 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    3561 209 3356 16509 14618
        206.24.210.80 from 206.24.210.80 (206.24.210.80)
        Origin IGP, localpref 100, valid, external
        path 7FE0BE9DBA88 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 2
    2497 16509 14618
        202.232.0.2 from 202.232.0.2 (58.138.96.254)
        Origin IGP, localpref 100, valid, external, best
        path 7FE0C25D7990 RPKI State valid
        rx pathid: 0, tx pathid: 0x0
    Refresh Epoch 1
    4901 11537 16509 14618
        162.250.137.254 from 162.250.137.254 (162.250.137.254)
        Origin IGP, localpref 100, valid, external
        Community: 65000:10300
        path 7FE021B78B18 RPKI State valid
        rx pathid: 0, tx pathid: 0
    Refresh Epoch 1
    3303 2914 16509 14618
    217.192.89.50 from 217.192.89.50 (138.187.128.158)
      Origin IGP, localpref 100, valid, external
      Community: 2914:410 2914:1009 2914:2000 2914:3000 3303:1004 3303:1005 3303:3064
      path 7FE050326EF0 RPKI State valid
      rx pathid: 0, tx pathid: 0
    ```

2. 