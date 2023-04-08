# We do a lil trolling with youtube timestamper for every second.
# I don't know why I did this, but it was fun and I learned that "nl" is pretty usefull!

# Since we cannot use variables inside a brace/range expansion, you have to change the timestamp time manually :(
$ tr -d ' ' <<< $(echo -ne {00..02}:{00..34}"\n") | nl -v0 -s' seconds ' -w1 # This example is for a "02:34" long youtube video

# 06 Minutes (Replace that with the minute you wish)
# 34 seconds (Replace that with the seconds you wish)
# The output shall be like this:
0 seconds 00:00
1 seconds 00:01
2 seconds 00:02
3 seconds 00:03
4 seconds 00:04
5 seconds 00:05
6 seconds 00:06
7 seconds 00:07
8 seconds 00:08
9 seconds 00:09
10 seconds 00:10
11 seconds 00:11
12 seconds 00:12
13 seconds 00:13
14 seconds 00:14
15 seconds 00:15
16 seconds 00:16
17 seconds 00:17
18 seconds 00:18
19 seconds 00:19
20 seconds 00:20
21 seconds 00:21
22 seconds 00:22
23 seconds 00:23
24 seconds 00:24
25 seconds 00:25
26 seconds 00:26
27 seconds 00:27
28 seconds 00:28
29 seconds 00:29
30 seconds 00:30
31 seconds 00:31
32 seconds 00:32
33 seconds 00:33
34 seconds 00:34
35 seconds 01:00
36 seconds 01:01
37 seconds 01:02
38 seconds 01:03
39 seconds 01:04
40 seconds 01:05
41 seconds 01:06
42 seconds 01:07
43 seconds 01:08
44 seconds 01:09
45 seconds 01:10
46 seconds 01:11
47 seconds 01:12
48 seconds 01:13
49 seconds 01:14
50 seconds 01:15
51 seconds 01:16
52 seconds 01:17
53 seconds 01:18
54 seconds 01:19
55 seconds 01:20
56 seconds 01:21
57 seconds 01:22
58 seconds 01:23
59 seconds 01:24
60 seconds 01:25
61 seconds 01:26
62 seconds 01:27
63 seconds 01:28
64 seconds 01:29
65 seconds 01:30
66 seconds 01:31
67 seconds 01:32
68 seconds 01:33
69 seconds 01:34
