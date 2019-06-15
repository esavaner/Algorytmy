param n, integer, >= 1;

set V, default {0..n-1};

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

data;param n := 64;
param : E :   capacity :=
0 1 31
0 2 15
0 4 25
0 8 37
0 16 64
0 32 62
1 3 8
1 5 8
1 9 3
1 17 32
1 33 19
2 3 4
2 6 7
2 10 26
2 18 16
2 34 3
3 7 10
3 11 2
3 19 13
3 35 12
4 5 28
4 6 2
4 12 24
4 20 16
4 36 19
5 7 4
5 13 6
5 21 13
5 37 5
6 7 1
6 14 15
6 22 4
6 38 7
7 15 4
7 23 11
7 39 8
8 9 13
8 10 2
8 12 30
8 24 11
8 40 1
9 11 12
9 13 14
9 25 11
9 41 3
10 11 16
10 14 10
10 26 3
10 42 12
11 15 1
11 27 15
11 43 12
12 13 1
12 14 6
12 28 14
12 44 1
13 15 6
13 29 2
13 45 7
14 15 16
14 30 4
14 46 14
15 31 8
15 47 21
16 17 2
16 18 10
16 20 26
16 24 24
16 48 8
17 19 4
17 21 8
17 25 6
17 49 12
18 19 11
18 22 13
18 26 2
18 50 3
19 23 14
19 27 3
19 51 7
20 21 3
20 22 11
20 28 4
20 52 15
21 23 6
21 29 10
21 53 8
22 23 7
22 30 15
22 54 11
23 31 2
23 55 28
24 25 14
24 26 9
24 28 6
24 56 5
25 27 3
25 29 10
25 57 7
26 27 1
26 30 16
26 58 14
27 31 32
27 59 5
28 29 16
28 30 8
28 60 13
29 31 16
29 61 1
30 31 10
30 62 4
31 63 60
32 33 9
32 34 13
32 36 3
32 40 10
32 48 24
33 35 3
33 37 3
33 41 13
33 49 12
34 35 4
34 38 13
34 42 8
34 50 10
35 39 9
35 43 2
35 51 15
36 37 13
36 38 12
36 44 2
36 52 1
37 39 3
37 45 12
37 53 8
38 39 2
38 46 13
38 54 8
39 47 3
39 55 1
40 41 6
40 42 2
40 44 11
40 56 10
41 43 10
41 45 13
41 57 1
42 43 2
42 46 12
42 58 12
43 47 8
43 59 18
44 45 1
44 46 13
44 60 10
45 47 30
45 61 2
46 47 31
46 62 28
47 63 31
48 49 2
48 50 13
48 52 16
48 56 12
49 51 7
49 53 5
49 57 16
50 51 11
50 54 9
50 58 11
51 55 1
51 59 31
52 53 12
52 54 2
52 60 2
53 55 12
53 61 7
54 55 14
54 62 7
55 63 37
56 57 1
56 58 1
56 60 14
57 59 25
57 61 23
58 59 2
58 62 7
59 63 61
60 61 19
60 62 18
61 63 38
62 63 9
;
end;