# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
# 23 "gba.h"
extern volatile unsigned short* videoBuffer;
# 35 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 55 "gba.h"
void drawRectangle(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
void drawChar(int x, int y, char ch, unsigned short color);
void drawString(int x, int y, char *str, unsigned short color);
# 73 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;





typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 106 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 2 "game.c" 2
# 1 "print.h" 1
# 26 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 3 "game.c" 2
# 1 "colors.h" 1
# 4 "game.c" 2
# 1 "HW3.h" 1

typedef enum {LEFT, RIGHT} DIRECTION;
typedef enum {SPEED, ECLIPSE, HEALTH} TYPE;
typedef enum {HORIZONTAL, DIAGONALH, DIAGONALV, VERTICAL} RINGS;

extern int lives;

typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
    int active;
} ENEMY;

typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
    int laserMAX;
    int speed;
    DIRECTION direction;
} PLAYER;

typedef struct {
    int x;
    int y;
    int oldx;
    int active;
    DIRECTION direction;
} LASER;

typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
    int active;
    TYPE type;
} POWERUP;

typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
} STAR;


void drawRings(RINGS, u16);
void drawHorizontalRings(unsigned short);
void drawVerticalRings(unsigned short);
void drawDiagonalRings(unsigned short);
void drawAlien(int, int);
void drawPlayer(int, int, DIRECTION);
void drawPlayerHurt(int, int, DIRECTION);
void drawLaser(int, int);
void drawPowerup(int, int, u16);
void eraseHorizontalRings();
void eraseVerticalRings();
void eraseDiagonalRings();
# 5 "game.c" 2
# 1 "analogSound.h" 1





typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 263 "analogSound.h"
enum note {

  REST = 0,
  NOTE_C2 =44,
  NOTE_CS2 =157,
  NOTE_D2 =263,
  NOTE_DS2 =363,
  NOTE_E2 =457,
  NOTE_F2 =547,
  NOTE_FS2 =631,
  NOTE_G2 =711,
  NOTE_GS2 =786,
  NOTE_A2 =856,
  NOTE_AS2 =923,
  NOTE_B2 =986,
  NOTE_C3 =1046,
  NOTE_CS3 =1102,
  NOTE_D3 =1155,
  NOTE_DS3 =1205,
  NOTE_E3 =1253,
  NOTE_F3 =1297,
  NOTE_FS3 =1339,
  NOTE_G3 =1379,
  NOTE_GS3 =1417,
  NOTE_A3 =1452,
  NOTE_AS3 =1486,
  NOTE_B3 =1517,
  NOTE_C4 =1547,
  NOTE_CS4 =1575,
  NOTE_D4 =1602,
  NOTE_DS4 =1627,
  NOTE_E4 =1650,
  NOTE_F4 =1673,
  NOTE_FS4 =1694,
  NOTE_G4 =1714,
  NOTE_GS4 =1732,
  NOTE_A4 =1750,
  NOTE_AS4 =1767,
  NOTE_B4 =1783,
  NOTE_C5 =1798,
  NOTE_CS5 =1812,
  NOTE_D5 =1825,
  NOTE_DS5 =1837,
  NOTE_E5 =1849,
  NOTE_F5 =1860,
  NOTE_FS5 =1871,
  NOTE_G5 =1881,
  NOTE_GS5 =1890,
  NOTE_A5 =1899,
  NOTE_AS5 =1907,
  NOTE_B5 =1915,
  NOTE_C6 =1923,
  NOTE_CS6 =1930,
  NOTE_D6 =1936,
  NOTE_DS6 =1943,
  NOTE_E6 =1949,
  NOTE_F6 =1954,
  NOTE_FS6 =1959,
  NOTE_G6 =1964,
  NOTE_GS6 =1969,
  NOTE_A6 =1974,
  NOTE_AS6 =1978,
  NOTE_B6 =1982,
  NOTE_C7 =1985,
  NOTE_CS7 =1989,
  NOTE_D7 =1992,
  NOTE_DS7 =1995,
  NOTE_E7 =1998,
  NOTE_F7 =2001,
  NOTE_FS7 =2004,
  NOTE_G7 =2006,
  NOTE_GS7 =2009,
  NOTE_A7 =2011,
  NOTE_AS7 =2013,
  NOTE_B7 =2015,
  NOTE_C8 =2017
} NOTES;

typedef struct noteWithDuration {
  enum note note;
  unsigned char duration;
} NoteWithDuration;

void initSound();
void playDrumSound(u8 r, u8 s, u8 b, u8 length, u8 steptime);
void playNoteWithDuration(NoteWithDuration *n, u8 duty);
void playChannel1(u16 note, u8 length, u8 sweepShift, u8 sweepTime, u8 sweepDir, u8 envStepTime, u8 envDir, u8 duty);
void playAnalogSound(u16 sound);
# 6 "game.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4

# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 48 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3






typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3






typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 26 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 50 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 88 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 129 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 350 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;


typedef __builtin_va_list __va_list;
# 16 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 610 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

  void *deviceData;
};
# 817 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3



# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 17 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3


# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/time.h" 1 3
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 1 3
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef int register_t;
# 62 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 63 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 113 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;





typedef __int_least64_t time_t;





typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 173 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;




typedef __suseconds_t suseconds_t;



typedef __int64_t sbintime_t;


# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_pthreadtypes.h" 1 3
# 240 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/types.h" 1 3
# 241 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/timespec.h" 1 3
# 38 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/timespec.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_timespec.h" 1 3
# 45 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/timespec.h" 2 3
# 58 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 30 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3







struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;






};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *restrict _s,
        size_t _maxsize, const char *restrict _fmt,
        const struct tm *restrict _t);







char *asctime_r (const struct tm *restrict,
     char *restrict);
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *restrict,
     struct tm *restrict);
struct tm *localtime_r (const time_t *restrict,
     struct tm *restrict);


# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 3
void _tzset_r (struct _reent *);

typedef struct __tzrule_struct
{
  char ch;
  int m;
  int n;
  int d;
  int s;
  time_t change;
  long offset;
} __tzrule_type;

typedef struct __tzinfo_struct
{
  int __tznorth;
  int __tzyear;
  __tzrule_type __tzrule[2];
} __tzinfo_type;

__tzinfo_type *__gettzinfo (void);
# 178 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/signal.h" 1 3





# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/signal.h" 1 3
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/signal.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_sigset.h" 1 3
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/signal.h" 2 3




typedef __sigset_t sigset_t;
# 119 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/signal.h" 3
typedef void (*_sig_func_ptr)(int);

struct sigaction
{
 _sig_func_ptr sa_handler;
 sigset_t sa_mask;
 int sa_flags;
};
# 153 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/signal.h" 3
typedef struct sigaltstack {
  void *ss_sp;
  int ss_flags;
  size_t ss_size;
} stack_t;
# 7 "/opt/devkitpro/devkitARM/arm-none-eabi/include/signal.h" 2 3



typedef int sig_atomic_t;
# 22 "/opt/devkitpro/devkitARM/arm-none-eabi/include/signal.h" 3
struct _reent;

_sig_func_ptr _signal_r (struct _reent *, int, _sig_func_ptr);
int _raise_r (struct _reent *, int);


_sig_func_ptr signal (int, _sig_func_ptr);
int raise (int);
void psignal (int, const char *);



# 179 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3







int clock_settime (clockid_t clock_id, const struct timespec *tp);
int clock_gettime (clockid_t clock_id, struct timespec *tp);
int clock_getres (clockid_t clock_id, struct timespec *res);



int timer_create (clockid_t clock_id,
  struct sigevent *restrict evp,
 timer_t *restrict timerid);



int timer_delete (timer_t timerid);



int timer_settime (timer_t timerid, int flags,
 const struct itimerspec *restrict value,
 struct itimerspec *restrict ovalue);
int timer_gettime (timer_t timerid, struct itimerspec *value);
int timer_getoverrun (timer_t timerid);



int nanosleep (const struct timespec *rqtp, struct timespec *rmtp);
# 7 "game.c" 2


# 8 "game.c"
unsigned short oldButtons;
unsigned short buttons;


void initGame();
void unpauseGame();
void updateGame();
void drawGame();

RINGS rings;
unsigned short ringColor;

ENEMY enemies[5];
LASER lasers[4];
POWERUP powerups[3] = {0, 0, 0, 0, 0, HEALTH, 0, 0, 0, 0, 0, SPEED};
PLAYER player = {240/2, 160/2, 240/2, 160/2, 2, 1, LEFT};
STAR stars[20];

int count;
int lives;
int oldLives;
int enemiesActive;
int lasersActive;
int damage;
int speedTimer;

int planetSide = 30;
int playerWidth = 15;
int playerHeight = 8;
int enemyWidth = 9;
int enemyHeight = 7;

