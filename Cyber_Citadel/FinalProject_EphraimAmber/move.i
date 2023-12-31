# 1 "move.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "move.c"


const unsigned int move_sampleRate = 11025;
const unsigned int move_length = 6992;

const signed char move_data[] = {
0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0,
0, -1, -3, -5, -7, -8, -8, -5, 0, 7, 17, 24, 31, 32, 22, 11, -4, -17, -28, -34,
-35, -31, -22, -11, 3, 15, 25, 30, 30, 26, 18, 6, -6, -18, -26, -31, -31, -26, -18, -7,
5, 16, 24, 28, 27, 22, 14, 3, -8, -18, -26, -29, -28, -22, -14, -3, 8, 17, 24, 26,
25, 19, 11, 0, -10, -19, -25, -27, -25, -20, -11, 0, 10, 18, 24, 25, 23, 17, 8, -2,
-12, -20, -25, -26, -24, -17, -8, 2, 12, 19, 24, 25, 22, 15, 6, -4, -14, -21, -26, -26,
-23, -16, -7, 3, 13, 20, 24, 25, 21, 14, 5, -6, -15, -22, -25, -25, -21, -14, -4, 6,
15, 21, 24, 23, 19, 11, 2, -8, -17, -22, -25, -24, -19, -11, -1, 8, 16, 22, 24, 22,
17, 9, -1, -10, -18, -23, -24, -22, -17, -9, 1, 10, 17, 22, 23, 20, 15, 6, -3, -12,
-19, -23, -24, -21, -15, -6, 3, 12, 19, 22, 22, 19, 13, 4, -5, -14, -21, -24, -24, -21,
-14, -5, 5, 13, 20, 23, 23, 19, 12, 3, -7, -15, -21, -24, -23, -19, -12, -3, 7, 15,
21, 23, 22, 17, 10, 1, -9, -16, -22, -24, -22, -17, -9, 0, 9, 16, 21, 22, 20, 15,
7, -2, -11, -18, -22, -23, -21, -15, -7, 2, 11, 17, 21, 22, 19, 13, 5, -4, -13, -19,
-22, -23, -19, -13, -5, 4, 12, 19, 22, 21, 18, 11, 3, -6, -14, -20, -23, -22, -18, -12,
-3, 6, 14, 20, 22, 21, 17, 10, 2, -8, -15, -21, -23, -22, -18, -10, -2, 8, 15, 20,
22, 21, 16, 8, -1, -10, -17, -22, -23, -21, -16, -8, 1, 9, 16, 21, 22, 19, 14, 6,
-3, -11, -18, -22, -22, -20, -14, -6, 3, 11, 17, 21, 21, 18, 12, 4, -5, -13, -19, -22,
-22, -18, -12, -4, 5, 13, 18, 21, 20, 16, 10, 1, -7, -14, -19, -22, -21, -16, -10, -2,
7, 14, 19, 21, 20, 16, 9, 1, -8, -16, -21, -22, -21, -16, -9, 0, 8, 15, 20, 21,
19, 14, 7, -2, -10, -17, -21, -22, -20, -14, -7, 2, 10, 16, 20, 21, 18, 12, 5, -4,
-12, -18, -21, -21, -18, -12, -5, 4, 12, 17, 20, 20, 16, 10, 2, -6, -13, -19, -21, -20,
-17, -10, -2, 6, 13, 18, 20, 19, 15, 8, 0, -8, -15, -19, -21, -20, -15, -9, 0, 8,
15, 19, 20, 19, 14, 7, -1, -9, -16, -20, -22, -20, -15, -8, 1, 9, 15, 20, 21, 18,
13, 6, -3, -11, -17, -21, -21, -19, -13, -6, 3, 11, 17, 20, 20, 17, 11, 4, -5, -13,
-18, -21, -21, -17, -11, -4, 5, 12, 18, 20, 20, 16, 9, 1, -7, -14, -19, -21, -20, -16,
-9, -1, 7, 14, 19, 20, 19, 14, 8, -1, -9, -16, -20, -21, -19, -15, -8, 1, 9, 15,
19, 20, 18, 13, 6, -3, -11, -17, -21, -22, -19, -14, -7, 2, 10, 16, 20, 21, 18, 13,
5, -4, -12, -18, -21, -21, -18, -13, -5, 4, 12, 18, 20, 20, 17, 11, 3, -6, -14, -19,
-21, -21, -17, -11, -2, 6, 13, 18, 21, 19, 15, 9, 0, -8, -15, -20, -21, -20, -15, -9,
0, 8, 15, 19, 20, 18, 14, 7, -2, -10, -16, -20, -21, -19, -14, -7, 2, 10, 16, 19,
20, 17, 12, 5, -4, -11, -17, -21, -21, -18, -13, -5, 3, 11, 17, 20, 20, 17, 11, 4,
-5, -12, -18, -21, -21, -17, -11, -4, 5, 12, 18, 20, 19, 16, 9, 2, -7, -14, -19, -21,
-20, -16, -9, -1, 7, 14, 18, 20, 18, 14, 7, -1, -9, -15, -19, -21, -19, -14, -7, 1,
9, 15, 19, 20, 17, 12, 5, -3, -10, -16, -20, -20, -18, -13, -5, 3, 10, 16, 19, 19,
16, 11, 3, -5, -12, -17, -20, -20, -17, -11, -4, 4, 11, 17, 19, 19, 16, 10, 3, -6,
-13, -18, -21, -20, -16, -10, -3, 6, 13, 18, 20, 19, 15, 8, 0, -8, -14, -19, -21, -19,
-15, -8, 0, 8, 14, 18, 20, 18, 13, 6, -2, -9, -16, -20, -20, -18, -13, -6, 2, 9,
15, 19, 19, 17, 12, 4, -4, -11, -17, -20, -20, -17, -12, -4, 4, 11, 16, 19, 19, 16,
10, 2, -6, -13, -18, -20, -19, -16, -10, -3, 5, 12, 17, 19, 19, 15, 9, 1, -7, -14,
-19, -21, -20, -16, -9, -2, 7, 13, 18, 20, 18, 14, 7, -1, -9, -15, -19, -21, -19, -14,
-7, 1, 8, 15, 19, 20, 17, 12, 5, -3, -10, -16, -20, -20, -18, -13, -5, 3, 10, 16,
19, 19, 16, 11, 3, -5, -12, -17, -20, -20, -17, -11, -3, 5, 12, 17, 19, 19, 15, 9,
2, -6, -13, -18, -20, -19, -15, -9, -2, 6, 12, 17, 18, 17, 14, 8, 0, -7, -13, -17,
-19, -18, -14, -8, -1, 6, 12, 16, 17, 16, 12, 6, -1, -7, -13, -17, -18, -16, -12, -6,
0, 7, 12, 16, 16, 14, 10, 4, -3, -9, -14, -16, -16, -14, -9, -3, 3, 8, 12, 14,
13, 11, 6, 1, -4, -9, -12, -13, -12, -10, -6, -1, 4, 7, 10, 10, 9, 7, 3, -1,
-4, -7, -9, -9, -8, -6, -3, 0, 3, 5, 6, 6, 5, 3, 1, -1, -4, -5, -6, -6,
-5, -3, -1, 0, 2, 3, 3, 3, 2, 1, 0, -1, -2, -2, -3, -2, -2, -1, 0, 0,
0, 1, 1, 0, 0, 0, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1,
-1, -1, -1, -1, -1, 0, 0, 0, 0, 1, 1, 1, 0, 0, -1, -2, -2, -3, -3, -2,
-1, 0, 1, 2, 3, 3, 3, 2, 0, -1, -3, -4, -4, -4, -3, -2, -1, 1, 2, 3,
3, 3, 2, 1, 0, -2, -3, -4, -4, -4, -3, -2, -1, 1, 2, 3, 3, 3, 2, 1,
0, -2, -3, -4, -4, -4, -3, -2, -1, 1, 2, 3, 3, 3, 2, 1, 0, -2, -3, -4,
-4, -4, -3, -2, -1, 1, 2, 3, 3, 3, 2, 1, 0, -1, -3, -4, -4, -4, -4, -3,
-1, 0, 2, 3, 3, 4, 3, 2, 1, -1, -2, -4, -5, -5, -5, -4, -2, -1, 1, 3,
4, 4, 4, 3, 2, 0, -2, -4, -5, -6, -5, -4, -3, -1, 1, 3, 4, 5, 5, 3,
2, 0, -2, -4, -5, -6, -6, -4, -3, -1, 1, 3, 4, 5, 4, 3, 2, 0, -2, -4,
-5, -6, -5, -4, -3, -1, 1, 3, 4, 4, 4, 3, 1, -1, -2, -4, -5, -5, -5, -3,
-2, 0, 2, 3, 4, 4, 4, 2, 1, -1, -3, -5, -6, -6, -5, -4, -2, 0, 2, 4,
5, 5, 4, 3, 1, -2, -4, -5, -6, -6, -5, -3, -1, 1, 3, 4, 5, 5, 4, 2,
0, -2, -4, -6, -6, -6, -5, -3, 0, 2, 4, 5, 5, 5, 3, 1, -1, -3, -5, -6,
-6, -6, -4, -2, 0, 2, 4, 5, 5, 4, 3, 1, -2, -4, -5, -6, -6, -5, -3, -1,
1, 3, 4, 5, 5, 4, 2, 0, -2, -4, -5, -6, -6, -4, -3, -1, 1, 3, 4, 5,
5, 3, 2, 0, -3, -4, -5, -6, -5, -4, -2, 0, 2, 3, 5, 5, 4, 3, 1, -1,
-3, -4, -5, -6, -5, -4, -2, 0, 2, 4, 5, 5, 4, 3, 1, -1, -3, -5, -6, -6,
-5, -3, -2, 0, 2, 4, 5, 5, 4, 2, 0, -2, -3, -5, -6, -5, -5, -3, -1, 1,
3, 4, 5, 4, 3, 2, 0, -2, -4, -5, -6, -5, -4, -3, -1, 1, 3, 4, 5, 5,
3, 2, 0, -2, -4, -5, -6, -5, -4, -2, 0, 2, 3, 5, 5, 4, 3, 1, -1, -3,
-5, -6, -6, -5, -4, -2, 0, 2, 4, 5, 5, 4, 3, 1, -1, -3, -5, -6, -6, -5,
-3, -1, 1, 3, 4, 5, 5, 4, 2, 0, -2, -4, -5, -6, -6, -5, -3, -1, 1, 3,
4, 5, 5, 3, 2, 0, -2, -4, -5, -6, -6, -4, -3, 0, 2, 3, 5, 5, 5, 3,
1, -1, -3, -4, -6, -6, -5, -4, -2, 0, 2, 3, 4, 5, 4, 3, 1, -1, -3, -4,
-5, -6, -5, -4, -2, 0, 2, 4, 5, 5, 4, 3, 1, -1, -3, -5, -6, -6, -5, -3,
-1, 1, 2, 4, 5, 4, 4, 2, 0, -2, -4, -5, -6, -5, -4, -3, -1, 1, 3, 4,
5, 4, 3, 2, 0, -2, -4, -5, -6, -5, -4, -2, 0, 2, 3, 4, 5, 4, 3, 1,
-1, -3, -4, -5, -6, -5, -4, -2, 0, 2, 4, 5, 5, 4, 3, 1, -1, -3, -5, -6,
-6, -5, -3, -2, 0, 2, 4, 5, 4, 4, 2, 0, -2, -4, -5, -5, -5, -4, -3, -1,
1, 3, 4, 4, 4, 3, 2, 0, -2, -4, -5, -5, -5, -4, -2, 0, 1, 3, 4, 4,
4, 3, 1, -1, -3, -4, -5, -5, -5, -3, -2, 0, 2, 3, 4, 4, 3, 2, 1, -1,
-3, -4, -5, -5, -5, -3, -2, 0, 2, 3, 4, 4, 4, 2, 1, -1, -3, -4, -5, -5,
-5, -3, -2, 0, 2, 4, 4, 4, 4, 2, 1, -1, -3, -5, -5, -5, -5, -3, -1, 1,
2, 4, 4, 4, 3, 2, 0, -2, -4, -5, -5, -5, -4, -3, -1, 1, 3, 4, 4, 4,
3, 1, 0, -2, -4, -5, -5, -5, -4, -2, 0, 1, 3, 4, 4, 4, 3, 1, -1, -3,
-4, -5, -5, -5, -3, -2, 0, 2, 3, 4, 4, 4, 2, 1, -1, -3, -4, -5, -5, -5,
-3, -1, 0, 2, 4, 4, 4, 3, 2, 0, -2, -3, -5, -5, -5, -4, -3, -1, 1, 3,
4, 4, 4, 3, 2, 0, -2, -4, -5, -5, -5, -4, -2, -1, 1, 3, 4, 4, 4, 3,
1, -1, -3, -4, -5, -5, -5, -3, -2, 0, 2, 3, 4, 4, 3, 2, 1, -1, -3, -4,
-5, -5, -4, -3, -1, 1, 2, 3, 4, 4, 3, 2, 0, -2, -3, -5, -5, -5, -4, -3,
-1, 1, 3, 4, 4, 4, 3, 1, 0, -2, -4, -5, -5, -5, -4, -2, 0, 2, 3, 4,
4, 4, 3, 1, -1, -3, -4, -5, -5, -5, -3, -2, 0, 2, 3, 4, 4, 3, 2, 0,
-2, -3, -5, -5, -5, -4, -3, -1, 1, 2, 4, 4, 4, 3, 2, 0, -2, -4, -5, -5,
-5, -4, -2, -1, 1, 3, 4, 4, 4, 3, 1, 0, -2, -4, -5, -5, -5, -4, -2, 0,
1, 3, 4, 4, 4, 3, 1, -1, -3, -4, -5, -5, -5, -4, -2, 0, 2, 3, 4, 4,
4, 3, 1, -1, -3, -4, -5, -5, -5, -3, -2, 0, 2, 3, 4, 4, 4, 2, 1, -1,
-2, -4, -5, -5, -4, -3, -2, 0, 1, 3, 3, 4, 3, 2, 1, 0, -2, -3, -4, -4,
-4, -3, -2, -1, 1, 2, 3, 3, 3, 2, 1, 0, -1, -3, -4, -4, -4, -4, -3, -1,
0, 2, 3, 3, 3, 3, 2, 0, -1, -2, -4, -4, -4, -4, -3, -1, 0, 2, 3, 3,
3, 2, 1, 0, -1, -3, -4, -4, -4, -3, -2, -1, 0, 2, 3, 3, 3, 2, 1, 0,
-2, -3, -3, -4, -3, -3, -2, -1, 1, 2, 2, 2, 2, 2, 1, 0, -1, -2, -3, -3,
-3, -2, -1, -1, 0, 1, 1, 2, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1, -1,
0, 0, 1, 1, 1, 1, 0, 0, 0, -1, -1, -1, -2, -2, -2, -1, -1, -1, 0, 0,
0, 1, 1, 0, 0, 0, 0, -1, -1, -2, -2, -2, -1, -1, -1, 0, 0, 0, 1, 1,
1, 0, 0, -1, -1, -1, -2, -2, -2, -2, -1, -1, 0, 0, 1, 1, 1, 1, 0, 0,
-1, -2, -2, -2, -2, -2, -1, -1, 0, 1, 1, 1, 1, 1, 0, 0, -1, -2, -2, -2,
-2, -2, -1, -1, 0, 1, 1, 1, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1, 0,
0, 1, 1, 1, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1, -1, 0, 1, 1, 2,
1, 1, 0, 0, -1, -2, -3, -3, -3, -2, -1, -1, 0, 1, 2, 2, 2, 1, 0, -1,
-1, -2, -3, -3, -3, -2, -1, 0, 1, 1, 2, 2, 1, 1, 0, -1, -2, -2, -3, -3,
-2, -2, -1, 0, 1, 1, 1, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1, 0, 0,
1, 1, 1, 1, 1, 0, -1, -1, -2, -2, -2, -2, -2, -1, 0, 0, 1, 1, 1, 1,
1, 0, -1, -1, -2, -2, -2, -2, -2, -1, 0, 0, 1, 1, 2, 1, 1, 0, -1, -2,
-2, -2, -3, -2, -2, -1, 0, 1, 1, 2, 2, 1, 1, 0, -1, -2, -2, -3, -3, -2,
-2, -1, 0, 1, 1, 2, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1, -1, 0, 1,
1, 1, 1, 1, 0, -1, -1, -2, -2, -2, -2, -2, -1, 0, 0, 1, 1, 1, 1, 1,
0, -1, -2, -2, -2, -2, -2, -2, -1, 0, 1, 1, 1, 1, 1, 1, 0, -1, -2, -2,
-3, -2, -2, -1, -1, 0, 1, 1, 2, 1, 1, 0, 0, -1, -2, -2, -3, -2, -2, -1,
-1, 0, 1, 1, 1, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1, -1, 0, 1, 1,
1, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1, -1, 0, 1, 1, 1, 1, 1, 0,
-1, -1, -2, -2, -2, -2, -2, -1, 0, 0, 1, 1, 1, 1, 1, 0, -1, -1, -2, -2,
-2, -2, -2, -1, 0, 0, 1, 1, 1, 1, 1, 0, -1, -1, -2, -2, -2, -2, -1, -1,
0, 0, 1, 1, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1, -1, 0, 1, 1, 1,
1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1, 0, 0, 1, 1, 1, 1, 1, 0, -1,
-1, -2, -2, -2, -2, -2, -1, 0, 0, 1, 1, 1, 1, 0, 0, -1, -1, -2, -2, -2,
-2, -1, -1, 0, 0, 1, 1, 1, 1, 0, 0, -1, -1, -2, -2, -2, -2, -1, -1, 0,
1, 1, 1, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1, 0, 0, 1, 1, 1, 1,
1, 0, -1, -1, -2, -2, -2, -2, -1, -1, 0, 0, 1, 1, 1, 1, 0, 0, -1, -1,
-2, -2, -2, -2, -1, -1, 0, 0, 1, 1, 1, 1, 0, 0, -1, -1, -2, -2, -2, -2,
-1, -1, 0, 0, 1, 1, 1, 1, 0, 0, -1, -1, -2, -2, -2, -2, -1, -1, 0, 0,
1, 1, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1, -1, 0, 1, 1, 1, 1, 1,
0, 0, -1, -2, -2, -2, -2, -2, -1, 0, 0, 1, 1, 1, 1, 1, 0, -1, -1, -2,
-2, -2, -2, -2, -1, 0, 0, 1, 1, 1, 1, 1, 0, -1, -1, -2, -2, -2, -2, -2,
-1, 0, 0, 1, 1, 1, 1, 1, 0, -1, -1, -2, -2, -2, -2, -1, -1, 0, 0, 1,
1, 1, 1, 0, 0, -1, -2, -2, -2, -2, -2, -1, -1, 0, 1, 1, 1, 1, 1, 0,
-1, -1, -2, -2, -2, -2, -1, -1, 0, 0, 1, 1, 1, 1, 0, 0, -1, -1, -2, -2,
-2, -2, -1, -1, 0, 0, 1, 1, 1, 0, 0, -1, -1, -1, -2, -2, -2, -1, -1, 0,
0, 0, 1, 1, 1, 0, 0, -1, -1, -2, -2, -2, -2, -1, -1, 0, 0, 1, 1, 1,
1, 0, 0, -1, -1, -2, -2, -2, -2, -1, -1, 0, 0, 1, 1, 1, 1, 0, 0, -1,
-1, -2, -2, -2, -2, -1, -1, 0, 0, 1, 1, 1, 1, 0, 0, -1, -1, -2, -2, -2,
-1, -1, -1, 0, 0, 1, 1, 1, 0, 0, 0, -1, -1, -2, -2, -2, -1, -1, 0, 0,
0, 1, 1, 1, 0, 0, 0, -1, -1, -2, -2, -2, -1, -1, 0, 0, 0, 1, 1, 1,
0, 0, -1, -1, -2, -2, -2, -2, -1, -1, 0, 0, 1, 1, 1, 1, 0, 0, -1, -1,
-2, -2, -2, -2, -1, -1, 0, 0, 1, 1, 1, 1, 0, 0, -1, -1, -2, -2, -2, -1,
-1, -1, 0, 0, 1, 1, 1, 0, 0, 0, -1, -1, -2, -2, -2, -1, -1, 0, 0, 0,
1, 1, 1, 0, 0, -1, -1, -1, -2, -2, -2, -1, -1, 0, 0, 0, 1, 1, 0, 0,
0, -1, -1, -1, -2, -2, -1, -1, -1, 0, 0, 1, 1, 1, 0, 0, -1, -1, -1, -2,
-2, -2, -1, -1, 0, 0, 0, 1, 1, 0, 0, 0, -1, -1, -1, -1, -2, -1, -1, -1,
0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0,
0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0,
0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1,
-1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0,
0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0,
0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0,
0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1,
-1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1,
-1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0,
0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0,
0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1,
-1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0,
0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0,
0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1,
-1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0,
0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0,
0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1,
-1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1,
-1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0,
0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0,
-1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1,
-1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0,
0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0,
0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1,
-1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0,
0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0,
0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1,
-1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1,
-1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0,
0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0,
-1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1,
-1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0,
0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0,
0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1,
-1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0,
0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0,
0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1,
-1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1,
-1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0,
0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0,
0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1,
-1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1,
0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0,
0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0,
-1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1,
-1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1,
0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0,
0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0,
-1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1,
-1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1,
0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0,
0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1,
-1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1,
0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0,
0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1,
-1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0,
0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0,
0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1,
-1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0,
0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0,
0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1,
-1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1,
-1, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0,
0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0,
0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1,
-1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1,
-1, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0,
0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0,
-1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1,
-1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1,
0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0,
0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0,
-1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1,
-1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0,
0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0,
0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1,
-1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1,
-1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0,
0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0,
0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1,
-1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1,
-1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0,
0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1,
-1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0,
0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0,
0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1,
-1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1,
-1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0,
0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0,
0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1,
-1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1,
0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0,
0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1,
-1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0,
0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0,
-1, -1, -1, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1,
-1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0,
0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0,
0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1,
-1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1,
0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0,
0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0,
-1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1,
-1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1,
0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0,
0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0,
-1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1,
-1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0,
0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0,
0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1,
-1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0,
0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0,
0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1,
-1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1,
-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0,
0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0,
0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1,
-1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1,
0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0,
0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0,
-1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, -1, -1,
-1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0,
0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0,
0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, -1, -1, -1,
-1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0,
0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0,
0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, -1,
-1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0,
0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0,
0, 0, -1, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1,
-1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, -1, -1, -1, -1, -1, -1, 0,
0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0,
0, 0, -1, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1,
-1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1,
-1, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0,
0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0,
0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1,
-1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1,
0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0,
0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0,
-1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1,
-1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1,
-1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0,
0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0,
-1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1,
-1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, 0, 0, 0,
0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1,
-1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, -1, -1, -1, 0, 0, 0, 0, 0,
0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, -1, -1, -1, -1, -1, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, -1, -1, -1, -1,
-1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, -1, -1, -1, 0,
-1, 0, 0, 0, 0, 0, -1, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0,
0, 0, -1, 0, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0,
-1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1,
-1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, -1, -1, 0, 0,
0, 0, 0, 0, 0, -1, 0, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0,
0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, -1, -1,
-1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1,
0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0,
0, 0, 0, -1, 0, -1, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0,
0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1,
-1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, -1, -1, -1, -1, 0,
-1, 0, 0, 0, 0, 0, 0, -1, 0, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0,
0, 0, 0, -1, 0, -1, -1, -1, -1, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0,
0, -1, -1, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, -1, 0, -1, -1, -1,
-1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, 0, 0,
0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, 0, -1, 0, -1, 0, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1,
-1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, 0,
-1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0,
0, 0, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0,
-1, 0, -1, 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, -1, -1, -1,
-1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0,
0, 0, 0, 0, 0, 0, -1, 0, -1, -1, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0,
0, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1,
-1, -1, -1, -1, -1, 0, 0, 0, 0, 0, -1, 0, 0, 0, -1, -1, -1, -1, -1, -1,
-1, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, 0, 0,
0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0,
0, 0, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1,
-1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1,
0, 0, 0, 0, 0, 0, 0, -1, -1, 0, -1, 0, -1, -1, -1, 0, -1, 0, 0, 0,
0, 0, 0, 0, -1, 0, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0,
-1, -1, -1, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1,
-1, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, -1, 0, -1, -1, -1, -1, -1, -1, 0,
0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0,
0, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1,
0, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, 0, 0, -1, 0, -1, 0, 0, 0, 0,
-1, 0, 0, 0, 0, -1, 0, 0, -1, 0, -1, };
