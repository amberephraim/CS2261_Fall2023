// shoot sound made by wav2c

const unsigned int shoot_sampleRate = 11025;
const unsigned int shoot_length = 10272;

const signed char shoot_data[] = {
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, -1, 
0, -1, -1, 0, -1, -1, -1, 0, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, 0, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, -1, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, 0, -1, 0, -1, -1, 0, -1, -1, -1, 
0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, -1, -1, 0, 0, -1, 
-1, 0, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, 0, -1, -1, 0, -1, 0, 
-1, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -2, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, -1, 0, -1, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, -2, -2, -2, -1, -2, 
-1, -1, -1, -1, -2, -2, -2, -2, -2, -1, -1, -1, -1, -1, -1, -2, -1, -1, -2, -1, 
-2, -2, -2, -2, -1, -2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 
0, 1, 0, 1, 1, 1, 1, 1, 2, 1, 2, 2, 1, 2, 1, 2, 1, 1, 2, 1, 
1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2, -1, -2, -1, -2, -2, -2, -2, -1, -2, 
-1, -2, -2, -1, -2, -2, -1, -2, -1, -1, -1, -1, -1, -1, 0, 0, -1, 0, 0, 0, 
0, -1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 2, 1, 2, 2, 1, 1, 2, 2, 
2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 
2, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, -1, -1, -2, -1, -2, -1, -2, -2, 
-2, -3, -2, -3, -2, -2, -3, -2, -4, -3, -4, -4, -4, -4, -4, -3, -3, -3, -3, -3, 
-3, -4, -4, -3, -3, -2, -1, -2, -1, -2, -2, -1, -1, -1, -1, 0, 0, 0, 0, 0, 
1, 1, 0, 2, 2, 2, 2, 2, 3, 0, 1, 1, 1, 1, 2, 1, 1, 2, 0, 1, 
1, -1, 0, 0, 0, -1, -2, -1, -3, -3, -3, -4, -3, -5, -4, -6, -6, -6, -6, -6, 
-7, -6, -7, -9, -7, -9, -9, -7, -9, -7, -9, -8, -8, -9, -8, -8, -9, -8, -8, -8, 
-7, -7, -8, -7, -8, -9, -7, -8, -6, -7, -7, -6, -7, -6, -5, -5, -4, -3, -5, -3, 
-4, -3, -3, -3, -2, -1, 0, 1, 2, 1, 2, 1, 3, 3, 4, 4, 3, 5, 4, 5, 
5, 6, 6, 5, 7, 6, 6, 8, 7, 8, 8, 8, 8, 8, 8, 9, 10, 9, 9, 8, 
7, 8, 9, 8, 8, 9, 8, 8, 8, 8, 6, 7, 7, 6, 7, 6, 6, 5, 4, 4, 
3, 4, 3, 3, 3, 2, 3, 2, 2, 2, 0, 1, -1, -1, -2, -3, -3, -4, -4, -4, 
-4, -5, -6, -7, -7, -7, -7, -7, -7, -7, -8, -8, -9, -9, -10, -9, -9, -9, -7, -9, 
-7, -8, -8, -8, -7, -7, -5, -6, -5, -5, -6, -4, -6, -5, -4, -4, -2, -2, -2, -1, 
-1, -1, 0, 0, 0, 0, 2, 2, 3, 4, 4, 5, 5, 4, 5, 5, 5, 6, 7, 9, 
8, 9, 9, 9, 9, 10, 9, 10, 11, 9, 10, 9, 9, 10, 8, 10, 10, 9, 10, 10, 
8, 10, 8, 8, 8, 6, 8, 6, 6, 5, 4, 5, 5, 4, 4, 2, 1, 0, 0, -1, 
-3, -2, -2, -4, -6, -6, -8, -10, -8, -9, -9, -10, -9, -12, -13, -12, -16, -14, -14, -12, 
-13, -13, -12, -12, -14, -13, -15, -14, -13, -14, -12, -14, -15, -14, -11, -14, -11, -12, -11, -10, 
-13, -11, -13, -11, -11, -10, -8, -9, -7, -7, -6, -5, -6, -1, -5, -2, -1, -3, 1, -1, 
0, 2, 2, 3, 5, 5, 8, 6, 8, 9, 8, 9, 8, 10, 9, 11, 10, 12, 11, 9, 
11, 9, 11, 10, 10, 12, 11, 10, 11, 10, 9, 8, 8, 9, 7, 10, 8, 8, 10, 8, 
9, 8, 7, 7, 5, 6, 5, 6, 6, 7, 6, 6, 7, 3, 5, 3, 1, 2, -2, -1, 
-2, -2, -3, -3, -3, -6, -8, -9, -8, -9, -9, -11, -10, -13, -13, -14, -12, -12, -10, -8, 
-10, -8, -11, -10, -9, -10, -8, -6, -8, -5, -7, -6, -6, -6, -4, -5, -4, -2, 0, -3, 
-2, -3, -3, -5, -2, -3, -2, 0, 0, 1, 2, 3, 2, 1, 1, 2, 0, 4, 1, 4, 
4, 3, 7, 3, 6, 6, 8, 6, 7, 7, 7, 9, 9, 9, 6, 7, 7, 7, 6, 8, 
5, 3, 5, 2, 4, 1, 2, 1, -2, 0, -1, 1, -1, 0, 2, 1, 0, 1, 0, 1, 
0, -1, -1, 1, -1, -4, -5, -6, -5, -7, -7, -6, -6, -6, -7, -11, -12, -11, -11, -8, 
-8, -10, -7, -5, -7, -3, -9, -10, -6, -11, -7, -9, -10, -11, -13, -13, -10, -13, -9, -9, 
-12, -8, -8, -3, -6, -3, -1, 1, -3, -1, 0, 1, 7, 3, 11, 4, 6, 7, 5, 5, 
-5, 2, 2, 3, 2, 1, 3, 1, 4, 5, 11, 10, 9, 13, 17, 22, 20, 22, 20, 20, 
20, 21, 17, 14, 7, 13, 9, 10, 5, -7, -5, -7, -1, -11, -4, -3, 10, 8, 2, 5, 
7, 25, 23, 19, 26, 18, 22, 27, 28, 16, 17, 20, -5, -7, -29, -24, -35, -41, -52, -63, 
-65, -61, -44, -55, -32, -16, 30, 42, 31, 52, 64, 76, 67, 31, 17, 7, 5, -19, -64, -83, 
-90, -80, -94, -87, -96, -73, -43, -5, 28, 16, 60, 60, 80, 90, 88, 62, 18, 2, -17, -38, 
-66, -94, -92, -88, -85, -68, -62, -19, -20, 2, 31, 84, 87, 77, 53, 45, 50, 63, 56, -20, 
-33, -58, -18, -27, -26, -7, -3, 27, 13, 45, 58, 48, 77, 43, 3, -32, -9, 4, -4, -21, 
-16, 5, -22, 20, 6, 10, 43, 53, 60, 60, 50, 50, 32, 12, 2, -29, -24, -29, -39, -28, 
-23, -8, -50, -59, -34, -30, 14, 30, 5, -8, 1, 16, 33, 23, 21, 14, 5, -2, -46, -85, 
-61, -59, -25, -37, -55, -13, -8, 32, 31, 18, 19, 33, 43, 21, -22, -60, -64, -77, -83, -101, 
-99, -73, -44, -37, -35, 4, 29, 46, 33, 53, 48, 44, 45, 15, 1, -5, -3, -14, -28, -29, 
-21, -21, 8, 32, 45, 53, 51, 38, 53, 54, 49, 39, 19, 28, 22, 16, -2, 0, 16, 15, 
13, 3, 10, 13, 12, 46, 37, 54, 73, 72, 82, 67, 44, 37, 36, 22, 24, -2, -30, -44, 
-38, -20, -5, -23, -9, 9, 18, 55, 24, 28, 1, -19, 16, -29, -27, -12, -27, -18, -21, -20, 
14, -3, -19, 4, -10, -9, -62, -67, -61, -57, -50, -66, -34, -28, 15, 0, -14, -3, 6, 27, 
-4, -66, -59, -44, -46, -44, -52, -31, -11, -10, -23, -9, 10, 26, 16, 18, 28, 31, 14, 3, 
-11, -14, -15, -18, -14, -9, 0, -16, -6, 11, 29, 45, 45, 54, 38, 13, 28, 26, 28, 5, 
18, 21, 25, 4, -4, 23, 33, 27, -29, -6, -4, -13, -9, 4, 13, -7, -1, 19, 41, 41, 
25, 22, 8, 19, 15, 9, -9, -29, -15, -39, -40, -60, -57, -41, -52, -50, -43, -49, -45, -25, 
-20, -21, -20, -24, -9, 2, -9, -14, -45, -23, -17, -31, -28, -55, -51, -56, -57, -36, -33, -40, 
-27, -15, -6, 5, 3, 6, 21, 6, -27, -29, -37, -31, -27, -20, -10, -1, 25, 37, 44, 55, 
46, 37, 46, 27, 26, 21, 12, 15, 13, 20, 26, 43, 55, 54, 59, 62, 67, 77, 65, 53, 
37, 33, 30, 21, 35, 27, 22, 23, 30, 48, 29, 12, 16, 39, 51, 37, 31, 24, 24, 27, 
16, 15, 19, 17, 16, 11, 2, -10, -12, -12, -13, -23, -24, -30, -24, -28, -24, -24, -18, -18, 
-10, -5, -8, 7, -8, -4, -17, -17, -42, -32, -47, -46, -56, -74, -57, -57, -35, -45, -41, -31, 
-11, -8, -22, -33, -27, -37, -20, -28, -30, -27, -24, -17, -23, -24, -15, -5, -3, 8, 1, 3, 
-16, -7, -14, -5, -10, -19, 0, 2, -1, 20, 19, 15, 19, 22, 25, 18, 26, 9, 22, 34, 
43, 39, 39, 33, 43, 48, 48, 45, 38, 45, 40, 34, 29, 37, 29, 30, 29, 23, 14, 10, 
14, 23, 18, 15, 6, 5, 8, -15, 1, 8, -9, -1, -7, -18, -10, -21, -27, -22, -29, -32, 
-31, -42, -31, -26, -35, -17, -35, -28, -38, -46, -32, -51, -64, -78, -69, -69, -76, -73, -74, -66, 
-49, -46, -54, -37, -35, -29, -6, -2, 8, 5, 9, 6, 0, -2, 5, -12, -1, -10, -12, 3, 
-11, -8, -17, -13, -6, -13, -5, 2, 12, 24, 21, 45, 35, 40, 32, 39, 38, 41, 47, 41, 
40, 53, 51, 43, 52, 30, 42, 33, 45, 32, 33, 40, 48, 61, 45, 52, 34, 53, 49, 36, 
43, 36, 27, 9, 15, 11, 7, -6, -8, -11, 7, -5, -14, -10, -4, -1, 3, 7, -13, -8, 
-14, -12, -30, -20, -29, -40, -30, -42, -34, -24, -40, -22, -21, -26, -22, -30, -20, -31, -21, -23, 
-1, -27, -13, -6, -44, -13, -29, -20, -32, -19, -35, -40, -21, -30, -16, -30, -14, -50, -9, -22, 
-27, -1, -20, 12, 4, 12, 15, 5, -4, 11, 17, 4, 12, 14, 4, 18, 6, 12, 19, 24, 
36, 14, 2, 9, 25, 14, 20, 20, 14, -7, 10, 8, 0, 24, 17, 20, 11, 22, 11, 32, 
24, 21, 37, 35, 53, 43, 42, 50, 38, 30, 47, 32, 40, 25, 17, 24, 16, 2, 14, -5, 
-13, -2, -9, 9, -16, -5, -6, 1, -2, -30, -6, -3, 12, 12, 8, 11, -9, 11, -12, -3, 
-6, -31, -30, -25, -19, -24, 12, -16, -10, -19, -42, -36, -49, -17, -50, -29, -18, -40, -32, -45, 
-40, -55, -39, -50, -36, -40, -21, -35, -31, -19, -23, -20, -45, -21, -33, -5, -10, -5, -3, 1, 
-19, -6, -4, -16, 2, -12, 3, -11, -5, 9, -6, -8, -2, 1, -2, 0, 5, -3, 18, 14, 
10, 14, 9, 35, 34, 22, 29, 14, 29, 21, 9, 32, 23, 19, 27, 20, 28, 25, 5, 32, 
35, 40, 39, 31, 14, 13, 25, 23, 16, 8, 15, 5, 5, 7, 6, -8, 10, -9, -4, 4, 
-2, -3, -9, 11, -36, 0, -9, -17, -27, -17, -6, -18, 3, -21, -1, -13, -1, -19, -3, -15, 
-23, -18, -38, -16, -22, -14, -25, -27, 4, -10, -12, -11, -42, -15, -29, -35, -31, -30, -13, -43, 
-17, -31, -33, -1, -22, 1, -13, -6, -17, -13, 17, 12, 14, 10, 13, 5, 9, 8, 24, 14, 
16, 6, 3, 5, 1, 20, 15, -3, 26, 30, 7, 25, 10, 21, 7, 16, 22, 28, 30, 14, 
33, 17, 26, 38, 36, 41, 33, 29, 30, 20, 31, 28, 19, 32, 28, 28, 30, 22, 12, 40, 
11, 11, 40, -8, 29, 12, 4, 7, 5, 18, -5, -1, -6, 4, -10, 16, 7, -2, -2, -3, 
9, -2, -10, -1, 1, -17, 7, -21, -26, -17, -37, -35, -46, -32, -44, -34, -33, -34, -9, -35, 
-29, -27, -55, -35, -36, -37, -14, -30, -33, -41, -6, -35, -35, -32, 7, -17, -42, -14, -15, 31, 
-35, -41, 6, 28, -53, 8, 20, 22, -33, 3, 26, -25, 12, -1, 58, -18, 12, -37, 25, 53, 
-9, -12, -10, 37, 12, 38, 31, 18, 28, 51, 10, -9, 38, 30, 57, 14, 16, 56, 21, 34, 
44, 46, 34, 31, 46, 33, 31, 38, 21, 31, 8, 29, 7, 8, 14, -26, -4, 0, 1, -20, 
-19, -11, -58, -48, -18, -52, -44, -50, -59, -54, -56, -61, -47, -37, -60, -33, -42, -50, -45, -39, 
-37, -43, -37, -61, -23, -10, -9, -27, -1, 2, -10, 4, 8, 7, 16, 68, 20, 41, 54, 42, 
48, 43, 70, 85, 62, 68, 57, 82, 103, 63, 64, 83, 90, 78, 93, 69, 88, 88, 72, 83, 
67, 79, 65, 47, 72, 77, 66, 49, 45, 64, 53, 43, 46, 33, 58, 35, 40, 48, 33, 43, 
17, 36, 22, 21, 8, 6, 15, 16, 3, 13, 35, 13, 10, 25, 22, -24, -1, 19, 3, 6, 
-5, 0, 18, 15, 6, -13, 28, 10, -30, -1, 30, -2, -25, 8, -17, 9, -5, -1, 1, 6, 
34, -34, 8, 22, -37, 11, 10, -24, -18, -12, 21, 7, -10, -15, -8, 9, -13, -31, -20, -9, 
0, -23, -35, -4, 16, -7, -36, -19, -36, -4, -30, -38, -4, -20, -10, -25, -41, -55, -17, -23, 
-19, -24, -23, -25, -42, -9, -50, -41, -26, -35, -35, -42, -13, -21, -45, -24, -48, -44, -35, -73, 
-20, -24, -29, -45, -38, -9, -40, -27, -34, -14, -45, -72, -62, -50, -40, -56, -53, -44, -44, -61, 
-31, -48, -68, -56, -78, -72, -67, -75, -77, -54, -46, -64, -105, -91, -41, -50, -77, -105, -103, -71, 
-63, -89, -86, -93, -63, -79, -100, -70, -79, -78, -74, -68, -75, -72, -97, -103, -70, -65, -67, -75, 
-84, -68, -86, -107, -102, -82, -53, -84, -92, -82, -89, -89, -96, -108, -104, -101, -74, -58, -74, -75, 
-94, -107, -59, -66, -64, -54, -79, -49, -67, -52, -46, -26, -15, -24, -24, -6, 11, -3, -1, -11, 
5, -8, 6, 42, 40, 6, 19, 63, 54, 26, 45, 62, 51, 44, 77, 64, 37, 77, 69, 71, 
70, 83, 81, 70, 99, 76, 84, 83, 81, 101, 78, 89, 96, 90, 99, 101, 96, 101, 100, 104, 
97, 88, 97, 92, 103, 87, 86, 100, 71, 89, 74, 83, 93, 73, 79, 62, 75, 77, 65, 64, 
65, 56, 57, 59, 55, 45, 27, 17, 36, 19, 26, 23, 3, 10, -7, -12, -12, -9, -23, -21, 
-24, -26, -34, -29, -43, -36, -38, -48, -42, -55, -40, -55, -48, -46, -51, -42, -56, -56, -52, -60, 
-48, -45, -50, -60, -51, -42, -41, -42, -43, -46, -54, -48, -46, -38, -55, -37, -35, -46, -43, -53, 
-45, -55, -40, -43, -54, -42, -51, -42, -42, -48, -41, -33, -47, -47, -43, -59, -46, -49, -42, -30, 
-41, -52, -46, -37, -43, -42, -39, -32, -32, -32, -32, -36, -35, -17, -21, -20, -4, -17, -9, -4, 
-1, 5, 8, 5, 4, 3, 14, 8, 24, 35, 24, 27, 26, 28, 18, 33, 36, 49, 46, 25, 
36, 46, 36, 37, 59, 51, 44, 47, 46, 52, 43, 53, 44, 61, 60, 44, 50, 46, 52, 42, 
61, 54, 55, 55, 40, 49, 61, 54, 60, 35, 42, 47, 39, 50, 50, 38, 39, 33, 26, 48, 
20, 37, 26, 35, 20, 17, 17, 15, 25, 12, 14, 11, 5, -2, -6, -16, 5, -11, -11, -14, 
-12, -27, -22, -20, -30, -31, -34, -28, -34, -38, -25, -25, -41, -25, -27, -35, -37, -39, -46, -39, 
-33, -36, -42, -39, -34, -36, -50, -45, -39, -37, -41, -42, -47, -48, -39, -40, -29, -31, -35, -44, 
-26, -23, -28, -33, -25, -11, -20, -25, -27, -10, -10, -5, -16, -17, -3, -16, -43, 20, 23, -41, 
1, -17, 6, -5, -1, 6, 1, 8, -25, -6, -11, 4, -12, -8, -3, -16, -15, -19, -19, -10, 
-10, -22, -22, -19, -15, -15, -18, -20, -29, -30, -32, -42, -34, -34, -17, -39, -32, -19, -31, -20, 
-22, -21, -27, -32, -12, -9, -30, -19, -14, -4, -3, -9, -3, 2, 5, -1, 16, 20, 21, 14, 
22, 30, 25, 31, 25, 42, 44, 44, 38, 46, 50, 38, 47, 54, 52, 53, 47, 58, 54, 49, 
49, 49, 51, 43, 48, 48, 60, 52, 52, 31, 43, 42, 33, 37, 36, 31, 33, 33, 17, 24, 
20, 21, 6, 26, 12, 8, 8, -4, 10, 7, 1, -7, -4, -5, -13, 2, 11, -10, -7, 1, 
4, 3, 3, 6, 9, 12, 3, 9, 13, 16, 22, 20, 24, 14, 26, 26, 33, 39, 41, 40, 
45, 54, 36, 57, 54, 51, 61, 59, 63, 70, 69, 70, 69, 71, 72, 82, 80, 82, 81, 91, 
84, 72, 94, 86, 79, 80, 84, 85, 80, 78, 91, 87, 87, 82, 76, 74, 85, 66, 78, 66, 
66, 78, 54, 61, 53, 59, 51, 63, 48, 42, 33, 49, 37, 26, 35, 31, 24, 11, 20, 3, 
15, 4, 6, 9, -5, -3, 3, -11, -14, -24, -25, -23, -18, -19, -33, -31, -42, -25, -36, -40, 
-42, -39, -42, -53, -49, -50, -49, -52, -53, -54, -51, -69, -63, -65, -68, -75, -76, -79, -80, -86, 
-79, -87, -91, -62, -105, -95, -98, -92, -99, -97, -84, -97, -97, -95, -92, -108, -98, -101, -97, -105, 
-98, -106, -100, -103, -100, -103, -100, -91, -104, -98, -99, -87, -100, -97, -98, -94, -96, -94, -95, -95, 
-91, -82, -89, -88, -76, -87, -75, -81, -81, -76, -77, -79, -70, -69, -63, -71, -62, -56, -59, -49, 
-59, -49, -51, -48, -44, -35, -39, -38, -29, -37, -29, -28, -26, -22, -19, -12, -13, -12, -13, -14, 
0, 8, 4, -4, 6, 18, 10, 7, 13, 22, 30, 24, 23, 31, 30, 33, 35, 38, 32, 36, 
41, 39, 47, 42, 46, 48, 53, 50, 52, 56, 53, 58, 52, 59, 59, 62, 61, 63, 65, 63, 
65, 61, 64, 68, 66, 60, 64, 69, 69, 67, 73, 72, 71, 67, 77, 77, 69, 67, 69, 77, 
70, 73, 69, 71, 74, 73, 68, 70, 66, 65, 71, 64, 63, 64, 60, 59, 64, 59, 49, 59, 
60, 50, 50, 50, 54, 45, 47, 45, 43, 42, 41, 41, 35, 41, 38, 40, 38, 35, 31, 32, 
29, 28, 26, 25, 23, 21, 22, 19, 18, 16, 18, 15, 16, 10, 7, 12, 6, 10, 5, 3, 
9, -1, 1, -4, 1, -7, -4, -3, -4, -3, -16, -8, -15, -11, -11, -15, -13, -15, -23, -21, 
-17, -19, -16, -18, -18, -23, -29, -28, -24, -26, -23, -28, -30, -31, -32, -29, -38, -33, -35, -35, 
-31, -39, -39, -35, -40, -40, -32, -37, -38, -42, -32, -39, -44, -34, -40, -38, -41, -38, -41, -41, 
-34, -36, -37, -37, -35, -36, -33, -33, -34, -34, -32, -30, -29, -32, -37, -22, -28, -25, -28, -26, 
-25, -31, -18, -24, -22, -22, -23, -23, -17, -21, -23, -17, -17, -18, -15, -15, -16, -11, -15, -14, 
-13, -15, -12, -12, -11, -13, -17, -13, -9, -14, -12, -17, -13, -10, -16, -16, -20, -9, -15, -19, 
-18, -14, -15, -17, -15, -15, -17, -22, -16, -19, -18, -18, -23, -17, -16, -17, -23, -24, -16, -13, 
-19, -28, -13, -12, -13, -24, -21, -13, -15, -18, -25, -14, -18, -11, -15, -18, -13, -18, -17, -12, 
-18, -14, -14, -18, -14, -14, -9, -13, -13, -13, -12, -11, -13, -8, -9, -11, -8, -8, -9, -10, 
-3, -10, -3, -2, -7, -2, -6, -2, -2, 3, 0, 3, 4, 1, 3, 6, 6, 6, 12, 11, 
14, 9, 15, 13, 18, 19, 12, 20, 15, 21, 21, 22, 25, 28, 24, 24, 23, 27, 31, 32, 
31, 29, 33, 28, 37, 35, 36, 36, 38, 37, 39, 39, 42, 42, 42, 46, 40, 47, 44, 44, 
46, 48, 44, 51, 50, 49, 51, 49, 49, 46, 55, 52, 49, 50, 50, 53, 52, 47, 51, 55, 
47, 48, 48, 48, 50, 47, 47, 45, 47, 47, 47, 42, 45, 46, 39, 42, 41, 35, 38, 37, 
35, 33, 35, 33, 28, 33, 29, 29, 26, 26, 22, 20, 20, 22, 20, 13, 15, 13, 13, 13, 
11, 12, 9, 8, 9, 7, 3, 0, 4, 1, 4, -4, -4, -3, -1, -6, -7, -5, -9, -4, 
-9, -9, -13, -9, -13, -13, -13, -17, -14, -15, -19, -20, -19, -16, -19, -20, -16, -21, -24, -25, 
-25, -24, -23, -30, -25, -29, -27, -25, -29, -26, -28, -26, -32, -27, -26, -29, -29, -29, -27, -32, 
-27, -27, -32, -29, -31, -29, -30, -32, -27, -26, -30, -24, -27, -30, -22, -26, -24, -28, -25, -26, 
-25, -25, -26, -21, -26, -18, -23, -25, -22, -19, -17, -21, -23, -16, -16, -16, -14, -15, -17, -14, 
-9, -13, -14, -13, -7, -13, -6, -11, -7, -8, -5, -8, -12, -5, -8, -5, -6, -1, -13, -1, 
-4, -5, -5, -2, -7, -5, 0, -6, -2, -6, -1, -8, 0, -8, -1, -1, 0, -2, -4, 3, 
-2, 0, -4, 1, -4, 3, -3, -5, 2, 2, 2, -3, 1, 0, 0, 3, -3, 1, 0, 0, 
1, 3, 1, -1, 4, 4, 0, -1, 6, -4, 1, 0, 2, 0, -1, 1, 0, 4, -4, -2, 
-2, -2, -4, -1, -1, 0, -4, 0, -4, -4, -5, -6, 1, -10, -5, -9, -4, -9, -8, -7, 
-8, -3, -11, -6, -7, -11, -10, -8, -9, -10, -8, -11, -12, -12, -12, -9, -11, -11, -12, -12, 
-10, -9, -10, -13, -8, -10, -10, -11, -14, -12, -13, -8, -9, -8, -11, -11, -5, -7, -7, -9, 
-8, -9, -4, -2, -7, -7, -5, -5, -7, -2, -1, -3, 0, 2, -3, -2, 2, 0, 1, 9, 
3, 2, 7, 3, 4, 6, 8, 6, 6, 11, 8, 9, 12, 8, 13, 14, 10, 12, 14, 12, 
12, 14, 15, 15, 17, 19, 17, 14, 16, 19, 17, 17, 17, 17, 16, 19, 18, 16, 17, 13, 
14, 18, 25, 11, 16, 18, 14, 17, 17, 15, 18, 12, 17, 17, 15, 18, 8, 19, 19, 16, 
17, 11, 10, 19, 11, 16, 12, 10, 19, 11, 13, 11, 11, 15, 8, 8, 13, 11, 9, 12, 
10, 8, 13, 9, 8, 10, 9, 5, 9, 3, 9, 3, 3, 5, 4, 6, 0, 2, 2, 3, 
0, 1, -4, 5, -4, 4, -1, -5, -3, -5, 8, -10, 1, -9, 0, -7, -4, -3, -16, 5, 
-13, -2, -14, -4, -4, -12, -5, -12, -8, -3, -12, -7, -8, -7, -7, -20, 9, -12, -13, -11, 
-7, -3, -9, -9, -7, -8, -9, -7, -7, -3, -13, -4, -11, -4, -8, -5, -7, -8, -4, -8, 
-4, -7, -4, -5, -4, -5, -6, -6, -7, 0, -6, -6, -3, -3, -1, -6, -6, -2, -6, 1, 
-3, -11, 0, -5, 0, -6, -4, -2, -3, 2, -7, -1, -7, -9, 3, -6, -4, -6, -10, 1, 
-5, -1, -9, -9, 0, -5, -7, -6, -4, -7, -3, -10, -5, -1, -10, -3, -10, -4, -3, -7, 
-2, -14, -4, 0, -8, -7, -4, -3, -8, -4, -6, -4, -3, -8, -4, -8, 2, -1, -7, -1, 
-6, -3, -7, -4, 3, -5, -4, 0, -2, 0, -3, -4, -2, -8, -1, 2, -8, -1, -4, -1, 
2, -3, -2, -10, -3, 5, -2, -5, -5, 0, -1, -8, 2, -4, -10, 1, -4, -3, -2, -6, 
-2, -5, -2, -7, -3, -2, -3, -3, -5, -5, -8, 0, -6, 0, -4, -7, -4, -5, -2, -1, 
-12, -4, -3, -7, 3, -6, -10, 3, -2, -4, -2, -4, 0, -5, 0, -3, -2, -2, 1, -1, 
0, -5, -1, 2, 0, 1, 3, -4, -2, 11, -5, 2, 1, 1, 0, 2, 4, -3, 6, 2, 
5, 0, 2, 4, -1, 9, 3, 2, 2, 7, 7, -2, 3, 5, 3, 7, 2, 1, 5, 3, 
3, 0, 7, 6, 1, 3, 3, 3, 2, 2, 6, 3, 1, 3, 2, 7, 4, -4, 3, 0, 
5, 4, 3, 1, -1, 3, -3, 1, 0, 1, 6, -1, -3, 1, -2, 2, 0, 4, -5, 3, 
1, -4, 1, 1, 3, -3, -1, -3, -2, -1, 6, -7, 4, -3, -6, 2, -5, 1, -3, -3, 
2, 1, -6, -1, -3, -2, -1, -2, -5, -2, -1, 1, -3, -3, -2, -3, -1, 2, -6, -9, 
9, -5, -3, -4, 4, -3, -7, 7, -2, -5, -3, 3, -2, -2, 5, -2, -5, 2, -2, 5, 
-3, 5, 1, -1, 5, -6, 4, -3, 4, 7, -3, 0, 4, 0, 7, -1, 2, 8, 0, 6, 
-2, 5, 1, 1, 4, 7, 3, -1, 5, -1, 2, 4, 7, 1, 1, 5, 1, 3, 4, 7, 
1, 2, 1, 1, 6, 4, 6, 1, 5, 0, 8, 7, -7, 6, 6, 4, 2, -3, 3, 7, 
4, 0, 5, 3, 0, 4, 3, 5, 1, 5, 1, 2, 2, -2, 9, 0, 3, -1, -3, 6, 
1, 5, 0, -2, 3, -5, 0, 0, 2, 4, -6, 3, 0, -3, 0, -5, 2, -2, -5, 0, 
-5, -3, -2, -3, 1, -7, -5, -4, -7, 4, -6, -3, -3, -7, 1, -7, -3, -5, -1, 0, 
-7, -5, 0, -6, -1, -6, -3, -2, -6, 1, -12, 4, -6, -5, 2, -8, 0, -6, -2, -2, 
-5, 2, -3, -5, 0, -4, 0, -3, -1, -1, 1, -2, -2, -1, 0, 2, -2, 0, 0, 6, 
-7, 6, -2, 1, 3, 0, 3, -4, 7, 0, 4, -1, 3, -1, 3, 2, 2, 5, -1, 5, 
-1, 4, 2, 3, 6, 1, 3, 3, 5, 0, 5, 8, -4, 6, 2, 3, 6, 2, 3, 4, 
-2, 3, 8, -4, 8, 1, 6, 3, 3, 4, -1, 7, 2, 6, 2, 3, 1, 8, 4, 1, 
4, 3, 7, 2, 3, 3, 7, 1, 5, 2, 6, 6, 0, 8, 5, 3, 8, 6, 2, 7, 
7, -2, 7, 4, 2, 10, 3, 5, -1, 9, 3, 3, 10, -4, 6, 1, 2, 4, 5, 2, 
-3, 10, 4, 1, -1, 7, 2, -4, 2, 7, 1, -5, 4, 0, -2, 2, 1, 1, -3, -2, 
0, -4, 3, -4, 3, -8, -4, 3, -6, 1, -9, 0, -5, -4, -1, -8, -1, -5, -7, -2, 
-9, -3, -4, -4, -5, -5, -8, -7, -2, -9, -4, -8, -4, -7, -8, -8, -3, -7, -8, -4, 
-8, -6, -7, -8, -6, -7, -7, -5, -9, -5, -10, -6, -7, -7, -5, -10, -6, -4, -10, -3, 
-10, -6, -6, -9, -4, -11, -5, -8, -4, -11, -6, -7, -9, -6, -6, -8, -7, -7, -7, -6, 
-10, -6, -7, -5, -8, -7, -7, -6, -10, 0, -12, -6, -1, -12, -3, -10, -1, -8, -8, -3, 
-4, -5, -3, -7, -4, -3, -1, -3, -8, 2, -5, 0, -5, -1, -2, -3, 0, 0, -1, -3, 
4, -3, 0, 0, 3, -2, 3, -1, 2, 1, 5, 4, -3, 6, 2, 1, -1, 5, 3, -1, 
7, 5, -3, 3, 5, -1, 5, 0, 0, 2, 3, 5, 2, 0, -1, 4, 3, 6, -3, 6, 
0, 0, 5, 2, 4, 0, 6, -7, 5, 5, -3, 4, -3, 4, 1, -6, 12, 3, -3, -6, 
-3, 11, -4, 10, 1, -13, 7, 2, 4, -6, 4, -3, -5, 5, 0, 1, -3, 3, -2, 2, 
-3, 0, 0, 1, -1, -3, 0, -1, 2, -2, -2, -1, 2, -4, 0, 1, -2, -1, -1, 2, 
-4, -4, 3, -4, -1, 0, -5, 1, 0, -4, -2, 2, -1, -5, 0, 1, -2, -1, -2, -3, 
0, 1, 0, -2, -4, 0, 1, -1, -3, 2, -3, -4, 4, -5, 3, -2, 0, 0, -4, 5, 
-6, 1, -1, -3, 2, -4, -1, -1, 1, -1, -5, 3, -1, -2, -1, 1, -2, -1, -1, 0, 
-2, -3, 0, -5, 2, -4, -1, 1, -3, -1, -3, -1, 2, -4, 0, -2, -2, 1, -3, 1, 
-5, -1, 1, -1, 0, -4, -1, 2, -2, 1, 0, 0, -2, 0, 0, -2, 3, 2, -2, 0, 
3, -3, 5, 1, -1, 2, 2, -1, 1, 1, 1, 3, 2, 1, 0, 7, -1, 0, 5, -4, 
7, 3, -2, 3, -2, 9, -6, 5, 2, 1, 0, -2, 5, 1, 3, -3, 3, 1, 0, -1, 
4, 0, 0, -1, 3, 0, -2, 2, -1, -2, 1, -2, 0, 3, -4, 2, -4, -1, 0, 0, 
0, -3, -1, -2, 0, -3, 0, 2, -1, 1, -3, -2, -2, 1, -1, -1, -1, -4, 2, 0, 
-2, -1, 2, -1, 2, -1, 0, 1, -3, 3, -2, 1, -2, 3, 1, -2, 2, 0, 3, -1, 
0, 3, 0, 0, 1, -1, 5, 2, -2, 3, 0, -1, 6, -1, -1, 4, -4, 3, 3, -2, 
2, 2, 1, 3, -2, 2, 4, -6, 0, 7, -7, 9, -4, -1, 6, -6, 6, -4, -1, 6, 
-2, 1, -2, -3, -2, 2, 9, -15, 6, 3, -1, -1, -2, 2, -5, 5, -5, 1, -4, 3, 
-1, -1, -2, 0, -1, -1, 2, -3, 3, -1, -1, -2, 0, -1, -2, -1, 0, -1, -2, 1, 
-2, 1, -3, -2, 2, 0, -2, -3, 2, 0, -3, -3, 1, -1, 1, -3, -2, 3, -2, -1, 
1, -3, -1, 1, -2, 3, -1, 0, -2, 6, -1, -6, 5, 1, -1, 0, 1, -3, 3, -1, 
-2, 2, 1, -2, 2, 2, 0, 1, 0, 1, 1, 3, 0, 1, 2, 2, 3, -2, 1, 5, 
4, -2, 1, 3, 1, 2, -1, 4, 3, 0, 0, 6, -1, 1, 3, 3, 2, 1, 2, 1, 
6, 0, 0, 6, 1, -1, 8, -1, 6, 1, -1, 6, 4, 0, 3, 2, 1, 5, 1, 1, 
2, 5, -1, 4, 5, 4, -2, 2, 2, 6, 3, -1, 3, 2, 3, -1, 4, 2, 4, 1, 
2, 2, -1, 4, 0, 2, 0, 1, 2, -1, 3, 0, 1, -1, -1, 0, 1, -2, -1, 2, 
-3, -1, -3, 1, -3, -3, -2, -4, -2, -1, -4, -7, -1, -1, -5, -6, -4, -5, 2, -10, 
-7, 0, -6, -3, -7, -7, -7, -3, -7, -4, -5, -8, -5, -4, -8, -2, -6, -11, -5, -1, 
-8, -8, -3, -13, -1, -7, -7, -6, -3, -8, -10, -7, -7, -5, -7, -6, -9, -3, -9, -7, 
-5, -6, -8, -4, -9, -8, -6, -7, -6, -6, -7, -7, -6, -7, -4, -7, -5, -9, -5, -4, 
-9, -6, -6, -5, -3, -6, -6, -13, 1, -3, -6, -4, -5, -4, -6, -2, -7, 0, -8, -3, 
-1, -2, -6, 0, -4, -5, 1, -4, -2, -1, -3, -1, -1, -2, -3, 2, 0, -10, 8, -7, 
1, 0, -2, 0, 0, 2, -4, 8, -8, 0, 4, 0, -2, 3, 2, -3, 5, -1, 1, 4, 
2, -5, 7, -1, 4, 3, -2, 6, 2, 4, 1, 4, 3, 5, 2, 5, 2, 6, 3, 3, 
3, 8, 6, 0, 7, 4, 5, 8, 0, 6, 5, 5, 10, 1, 7, 6, 7, 5, 8, 2, 
6, 7, 5, 7, 7, 7, 6, 5, 6, 6, 6, 6, 8, 8, 1, 10, 3, 8, 3, 4, 
11, 3, 6, 6, 2, 7, 5, 6, 4, 4, 5, 3, 7, 1, 6, 3, 5, 2, 4, 6, 
-1, 3, 5, 3, 1, 4, 2, 1, 4, 0, 3, 1, -2, 8, 0, -1, 0, 1, 6, -4, 
0, -5, -2, 8, -1, -7, 2, 3, -4, -3, -6, 7, -4, -2, 0, -6, 4, -8, -2, -1, 
0, 0, -9, 1, -2, -3, -1, -5, -4, -1, -1, -5, 0, -8, -3, 0, -4, -2, -3, -7, 
-2, -3, -3, -3, -6, -4, -3, -6, -4, -2, -7, -3, -3, -1, -9, -4, -4, -3, -3, -6, 
-5, -5, -9, -3, 2, -10, -2, -5, -8, 0, -8, -6, -5, -1, -6, -7, -1, -10, 1, -6, 
-2, -9, -4, -1, -5, -4, -2, -4, -6, -1, -4, -5, -5, -2, -6, 2, -5, -4, -2, -2, 
-5, 1, -6, -1, -4, -5, 1, -3, -3, -4, -1, -6, 1, -7, -1, -3, 0, -4, -2, -1, 
-5, 0, -4, -4, 1, -4, -4, 3, -6, -1, -2, -1, -3, 0, -4, 0, 0, -4, -1, -4, 
0, -2, 3, -5, 1, -4, 0, -3, 3, -2, -7, 4, -4, 3, -5, 1, -3, -1, -1, 1, 
-1, -1, -4, 1, -1, -1, 2, -3, -2, 1, 0, -2, 1, -3, 2, 3, -2, -5, 5, -1, 
1, 6, -4, -6, 6, 0, 2, 3, -3, 2, 2, 1, -1, 4, 2, 3, 0, 0, 2, 2, 
2, 1, 6, -2, 0, 9, -2, 4, 3, 4, -1, 6, 0, 4, 3, -1, 6, 1, 5, 0, 
5, -2, 5, 4, 3, 3, 2, 0, 5, -1, 4, 5, 0, 2, 4, 2, 2, 2, 1, 3, 
0, 9, -1, 0, 5, 1, 2, 7, -2, 5, -2, 6, -1, 0, 5, 0, 5, -5, 5, 1, 
-1, -1, 10, -5, 3, 0, -1, 5, -2, 4, -2, 2, -2, -1, 2, 1, 0, 0, -2, 3, 
-1, 1, 2, -1, -2, 1, -1, 1, 1, -4, 1, 0, 0, -2, 3, 1, -2, -1, 1, -2, 
1, 1, -3, -1, 2, -2, -1, -1, 2, -1, -2, 0, 0, 0, -3, 6, -7, 2, -2, -3, 
2, -2, 0, -4, 3, -3, -3, 0, 0, -2, -2, 0, -3, -1, -1, -4, 0, -3, 2, -4, 
-2, -1, -1, -2, -3, -1, -6, 1, -3, -2, -2, -3, -3, -1, -1, -4, -1, -3, -4, 0, 
-4, 0, -4, -2, -1, -4, -2, -2, 1, -4, 0, -3, 0, -2, -1, -2, -3, 2, -2, -2, 
1, -1, -2, 0, 1, -2, 0, -1, 1, -1, 3, -2, 0, 3, -2, 1, 1, 0, -4, 7, 
-7, 10, -9, 5, 3, -4, 4, 0, 3, -2, 6, -7, 8, -4, 5, -5, 6, -3, 2, 4, 
-4, 6, -3, 6, -4, 6, -3, 6, -4, 2, 7, -7, 5, 4, -2, 2, 3, -2, 3, 1, 
1, 1, 2, 1, 1, 1, 1, 0, 1, 0, 2, -1, 1, -1, 0, 2, -2, 5, -3, 4, 
-1, -2, 4, 0, 1, -5, 5, 0, 1, -2, 0, 1, -1, -1, 3, 0, -2, 0, -1, 2, 
-2, 0, -1, 0, -2, 2, -4, 3, -3, 0, -2, -2, 3, -5, 1, -1, 0, -4, -1, -3, 
-1, -3, -2, -3, -1, -3, -2, -5, -2, -3, -3, -4, -4, -3, -3, -6, -6, 0, -9, 0, 
-9, -3, 0, -9, -8, 1, -4, -8, -4, -5, -4, -6, -3, -6, -4, -6, -2, -5, -5, -3, 
-5, -5, -4, -4, -5, -3, -3, -6, -2, -3, -5, -4, -1, -4, -5, -2, -2, -1, -4, 0, 
-3, -2, -3, -2, -1, -2, -1, -2, 0, -1, -2, -2, 1, 0, -2, 0, -1, 0, 0, 1, 
-2, -1, 1, -1, 2, -2, 1, 1, 1, -1, 2, 1, -1, 1, 2, 1, 0, 2, 0, 3, 
-1, 2, 1, 3, -1, 2, 3, -1, 3, -1, 3, 2, 1, 1, 2, 1, 1, 3, 1, 0, 
3, 1, 3, 1, 2, 2, 2, 1, 2, 2, 1, 3, 1, 4, 1, 0, 1, 4, -1, 4, 
0, 1, 4, -2, 2, 2, 2, 1, 1, -1, 4, 1, 1, 0, 2, 3, 0, 0, 4, -1, 
0, 4, -2, -2, 0, 4, -2, 1, -3, 1, 2, 0, -3, -2, 4, -6, 4, -4, -4, 4, 
-5, -2, 3, -8, -2, 4, -7, 0, 0, -6, 1, -5, -4, 0, -6, 1, -6, -4, 5, -6, 
-13, 11, -9, -3, 0, -12, 7, -8, -1, -3, -2, -6, 4, -9, 1, -4, -5, 0, -7, 2, 
-6, -2, -2, -1, -9, 6, -12, 3, -3, -5, 1, -10, 6, -8, -2, 0, 0, -9, 1, -5, 
-1, 0, -8, 3, -4, -2, 0, -2, -2, 0, -8, 7, -6, -6, 3, -2, -5, -5, 7, -2, 
0, -4, 3, -3, 0, -3, 0, 2, -2, 2, -1, 4, -2, 2, -5, 5, -1, 3, 1, -1, 
3, -1, 5, -2, 0, 6, 1, 1, 3, 2, 3, -4, 9, 0, 2, 1, 4, 4, 3, 1, 
3, 5, 1, 6, 0, 7, -6, 6, 4, 2, 1, 3, 9, 0, -2, 7, 8, -7, 6, 5, 
2, 1, -3, 9, 5, 0, 6, -2, 2, 5, -2, 7, 1, -2, 8, -6, 5, 7, -1, 1, 
4, 4, -2, 2, 1, 7, -2, 3, 3, -1, 2, -1, 2, 5, 0, -3, 5, 2, 0, 1, 
4, -4, 5, 0, -1, 5, -1, 1, 2, 1, -3, 3, -1, 1, 2, 2, -1, 1, 0, 1, 
-1, -2, 1, -1, 2, -1, -2, 2, 3, -2, 2, -5, 4, -2, -1, -2, 0, 2, -4, 0, 
-5, 6, -5, 2, -5, 2, -1, -3, -1, -6, 3, -2, 5, -12, 1, 1, -7, 4, 0, -10, 
-2, 4, -4, 0, -9, 3, 0, -8, -1, 3, -6, -1, 3, -9, 1, -6, 3, -3, -7, 6, 
-4, -6, -1, 1, -6, -1, -3, -1, 1, -3, 0, -7, -2, 1, -7, 2, 2, -1, -6, 0, 
-5, -1, 3, -6, 4, -5, 3, -4, -2, -4, 2, -2, -2, 3, -5, 1, -5, 3, -5, 2, 
-2, 0, -2, -2, -1, -3, 1, -2, 0, 1, -3, -3, 2, -2, -2, -1, 0, -1, -2, -2, 
2, -3, 1, -5, 2, -5, 1, 2, -7, 1, -2, 0, -3, 2, -5, 3, -4, -1, -2, 0, 
-2, -2, 0, -3, 0, -2, -2, -3, 1, -5, 3, -4, -2, -1, -2, -1, -3, -3, -2, 0, 
-1, -4, -2, 1, -3, -4, 0, -1, -4, -1, -3, 0, -3, -1, -2, -3, -2, -2, -3, -2, 
0, -1, -3, 0, -2, -3, 0, -1, -4, -1, -2, -1, 0, -3, -1, -1, 1, -4, 0, 0, 
0, -4, 2, -1, -2, 1, -3, 1, -2, 1, -2, 1, 0, -1, -1, 2, -1, 0, 2, 0, 
2, 0, 0, 1, -1, 2, 2, -1, 3, -2, 1, 1, 5, -2, 0, 3, 0, 3, -1, 2, 
0, 3, 1, 2, -1, 3, 0, 0, 2, 1, 2, 0, 2, 1, 3, -2, 3, 0, 3, 2, 
1, 2, 0, 2, 0, 3, 1, 1, 0, 3, 3, 1, -1, 3, 1, 2, 1, 0, 4, -1, 
2, 1, 2, 1, 0, 1, 3, 1, 1, 1, 0, 2, 0, 2, 2, -1, 1, 2, -2, 3, 
2, -3, 1, -1, 1, 3, -3, -2, 2, 0, -1, -2, 0, 1, -3, 0, 0, -2, -1, -3, 
2, -1, -4, -1, -2, -1, -1, -1, -2, -1, -2, -1, -2, -1, -3, -2, -2, -2, -1, -2, 
0, -3, 0, -3, 0, -2, -3, -1, -1, 0, -2, -3, -2, 0, -3, -1, -1, -2, -2, -1, 
-1, 0, -2, -1, -2, 1, -2, -1, 1, -3, 1, -3, 1, -1, -1, 1, -2, -2, 0, 2, 
-3, 0, 2, -3, 2, 0, -1, 1, -1, 0, 0, 0, 1, -1, 0, 2, -2, 0, 0, 1, 
0, -2, 1, 1, 0, 0, 0, 0, 0, 2, -2, 0, 1, -2, 2, -2, 0, -1, 0, -1, 
-1, 1, -5, 2, -1, 0, -3, -3, 1, -1, -2, -3, 0, -3, -3, 1, -3, -3, -3, -2, 
4, -7, -3, -1, -2, -3, -2, -2, -4, -1, -5, 1, -5, -1, -6, -2, 0, -3, -3, -4, 
0, -6, -2, -1, -2, -2, -6, -3, 0, -5, 0, -8, -1, 0, -8, 0, -1, -6, -3, -1, 
-2, -3, -4, -3, -2, 0, -6, 0, -2, -5, -1, -3, -3, -2, -2, -2, -2, -4, -4, -3, 
0, -4, -4, -2, -1, 0, -8, 0, -1, -4, 0, -5, 2, -3, -3, -2, -3, 1, -5, 2, 
-2, 1, -5, 0, -1, -5, 2, 0, -2, -1, 0, -1, 1, -3, 2, -4, 5, -1, 1, -4, 
1, 4, -3, 3, 1, 3, 1, 2, -2, 3, -1, 5, 0, 3, 3, 0, 2, 1, 3, 0, 
3, 3, 1, 1, 2, 4, 1, 2, 4, 1, 3, 1, 3, 3, 3, 1, 3, 3, 4, 1, 
2, 3, 2, 3, 5, 2, 1, 6, 0, 4, 1, 5, 2, 2, 4, 2, 3, 2, 5, 1, 
4, 1, 3, 3, 2, 3, 2, 3, 3, 1, 4, 4, 3, 2, 3, 3, 2, 3, 2, 4, 
2, 2, 2, 5, 3, 1, 4, 3, 2, 3, 2, 1, 3, 2, 3, 2, 1, 2, 4, 2, 
0, 4, 2, 0, 1, 4, 0, 1, 0, 2, 1, 2, -1, 1, 1, 0, 0, 0, 3, -3, 
2, 1, -2, -2, 1, -1, 1, -1, -3, 1, -1, -2, -2, -1, -1, -2, -2, 0, -3, -2, 
-2, -1, -2, -2, -2, -3, 0, -4, -1, -3, -3, -2, -3, -1, -4, -3, -1, -3, -3, -3, 
-2, -2, -2, -4, -2, -2, -3, -2, -3, -4, -2, -3, -3, -4, -3, -2, -4, -1, -3, -6, 
-1, -2, -5, -2, -3, -3, -4, -2, -2, -6, -2, -4, -3, -2, -1, -6, -3, -1, -6, -2, 
-3, -2, -4, -2, -4, -3, -2, -4, -3, -2, -4, -3, -2, -2, -3, -2, -2, -4, -1, -3, 
-1, -4, -1, -1, -2, -1, -3, 0, -2, -1, -2, 0, -2, 0, -1, -1, 0, -2, 0, 0, 
-2, -1, -1, 1, -2, 0, 0, 0, 2, -3, 2, 0, 2, -2, 3, 0, -1, 3, -2, 3, 
0, 1, -1, 1, 2, -1, 2, 1, 0, 2, 0, 1, 1, 1, 2, 0, 1, 1, 3, 0, 
0, 1, 2, 1, 0, 3, 0, 1, 1, 2, 2, -2, 1, 2, 1, 1, -1, 2, 0, 0, 
2, -1, -1, 1, 0, 0, -1, 0, 0, 1, -1, -1, 1, -1, -2, 1, 1, -2, -2, 0, 
2, -3, 0, 1, -2, 1, -3, 0, 1, -2, -2, -1, 1, -3, -2, 0, -2, -1, -2, -2, 
-2, -2, -1, -2, -1, -3, -2, -2, -3, -1, -3, -2, -3, -3, -2, -3, -2, -3, -4, -1, 
-3, -3, -3, -3, -2, -4, -3, -2, -4, -2, -2, -4, -2, -3, -3, -4, -1, -3, -5, -1, 
-2, -2, -1, -1, -3, -1, -2, -1, -2, -1, 0, -3, 0, -1, 0, -1, -1, 0, 0, -1, 
0, 0, 0, -1, 2, 1, -2, 0, 1, 0, 1, 0, 1, 1, 0, 2, 1, 2, -1, 1, 
1, 1, 1, 1, 2, -1, 1, 2, 0, 1, 2, 1, 1, 1, 1, -1, 3, 0, 2, 2, 
-2, 1, 0, 1, 0, 1, 1, 0, 2, -1, 1, -1, 2, -2, 2, 3, -4, 0, 1, 3, 
-3, 1, -1, 3, 0, -1, 3, -4, 2, 1, 2, -4, 0, 2, 0, 0, 0, 2, -1, 1, 
-1, 2, 2, -4, 2, 3, -2, 1, 0, 0, 1, -1, 1, 0, 1, -1, 1, 2, -2, 3, 
-2, 3, 0, -1, 3, 0, 0, 1, 0, 0, 4, -5, 6, -2, 0, 4, -5, 5, -1, -1, 
3, 0, -2, 2, 0, 1, 0, 0, 2, -1, 1, 0, 0, 2, 1, -1, 1, 1, 0, -2, 
1, 1, -1, 1, 1, -1, 1, -2, 1, 2, -1, 0, 0, 2, -2, 1, 1, -2, 0, 1, 
-1, 0, 0, 1, -1, 0, 1, -2, 1, -1, 0, -2, 0, 0, 0, -1, -2, 1, -1, 0, 
-1, 1, -1, -2, -1, 0, -1, -2, -1, -1, -2, -1, -2, -1, -2, -2, -2, -3, -2, -2, 
-1, -4, -2, -3, -3, -2, -3, -3, -3, -2, -3, -4, -3, -2, -4, -3, -3, -3, -2, -4, 
-2, -3, -5, -2, -3, -2, -4, -3, -3, -4, -3, -3, -3, -3, -2, -4, -3, -3, -3, -2, 
-5, -1, -3, -4, -2, -3, -2, -4, -2, -3, -3, -3, -2, -3, -2, -3, -2, -2, -3, -2, 
-2, -2, -2, -2, -3, -1, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -1, -1, -2, -1, 
-1, 0, -2, -1, 0, 0, -1, -1, 1, -1, 0, 1, 0, 0, 1, 2, -1, 1, 4, -1, 
2, 2, 2, 2, 2, 2, 1, 4, 2, 3, 2, 4, 3, 3, 4, 2, 4, 3, 3, 3, 
3, 4, 3, 4, 3, 4, 5, 3, 4, 3, 4, 3, 3, 3, 4, 2, 3, 4, 2, 3, 
2, 3, 2, 3, 1, 3, 2, 1, 2, 2, 2, 1, 2, 2, 1, 1, 1, 1, 0, 0, 
1, 0, 0, -1, 1, -1, -1, 0, 0, -1, -1, 0, -1, -1, 0, -1, -1, 0, -2, -1, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2, -1, -1, -2, -1, -2, -1, -1, -1, -2, 
-2, -1, -2, -1, -2, -1, -2, -2, -2, -2, -3, -2, -2, -2, -2, -3, -2, -3, -2, -3, 
-2, -3, -3, -3, -2, -3, -4, -3, -3, -2, -3, -3, -4, -2, -4, -3, -3, -4, -2, -3, 
-3, -3, -3, -2, -3, -3, -2, -4, -3, -2, -3, -3, -3, -2, -2, -3, -2, -2, -2, -2, 
-3, -2, -2, -2, -2, -2, -1, -2, -1, -1, -2, -1, -1, -1, -1, -1, -2, -1, -1, -1, 
-1, -1, -2, 0, -1, -1, -1, -1, -1, 0, -1, -1, 1, -3, 1, -1, -1, 0, -1, 0, 
-1, 0, 0, -1, -1, 0, 0, 1, -3, 2, -1, -1, 1, -1, 1, -2, 1, 0, 0, -1, 
1, 0, 0, 0, 1, 0, 1, 1, -1, 2, -1, 1, 1, 1, 1, 0, 2, 1, 0, 1, 
0, 2, 1, 0, 1, 0, 3, 1, 0, 2, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 
2, 0, 0, 1, 0, 1, 1, 0, 2, 0, 0, 0, 1, 1, -1, 0, 0, 2, -2, 0, 
0, 0, 0, 0, 0, -1, 0, 1, -3, 1, 0, -1, 1, -2, 0, -2, 1, -1, -1, -1, 
-1, 0, -1, -1, 0, -1, -1, -1, 0, -1, -1, -2, 0, 1, -3, 0, -1, 0, -2, -1, 
-1, -2, 0, -2, 0, -1, 0, -2, -1, -1, -1, -1, -2, 1, -2, -1, -1, -1, -2, -1, 
-1, -1, 0, -2, 0, -1, -1, 0, -1, -1, 0, -1, 0, 0, -1, 1, 0, -1, -1, -1, 
1, 0, 0, -2, 2, 0, -1, 1, -1, 2, 0, 0, -2, 0, 2, 0, -1, 0, 2, 0, 
1, -1, 2, 0, 1, 0, 0, 1, 0, 2, -1, 2, -1, 2, 1, 0, 1, 0, 1, 1, 
1, 0, 2, 0, 2, 0, 0, 1, 0, 0, 0, 2, 1, 1, 1, 0, 1, 1, 1, 0, 
0, 2, 1, 0, 1, 2, 0, 1, 1, 3, 0, 2, 2, 1, 1, 1, 2, 0, 2, 1, 
2, 0, 2, 2, 1, 2, 2, 1, 2, 2, 0, 1, 3, 1, 1, 2, 1, 2, 1, 2, 
1, 2, 2, 1, 1, 1, 2, 2, 0, 2, 1, 1, 1, 2, 2, -1, 3, 0, 1, 1, 
1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, -2, 0, 0, 0, -2, 0, 
-1, -2, 0, -2, 0, -2, -2, -1, -2, 0, -3, -1, -1, -2, -2, -4, 0, -2, -3, -2, 
-2, -3, -2, -2, -2, -3, -4, -2, -2, -4, -4, -1, -3, -4, -4, -3, -2, -3, -4, -3, 
-3, -2, -4, -4, -3, -3, -3, -4, -2, -3, -4, -4, -2, -4, -5, -1, -3, -5, -2, -3, 
-4, -3, -3, -4, -3, -2, -4, -3, -4, -3, -4, -2, -4, -3, -4, -3, -2, -4, -2, -3, 
-3, -3, -2, -4, -2, -4, -3, -2, -4, -3, -3, -2, -3, -3, -3, -2, -3, -3, -3, -2, 
-2, -3, -2, -2, -3, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -1, -2, 0, -2, 
-1, 0, -1, -1, -1, -2, -1, 0, -2, 0, -1, 1, -1, 0, 1, -2, 1, 0, 0, 1, 
1, 0, 0, 1, 1, 0, 0, 1, 2, 1, 1, 0, 1, 2, 1, 1, 1, 2, 2, 1, 
1, 2, 1, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1, 3, 2, 2, 2, 2, 2, 
2, 2, 2, 3, 1, 3, 2, 2, 2, 1, 2, 1, 3, 1, 2, 2, 2, 1, 2, 2, 
1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 
1, 0, 1, 0, 0, 0, 0, 0, 0, -1, 0, -1, -1, -1, -1, 0, -1, -1, -1, 0, 
-2, -1, -1, -2, -1, -1, -1, -2, -1, -2, -1, -2, -2, -2, -2, -1, -2, -2, -2, -1, 
-2, -2, -1, -2, -1, -1, -2, -1, -2, -1, -1, -1, -1, -2, -1, -1, -2, -1, -1, -2, 
-1, -1, -1, -1, -2, -1, -2, -1, -1, -1, -2, -2, -1, -1, -1, -1, -2, -1, -1, -1, 
-1, -1, -2, 0, -2, -1, -1, -1, -2, -2, 0, -3, -1, -1, -1, -1, -1, -1, -1, -2, 
-2, 0, -2, -1, -1, -2, -2, -1, -1, -1, -1, -2, -2, -1, -1, -1, -2, -2, -1, -2, 
-1, -1, -1, -2, -1, -1, -2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 
-1, -1, 0, 0, -1, 0, -1, -1, 0, -1, -1, -1, 0, 0, -1, -1, 0, 0, 0, 0, 
-1, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, 1, 0, 0, -1, 0, 0, -1, 0, 0, 
0, 0, 0, 0, 1, -1, 0, 1, -1, 1, 1, -1, 1, 0, 0, 1, 0, 0, 0, 1, 
0, 2, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, -1, 1, 0, 0, 0, 0, 0, 
1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 
-1, 0, 0, -1, 0, -1, 0, 0, 0, -1, -1, -1, 0, -1, -1, 0, -1, -1, -1, -1, 
-1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -2, -1, -1, -1, -1, -1, -1, -1, -1, -2, -1, -2, -1, -1, -1, -1, -2, 
-1, -1, -1, -2, -1, -1, -1, -2, -1, -2, -1, -2, -1, -1, -2, -1, -2, -1, -2, -1, 
-1, -2, -1, -2, -2, -1, -2, -1, -1, -1, -2, -1, -1, -2, -1, -1, -1, -1, 0, -1, 
0, -1, -1, -1, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 
0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 
1, 1, 1, 0, 2, 1, 1, 1, 1, 2, 1, 1, 1, 2, 2, 0, 1, 1, 1, 1, 
0, 2, 2, -1, 2, 0, 1, 1, 1, 1, 0, 2, 0, 1, 1, 1, 0, 1, 1, 1, 
0, 1, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 
1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 2, 0, 0, 0, 1, 1, 0, 1, 0, 
0, 0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 1, -1, 0, 0, 0, -1, -1, 0, 0, 
-1, -1, 0, -1, -1, 0, -1, -1, -1, -1, -1, -1, -2, 0, -1, -2, -1, -1, -1, -1, 
-1, -1, -1, -2, -1, -1, -1, -2, -1, -1, -2, -1, -2, -2, -1, -2, -2, -1, -2, -1, 
-2, -2, -2, -2, -2, -2, -1, -3, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, 
-2, -2, -2, -2, -2, -2, -2, -2, -1, -2, -2, -2, -1, -1, -2, -1, -1, -1, -2, -1, 
-1, -1, -1, -2, -1, -1, -1, -1, -1, -1, 0, -1, -1, -1, -1, 0, -1, -1, -1, 0, 
-1, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, -1, 0, -1, 
0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, -1, 0, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -2, -1, -1, -2, -1, -1, -1, -1, -2, -1, 
-1, -2, -1, -1, -2, -1, -2, -2, -1, -1, -2, -2, -2, -2, -1, -2, -1, -2, -2, -2, 
-2, -2, -1, -2, -2, -2, -2, -1, -2, -2, -2, -1, -3, -1, -1, -2, -2, -2, -1, -2, 
-2, -2, -1, -2, -2, -2, -2, -2, -1, -2, -2, -2, -1, -2, -2, -1, -2, -1, -2, -2, 
-1, -1, -2, -1, -2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0, 2, 0, 1, 
1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 
0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 
0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 
1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 
1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 
0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, -1, -1, 0, -1, -1, 
-1, 0, -1, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, -1, 0, -1, -1, 0, 0, 
-1, 0, 0, 0, 0, -1, 0, 0, 0, -1, 0, -1, 0, -1, -1, 0, -1, -1, -1, 0, 
-1, -1, -1, -1, -1, 0, -1, -1, -1, -1, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, 
-1, -1, -1, -2, -1, -1, -2, -1, -2, -1, -2, -1, -1, -1, -1, -1, -1, -2, -1, -1, 
-1, -2, -1, -1, -2, -2, -1, -1, -1, -2, -2, -1, -2, -1, -1, -1, -2, -2, -1, -2, 
-2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, 
-2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, 
-2, -1, -2, -2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 
1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 
1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 
0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 
0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, -1, 0, 
0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, 0, -1, 0, 
0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 
0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 
0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, -1, -1, 0, 0, 
-1, -1, 0, 0, 0, -1, -1, 0, -1, -1, 0, -1, -1, -1, 0, 0, -1, -1, 0, 0, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, -2, -1, -1, -2, -2, -1, -1, -2, -1, -2, -2, -2, -2, -2, -2, -2, 
-2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, 
-2, -2, -2, -2, -2, -2, -2, -2, -2, -1, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, 
-1, -2, -1, -2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, -1, -1, 0, -1, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 
1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
1, 2, 1, 1, 1, 1, 2, 1, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 
1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 1, 1, 
1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, -1, -1, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -2, 
-2, -2, -2, -1, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, 
-2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -3, -3, -2, -3, -2, -2, -2, -2, -3, 
-2, -2, -2, -2, -3, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, 
-2, -2, -2, -2, -2, -1, -1, -2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 
1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, };
