param n, integer, >= 1; #

set V, default {0..n-1}; #

set E, within V cross V;

param capacity{(i,j) in E}, >= 0;

param source, symbolic, in V, default 0;

param sink, symbolic, in V, != source, default n-1;

var flow{(i,j) in E}, >= 0, <= capacity[i,j];

var maxFlow, >= 0;

s.t. condition_1{i in V: i<>source and i<>sink}:
   sum{(j,i) in E} flow[j,i] = sum{(i,j) in E} flow[i,j];
   
s.t. condition_2{i in V: i=source}:
   maxFlow = sum{(i,j) in E} flow[i,j];
   
s.t. condition_3{i in V: i=sink}:
   maxFlow = sum{(j,i) in E} flow[j,i] ;

maximize obj: maxFlow;

solve;

printf "Maximum flow: %s\n", maxFlow;

data;
param n := 130;
param : E :   capacity :=
0 1 1
0 2 1
0 3 1
0 4 1
0 5 1
0 6 1
0 7 1
0 8 1
0 9 1
0 10 1
0 11 1
0 12 1
0 13 1
0 14 1
0 15 1
0 16 1
0 17 1
0 18 1
0 19 1
0 20 1
0 21 1
0 22 1
0 23 1
0 24 1
0 25 1
0 26 1
0 27 1
0 28 1
0 29 1
0 30 1
0 31 1
0 32 1
0 33 1
0 34 1
0 35 1
0 36 1
0 37 1
0 38 1
0 39 1
0 40 1
0 41 1
0 42 1
0 43 1
0 44 1
0 45 1
0 46 1
0 47 1
0 48 1
0 49 1
0 50 1
0 51 1
0 52 1
0 53 1
0 54 1
0 55 1
0 56 1
0 57 1
0 58 1
0 59 1
0 60 1
0 61 1
0 62 1
0 63 1
0 64 1
1 68 1
1 87 1
1 80 1
2 91 1
2 120 1
2 65 1
3 84 1
3 128 1
3 81 1
4 71 1
4 113 1
4 78 1
5 114 1
5 84 1
5 74 1
6 106 1
6 77 1
6 68 1
7 126 1
7 70 1
7 119 1
8 75 1
8 111 1
8 90 1
9 78 1
9 109 1
9 121 1
10 117 1
10 87 1
10 113 1
11 122 1
11 123 1
11 121 1
12 112 1
12 98 1
12 85 1
13 97 1
13 127 1
13 119 1
14 108 1
14 111 1
14 116 1
15 65 1
15 115 1
15 127 1
16 107 1
16 78 1
16 124 1
17 100 1
17 108 1
17 82 1
18 112 1
18 125 1
18 92 1
19 86 1
19 75 1
19 90 1
20 112 1
20 98 1
20 76 1
21 128 1
21 110 1
21 120 1
22 112 1
22 123 1
22 80 1
23 100 1
23 92 1
23 86 1
24 95 1
24 73 1
24 119 1
25 112 1
25 94 1
25 90 1
26 77 1
26 111 1
26 83 1
27 105 1
27 88 1
27 126 1
28 76 1
28 85 1
28 117 1
29 121 1
29 124 1
29 110 1
30 110 1
30 79 1
30 73 1
31 106 1
31 77 1
31 126 1
32 71 1
32 85 1
32 120 1
33 103 1
33 95 1
33 100 1
34 87 1
34 95 1
34 72 1
35 121 1
35 71 1
35 112 1
36 123 1
36 82 1
36 108 1
37 77 1
37 119 1
37 91 1
38 108 1
38 96 1
38 78 1
39 127 1
39 70 1
39 91 1
40 78 1
40 97 1
40 72 1
41 100 1
41 87 1
41 66 1
42 107 1
42 104 1
42 82 1
43 116 1
43 111 1
43 66 1
44 119 1
44 121 1
44 107 1
45 80 1
45 81 1
45 85 1
46 83 1
46 118 1
46 104 1
47 96 1
47 84 1
47 70 1
48 101 1
48 88 1
48 114 1
49 83 1
49 120 1
49 108 1
50 116 1
50 83 1
50 93 1
51 118 1
51 69 1
51 86 1
52 125 1
52 113 1
52 74 1
53 104 1
53 110 1
53 87 1
54 111 1
54 124 1
54 118 1
55 127 1
55 81 1
55 72 1
56 101 1
56 128 1
56 75 1
57 79 1
57 87 1
57 93 1
58 106 1
58 102 1
58 113 1
59 82 1
59 72 1
59 71 1
60 90 1
60 69 1
60 91 1
61 128 1
61 65 1
61 101 1
62 87 1
62 76 1
62 72 1
63 103 1
63 80 1
63 110 1
64 81 1
64 123 1
64 112 1
65 129 1
66 129 1
67 129 1
68 129 1
69 129 1
70 129 1
71 129 1
72 129 1
73 129 1
74 129 1
75 129 1
76 129 1
77 129 1
78 129 1
79 129 1
80 129 1
81 129 1
82 129 1
83 129 1
84 129 1
85 129 1
86 129 1
87 129 1
88 129 1
89 129 1
90 129 1
91 129 1
92 129 1
93 129 1
94 129 1
95 129 1
96 129 1
97 129 1
98 129 1
99 129 1
100 129 1
101 129 1
102 129 1
103 129 1
104 129 1
105 129 1
106 129 1
107 129 1
108 129 1
109 129 1
110 129 1
111 129 1
112 129 1
113 129 1
114 129 1
115 129 1
116 129 1
117 129 1
118 129 1
119 129 1
120 129 1
121 129 1
122 129 1
123 129 1
124 129 1
125 129 1
126 129 1
127 129 1
128 129 1
;
end;