void initGame() {
    count = 0;
    lasersActive = 0;
    enemiesActive = 0;
    damage = 0;
    speedTimer = 0;
    lives = 5;
    oldLives = 5;
    ringColor = 0x5021;
    rings = HORIZONTAL;
    player.x = 240/2;
    player.y = 160/2;
    player.speed = 1;
    for (int i = 0; i < 5; i++) {
        enemies[i].active = 0;
        if (i < 2) {
            powerups[i].active = 0;
        }
        if (i < 4) {
            lasers[i].active = 0;
        }
    }
    srand(time(
# 62 "game.c" 3 4
              ((void *)0)
# 62 "game.c"
                  ));
    fillScreen((((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawCircle(215, 160/2, 10, 0x5F67);
    for (int i = 0; i < 20; i++) {
        stars[i].x = rand() % 260;
        stars[i].y = rand() % (160 - 23 + 1) + 23;
        stars[i].oldx = stars[i].x;
        stars[i].oldy = stars[i].y;
    }
    drawHorizontalRings(0x5021);
    for (int i = 0; i < 5; i++) {
        drawChar(6 * i, 5, 3, 0x7DD4);
    }
    drawPlayer(player.x, player.y, player.direction);
}

void unpauseGame() {
    fillScreen((((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    drawCircle(215, 160/2, 10, 0x5F67);
    drawHorizontalRings(0x5021);
    for (int i = 0; i < lives; i++) {
        drawChar(6 * i, 5, 3, 0x7DD4);
    }
    drawPlayer(player.x, player.y, player.direction);
}

void updateGame() {
    count++;
    oldLives = lives;
    player.oldx = player.x;
    player.oldy = player.y;
    if ((~buttons & (1<<4)) && player.x < 231) {
        player.x += player.speed;
        player.direction = RIGHT;
    } else if ((~buttons & (1<<5)) && player.x > 8) {
        player.x -= player.speed;
        player.direction = LEFT;
    }
    if ((~buttons & (1<<6)) && player.y > 20) {
        player.y--;
    } else if ((~buttons & (1<<7)) && player.y < 147) {
        player.y++;
    }
    if (count % 20 == 0) {
        if (rings == DIAGONALV) {
            rings = HORIZONTAL;
        } else if (rings == HORIZONTAL) {
            rings = DIAGONALH;
        } else if (rings == DIAGONALH) {
            rings = VERTICAL;
        } else if (rings == VERTICAL) {
            rings = DIAGONALV;
        }
    }
    if (count % 40 == 0) {
        ringColor = 0x5021;
    }


    if ((((~buttons & (1<<0)) && !(~oldButtons & (1<<0)))) && lasersActive < player.laserMAX) {
        for (int i = 0; i < 4; i++) {
            if (!lasers[i].active) {
                lasers[i].active = 1;
                lasers[i].y = player.y - 3;
                if (player.direction == LEFT) {
                    lasers[i].direction = LEFT;
                    lasers[i].x = player.x - 9;
                } else {
                    lasers[i].direction = RIGHT;
                    lasers[i].x = player.x + 8;
                }
                lasers[i].oldx = lasers[i].x;
                lasersActive++;
                break;
            }
        }
    }
    for (int i = 0; i < 4; i++) {
        if (lasers[i].active) {
            lasers[i].oldx = lasers[i].x;
            if (lasers[i].direction == LEFT) {
                lasers[i].x -= 2;
            } else {
                lasers[i].x += 2;
            }
            if (collision(lasers[i].x - 1, lasers[i].y - 1, 4, 4, 205, 160/2 - 10, planetSide, planetSide)) {
                oldLives = lives;
                lives--;
                damage = 5;
                lasers[i].x = 0;
                ringColor = 0x409D;
                playAnalogSound(0);
            }
        }
    }
    if (collision(player.x, player.y, playerWidth, playerHeight, 205, 160/2 - 10, planetSide, planetSide)) {
        oldLives = lives;
        lives--;
        damage = 5;
        player.x = 240/2;
        player.y = 160/2;
        ringColor = 0x409D;
        playAnalogSound(1);
    }



    if (count % 120 == 0 && enemiesActive < 5) {
        for (int i = 0; i < 5; i++) {
            if (!enemies[i].active) {
                enemies[i].active = 1;
                enemies[i].x = 8;
                enemies[i].y = (rand() % (128)) + 20;
                enemies[i].oldx = 8;
                enemies[i].oldy = enemies[i].y;
                enemiesActive++;
                break;
            }
        }
    }
    for (int i = 0; i < 5; i++) {
        if (enemies[i].active) {
            enemies[i].oldx = enemies[i].x;
            enemies[i].oldy = enemies[i].y;
            if (enemies[i].x == 216) {
                if (enemies[i].y < 160/2) {
                    enemies[i].y++;
                } else {
                    enemies[i].y--;
                }
            } else {
                enemies[i].x++;
            }
            if (collision(enemies[i].x - 4, enemies[i].y - 4, enemyWidth, enemyHeight, 205, 160/2 - 10, planetSide, planetSide)) {
                oldLives = lives;
                damage = 5;
                lives--;
                ringColor = 0x409D;
                enemies[i].x = 0;
                playAnalogSound(0);
            }
            if (collision(player.x, player.y, playerWidth, playerHeight - 5, enemies[i].x - 4, enemies[i].y - 4, enemyWidth, enemyHeight)) {
                oldLives = lives;
                lives--;
                damage = 5;
                player.x = 240/2;
                player.y = 160/2;
                enemies[i].x = 0;
                playAnalogSound(0);
            }
            if (i < 4) {
                if (lasers[i].active) {
                    if (collision(enemies[i].x - 6, enemies[i].y - 6, enemyWidth + 3, enemyHeight + 3, lasers[i].x - 1, lasers[i].y - 1, 4, 4)) {
                        lasers[i].x = 0;
                        enemies[i].x = 0;
                        playAnalogSound(1);
                    }
                }
            }
        }
    }


    if (count % 550 == 0) {
        if (!powerups[0].active) {
            powerups[0].x = rand() % (184 - 14 + 1) + 14;
            powerups[0].y = rand() % (147 - 23 + 1) + 23;
            powerups[0].oldx = powerups[0].x;
            powerups[0].oldy = powerups[0].y;
            powerups[0].active = 1;
        }
    } else if (count % 620 == 0) {
        if (!powerups[1].active) {
            powerups[1].x = rand() % (184 - 14 + 1) + 14;
            powerups[1].y = rand() % (147 - 23 + 1) + 23;
            powerups[1].oldx = powerups[1].x;
            powerups[1].oldy = powerups[1].y;
            powerups[1].active = 1;
        }
    }
    if (collision(player.x, player.y, playerWidth, playerHeight - 5, powerups[0].x, powerups[0].y, 6, 8)) {
        powerups[0].x = 0;
        lives++;
        playAnalogSound(16);
    }
    if (collision(player.x, player.y, playerWidth, playerHeight - 5, powerups[1].x, powerups[1].y, 6, 8)) {
        powerups[1].x = 0;
        player.speed++;
        speedTimer = 300;
        playAnalogSound(16);
    }
    if (speedTimer != 0) {
        speedTimer--;
        if (speedTimer == 0) {
            player.speed = 1;
        }
    }


    if (count == 0 || count % 300 == 0) {
        for (int i = 0; i < 20; i++) {
            stars[i].oldx = stars[i].x;
            stars[i].oldy = stars[i].y;
            stars[i].x = rand() % 260;
            stars[i].y = rand() % (160 - 23 + 1) + 23;
        }
    }
}

void drawGame() {
    drawRectangle(player.oldx - 6, player.oldy - 5, playerWidth, playerHeight + 6, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
    if (lives != oldLives) {
        drawRectangle(0, 5, 6 * oldLives, 8, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
        for (int i = 0; i < lives; i++) {
            drawChar(6 * i, 5, 3, 0x7DD4);
        }
    }

    for (int i = 0; i < 20; i++) {
        if (count % 300 == 0) {
            (videoBuffer[((stars[i].oldy) * (240) + (stars[i].oldx))] = (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
        }
        (videoBuffer[((stars[i].y) * (240) + (stars[i].x))] = (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10));
    }

    for (int i = 0; i < 4; i++) {
        if (lasers[i].active) {
            drawRectangle(lasers[i].oldx - 1, lasers[i].y - 1, 4, 4, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
            if (lasers[i].x > 235 || lasers[i].x < 4) {
                lasers[i].active = 0;
                lasersActive--;
            } else {
                drawLaser(lasers[i].x, lasers[i].y);
            }
        }
    }
    if (powerups[0].active) {
        drawPowerup(powerups[0].oldx, powerups[0].oldy, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
        if (powerups[0].x == 0) {
            powerups[0].active = 0;
        } else {
            drawPowerup(powerups[0].x, powerups[0].y, 0x409D);
        }
    }
    if (powerups[1].active) {
        drawPowerup(powerups[1].oldx, powerups[1].oldy, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
        if (powerups[1].x == 0) {
            powerups[1].active = 0;
        } else {
            drawPowerup(powerups[1].x, powerups[1].y, 0x1EFE);
        }
    }
    for (int i = 0; i < 5; i++) {
        if (enemies[i].active) {
            drawRectangle(enemies[i].oldx - 4, enemies[i].oldy - 4, enemyWidth, enemyHeight, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
            if (enemies[i].x == 0) {
                enemies[i].active = 0;
                enemiesActive--;
            } else {
                drawAlien(enemies[i].x, enemies[i].y);
            }
        }
    }
    drawRings(rings, ringColor);
    if (damage != 0) {
       drawPlayerHurt(player.x, player.y, player.direction);
       damage--;
    } else {
       drawPlayer(player.x, player.y, player.direction);
    }
}
