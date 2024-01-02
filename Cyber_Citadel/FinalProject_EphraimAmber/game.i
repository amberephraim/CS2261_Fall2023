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
typedef void (*ihp)(void);






extern volatile unsigned short* videoBuffer;
# 48 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 67 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 99 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 2 "game.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "game.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 64 "sprites.h"
void hideSprites();


typedef struct {
    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;
    int timeUntilNextFrame;
    int direction;
    int isAnimating;
    int currentFrame;
    int numFrames;
    int active;
    int palRow;
    u8 oamIndex;
} SPRITE;
# 4 "game.c" 2
# 1 "game.h" 1
typedef enum {NONE, BLUE_KNIFE, WHITE_KNIFE, GUN} weaponType;

typedef enum {IDLE_LEFT, WALK_LEFT, JUMP_LEFT, DOUBLEJUMP_LEFT, RUN_LEFT, ATTACK1_LEFT, ATTACK2_LEFT, CLIMB_LEFT,
                IDLE_RIGHT, WALK_RIGHT, JUMP_RIGHT, DOUBLEJUMP_RIGHT, RUN_RIGHT, ATTACK1_RIGHT, ATTACK2_RIGHT, CLIMB_RIGHT} direction;

typedef enum {ROBOT, SHOOTER, BIRD, SKATEBOARD, BATTER, MACHINE} enemyType;

typedef enum {UP, DOWN, LEFT, RIGHT} enemyDirection;

typedef enum {LOLLY, PANCAKE, CAKE, BURGER, HEALTH_POTION, DEFENSE_POTION, DAMAGE_POTION} itemType;
# 29 "game.h"
typedef struct {

    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;
    int palRow;
    u8 oamIndex;
    int enemyType;
    int originalY;
    int enemyDirection;


    int timeUntilNextFrame;
    int direction;
    int currentFrame;
    int numFrames;


    int damage;
    int respawnTimer;
    int health;
    int active;
    int isAttacking;
    int damageBuffer;
    int attackTimer;
} ENEMY;

typedef struct {
    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;
    int damage;
    int active;
    int oamIndex;
    int palRow;
    int timer;
} BULLET;

typedef struct {

    int x;
    int y;
    int width;
    int height;
    int palRow;
    u8 oamIndex;


    int timeUntilNextFrame;
    int currentFrame;
    int numFrames;


    int active;
    int talk;
    int num;
    int objectiveCompleted;
} NPC;

typedef struct {

    int x;
    int y;
    int itemType;
    int price;

    int width;
    int height;
    int palRow;
    u8 oamIndex;

    int objective;
    int collected;
    int used;
} ITEM;

typedef struct {

    int x;
    int y;
    int width;
    int height;
    u8 oamIndex;


    int weaponType;
    int damage;
    int collected;
} WEAPON;

typedef struct {

    int area2Map;
    int bossOpen;


    int credits;
    int maxItems;
} INVENTORY;

typedef struct {

    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;

    int jumping;
    int falling;
    int jumpTimer;
    int isAttacking;
    int dealingDamage;
    u8 oamIndex;


    int direction;
    int timeUntilNextFrame;
    int currentFrame;
    int numFrames;


    int baseDamage;
    int defenseBoost;
    int damageBoost;
    int damageBuffer;
    int health;
    int maxHealth;
    int fallDamageTimer;
    int fallDamage;
    WEAPON equippedWeapon;
} PLAYER;
# 5 "game.c" 2
# 1 "backgrounds.h" 1


extern const unsigned short basicTiles[320];

extern const unsigned short basicPal[16];






extern const unsigned short skyMap[1024];



extern const unsigned short splashTiles[7680];


extern const unsigned short splashPal[256];




extern const unsigned short splashMap[1024];



extern const unsigned short instructionsAndPauseTiles[6400];


extern const unsigned short instructionsAndPausePal[256];




extern const unsigned short instructionsMap[1024];



extern const unsigned short inventoryTiles[6400];


extern const unsigned short inventoryPal[256];




extern const unsigned short inventoryMap[1024];





extern const unsigned short pauseMap[1024];



extern const unsigned char houseTiles[12800];


extern const unsigned char housePal[512];





extern const unsigned short houseMap[2048];


extern const unsigned char housecmBitmap[131072];



extern const unsigned short shopsTiles[10000];


extern const unsigned short shopsPal[256];





extern const unsigned short shopsBG0Map[2048];






extern const unsigned short shopsBG1Map[2048];





extern const unsigned short shopsSkyMap[1024];


extern const unsigned char shopscmBitmap[131072];






extern const unsigned short storeMap[1024];



extern const unsigned short area1Tiles[16384];


extern const unsigned short area1Pal[256];







extern const unsigned short area1BG0Map[4096];
extern const unsigned short area1BG1Map[4096];
extern const unsigned short area1BG2Map[2048];


extern const unsigned char area1cmBitmap[262144];



extern const unsigned short area2Tiles[16384];


extern const unsigned short area2Pal[256];






extern const unsigned short area2BG0Map[4096];
extern const unsigned short area2BG1Map[2048];


extern const unsigned char area2cmBitmap[262144];






extern const unsigned short finalBG0Map[2048];
extern const unsigned short finalBG1Map[1024];


extern const unsigned char finalcmBitmap[131072];




extern const unsigned short winMap[1024];





extern const unsigned short loseMap[1024];



extern const unsigned short textTiles[6000];

extern const unsigned short textPal[256];






extern const unsigned short text1Map[1024];






extern const unsigned short text2Map[1024];






extern const unsigned short text3Map[1024];






extern const unsigned short text4Map[1024];






extern const unsigned short text5Map[1024];






extern const unsigned short text6Map[1024];






extern const unsigned short completedTextMap[1024];






extern const unsigned short textCatMap[1024];






extern const unsigned short textMapMap[1024];
# 6 "game.c" 2
# 1 "spritesheets.h" 1


extern const unsigned short interfaceSSTiles[16384];


extern const unsigned short interfaceSSPal[256];



extern const unsigned short mainSSTiles[16384];


extern const unsigned short mainSSPal[256];



extern const unsigned short area1SSTiles[16384];


extern const unsigned short area1SSPal[256];




extern const unsigned short area2SSTiles[16384];


extern const unsigned short area2SSPal[256];



extern const unsigned short finalSSTiles[16384];


extern const unsigned short finalSSPal[256];



extern const unsigned short textSSTiles[16384];


extern const unsigned short textSSPal[256];
# 7 "game.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 2 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/time.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 45 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 46 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3

# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
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




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
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
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 2 3

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
# 8 "game.c" 2
# 1 "shoot.h" 1



# 3 "shoot.h"
extern const unsigned int shoot_sampleRate;
extern const unsigned int shoot_length;
extern const signed char shoot_data[];
# 9 "game.c" 2


OBJ_ATTR shadowOAM[128];


extern unsigned short oldButtons;
extern unsigned short buttons;


extern enum GAME_STATE {START, HOUSE, SHOPS, AREA1, AREA2, FINAL} gameState;
extern enum LAUNCH_TEXT {A, B, C, D, E, F, CAT, MAP, COMPLETED} ltext;

extern int hOff0;
extern int vOff0;
extern int hOff1;
extern int vOff1;
extern int hOff2;
extern int vOff2;
extern int mapWidth;
extern int mapHeight;


extern int phase1;
extern int phase2;


void* cm;


PLAYER player;

SPRITE plumbob;

extern int pal;


WEAPON allWeapons[4];
ITEM allItems[22];


INVENTORY inventory;


BULLET bullets[4];


extern NPC people[6];

int temp = 0;

void initGame() {

    srand(time(
# 61 "game.c" 3 4
              ((void *)0)
# 61 "game.c"
                  ));

    WEAPON hands = {0, 0, 10, 3, 0, NONE, 0, 1};
    WEAPON blueKnife = {0, 0, 10, 3, 0, BLUE_KNIFE, 2, 0};
    WEAPON whiteKnife = {0, 0, 12, 3, 0, WHITE_KNIFE, 5, 0};
    WEAPON gun = {0, 0, 0, 0, 0, GUN, 100, 0};
    allWeapons[0] = hands;
    allWeapons[1] = blueKnife;
    allWeapons[2] = whiteKnife;
    allWeapons[3] = gun;



    pal = 0;

    player.xVel = 1;
    player.yVel = 1;
    player.width = 32;
    player.height = 32;
    player.jumping = 0;
    player.falling = 0;
    player.jumpTimer = 0;
    player.oamIndex = 1;


    player.direction = IDLE_RIGHT;
    player.timeUntilNextFrame = 10;
    player.currentFrame = 0;


    player.baseDamage = 1;
    player.defenseBoost = 0;
    player.damageBoost = 0;
    player.damageBuffer = 0;
    player.isAttacking = 0;
    player.health = 16;
    player.maxHealth = 16;
    player.equippedWeapon = allWeapons[NONE];
    player.fallDamage = 5;
    player.fallDamageTimer = 0;


    plumbob.oamIndex = 2;
    plumbob.numFrames = 4;


    allItems[0].collected = 1;
    allItems[0].used = 0;
    allItems[0].itemType = LOLLY;


    inventory.credits = 60;
    inventory.maxItems = 22;
    inventory.area2Map = 0;


    for (int i = 0; i < 4; i++) {

        bullets[i].width = 8;
        bullets[i].height = 6;
        bullets[i].damage = 100;
        bullets[i].active = 0;
        bullets[i].oamIndex = 30 + i;
        bullets[i].palRow = 0;
    }


    NPC smoker = {463, 192, 20, 32, 1, 3, 10, 0, 4, 1};
    NPC headphones = {273, 192, 16, 32, 2, 4, 10, 0, 4, 1};
    NPC purse = {8, 192, 16, 32, 3, 5, 10, 0, 4, 1};
    NPC armed = {83, 192, 16, 32, 5, 6, 10, 0, 4, 1};
    NPC drummer = {390, 192, 16, 32, 6, 7, 10, 0, 4, 1};
    NPC boy = {197, 192, 16, 32, 7, 8, 10, 0, 4, 1};
    people[0] = smoker;
    people[1] = headphones;
    people[2] = purse;
    people[3] = armed;
    people[4] = drummer;
    people[5] = boy;
}

inline unsigned char colorAt(int x, int y) {
    return ((unsigned char *)cm) [((y) * (mapWidth) + (x))];
}

int screenX(int x, int width) {
    int screenX = x - hOff0;
    if (screenX > 250 || screenX + width < -1) screenX = 250;
    return screenX;
}

int screenY(int y, int height) {
    int screenY = y - vOff0;
    if (screenY > 170 || screenY + height < -1) screenY = 170;
    return screenY;
}

void setColor() {
    switch(pal) {
    case 0:
        ((u16*) 0x5000200)[13] = (0x34dc);
        ((u16*) 0x5000200)[5] = (0x3075);
        ((u16*) 0x5000200)[2] = (0x48ec);
        break;
    case 1:
        ((u16*) 0x5000200)[13] = (0x7cc3);
        ((u16*) 0x5000200)[5] = (0x3060);
        ((u16*) 0x5000200)[2] = (0x7f34);
        break;
    case 2:
        ((u16*) 0x5000200)[13] = (0x6b5a);
        ((u16*) 0x5000200)[5] = (0x0000);
        ((u16*) 0x5000200)[2] = (0x56b4);
        break;
    case 3:
        ((u16*) 0x5000200)[13] = (0x174f);
        ((u16*) 0x5000200)[5] = (0x00e0);
        ((u16*) 0x5000200)[2] = (0x2a5f);
        break;
    }
}

void updatePlumbob() {

    if (plumbob.active) {
        plumbob.timeUntilNextFrame--;
        if (!plumbob.timeUntilNextFrame) {
            plumbob.currentFrame = (plumbob.currentFrame + 1) % plumbob.numFrames;
            plumbob.timeUntilNextFrame = 10;
        }
        shadowOAM[plumbob.oamIndex].attr0 = ((player.y - vOff0 - 20) & 0xFF) | (2 << 14);
        shadowOAM[plumbob.oamIndex].attr1 = ((player.x - hOff0 + 14) & 0x1FF) | (0 << 14);
        shadowOAM[plumbob.oamIndex].attr2 = (((2) * (32) + (25 + plumbob.currentFrame)) & 0x3FF) | (((plumbob.palRow) & 0xF) << 12);
    } else {
        shadowOAM[plumbob.oamIndex].attr0 = (2 << 8);
    }
}

void updatePlayer() {
    if (player.damageBuffer != 0) player.damageBuffer--;
    player.dealingDamage = 0;

    int leftX = player.x + 8;
    int rightX = player.x + 8 + 16 - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;




    if (player.jumpTimer != 0) player.jumpTimer--;
    if (!player.jumpTimer){
        player.jumping = 0;
        player.falling = 1;
    }


    if (player.direction < 8) {
        player.direction = IDLE_LEFT;
    } else {
        player.direction = IDLE_RIGHT;
    }

    if ((~(buttons) & ((1 << 5))) && !player.isAttacking) {
        if (player.x > 0 && colorAt(leftX - player.xVel, topY) && colorAt(leftX - player.xVel, bottomY)) {
            player.x -= player.xVel;
        }

        player.direction = WALK_LEFT;
    } else if ((~(buttons) & ((1 << 4))) && !player.isAttacking) {
        if (player.x < (mapWidth - player.width) && colorAt(rightX + player.xVel, topY) && colorAt(rightX + player.xVel, bottomY)) {
            player.x += player.xVel;
        }

        player.direction = WALK_RIGHT;
    }


    if ((!(~(oldButtons) & ((1 << 6))) && (~(buttons) & ((1 << 6)))) && !player.jumping && (!colorAt(leftX, bottomY + player.yVel) || !colorAt(rightX, bottomY + player.yVel)) && !player.isAttacking) {

        player.jumping = 1;
        player.jumpTimer = 60;

        if (player.direction < 8) {
            player.direction = JUMP_LEFT;
        } else {
            player.direction = JUMP_RIGHT;
        }
    } else if ((!(~(oldButtons) & ((1 << 7))) && (~(buttons) & ((1 << 7))))) {
        player.jumping = 0;
        player.falling = 1;
    }

    if (player.jumping && player.y > 0) {
        player.y -= player.yVel;

        if (player.direction < 8) {
            player.direction = JUMP_LEFT;
        } else {
            player.direction = JUMP_RIGHT;
        }
    } else if (player.falling) {

        if (colorAt(leftX, bottomY + player.yVel) && colorAt(rightX, bottomY + player.yVel)) {
            player.y += player.yVel;

            if (player.direction < 8) {
                player.direction = JUMP_LEFT;
            } else {
                player.direction = JUMP_RIGHT;
            }
        } else {
            player.falling = 0;
        }
    }



    switch(gameState) {
        case HOUSE:
        plumbobHouse(colorAt(leftX, topY), colorAt(rightX, topY));
        break;
        case SHOPS:
        plumbobShops(colorAt(leftX, topY), colorAt(rightX, topY));
        break;
        case AREA1:
        plumbobArea1(colorAt(leftX, topY), colorAt(rightX, topY));
        break;
        case AREA2:
        plumbobArea2(colorAt(leftX, topY), colorAt(rightX, topY));
        break;
    }
    updatePlumbob();


    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0)))) && !plumbob.active && !player.isAttacking && !player.jumping && !player.falling) {
        player.isAttacking = 1;
        player.currentFrame = 0;
    }

    if (player.isAttacking) {
        if (player.direction < 8) {
            player.direction = ATTACK1_LEFT;
        } else {
            player.direction = ATTACK1_RIGHT;
        }
    }


    player.timeUntilNextFrame--;
    if (!player.timeUntilNextFrame) {
        player.timeUntilNextFrame = 10;

        switch(player.direction) {
            case JUMP_LEFT:
            case JUMP_RIGHT:
                if (player.currentFrame == 3) {
                    break;
                }
            case IDLE_LEFT:
            case IDLE_RIGHT:
                player.timeUntilNextFrame = 20;
                player.currentFrame = (player.currentFrame + 1) % 4;
            break;

            case ATTACK1_LEFT:
            case ATTACK1_RIGHT:
                player.timeUntilNextFrame = 7;
                player.currentFrame += 1;
                if (player.currentFrame == 6) {
                    player.isAttacking = 0;
                    player.numFrames = 4;
                }
                player.currentFrame--;
                if (player.currentFrame == 4 && player.equippedWeapon.weaponType == GUN) {
                    for(int j = 0; j < 4; j++) {
                        if (!bullets[j].active) {
                            playSoundB(shoot_data, shoot_length, 0);
                            bullets[j].active = 1;
                            if (player.direction < 8) {
                                bullets[j].x = player.x;
                                bullets[j].y = player.y + 8;
                                bullets[j].xVel = -2;
                            } else {
                                bullets[j].x = player.x + 26;
                                bullets[j].y = player.y + 8;
                                bullets[j].xVel = 2;
                            }
                            break;
                        }
                    }
                }
            case WALK_LEFT:
            case WALK_RIGHT:
                player.currentFrame = (player.currentFrame + 1) % 6;
            break;
        }

        if (player.isAttacking) {
            if (player.currentFrame == 4) {
                player.dealingDamage = 1;
            }
        }
    }


    hOff0 = player.x - (240 - player.width) / 2;
    vOff0 = player.y - (160 - player.height) / 2;
    if (hOff0 < 0) hOff0 = 0;
    if (vOff0 < 0) vOff0 = 0;
    if (gameState == HOUSE) {
        if (hOff0 > mapWidth - 240 - 64) hOff0 = mapWidth - 240 - 64;
        if (vOff0 > mapHeight - 160 - 96) vOff0 = mapHeight - 160 - 96;
    } else {
        if (hOff0 > mapWidth - 240) hOff0 = mapWidth - 240;
        if (vOff0 > mapHeight - 160) vOff0 = mapHeight - 160;
    }

    if (gameState == SHOPS) {
        hOff1 = hOff0;
        vOff1 = vOff0;
    } else if (gameState == AREA1) {
        hOff1 = hOff0;
        vOff1 = vOff0;
        vOff2 = vOff0;
    } else if (gameState == AREA2) {
        vOff1 = vOff0;
    } else if (gameState == FINAL) {
        if (phase1) {
            hOff0 = 9;
            vOff0 = 96;
        } else if (phase2) {
            hOff0 = 272;
            vOff0 = 96;
        } else {
            if (hOff0 < 9) hOff0 = 9;
        }
    }



    shadowOAM[player.equippedWeapon.oamIndex].attr0 = (2 << 8);
    shadowOAM[player.oamIndex].attr0 = ((player.y - vOff0) & 0xFF) | (0 << 14);
    shadowOAM[player.oamIndex].attr1 = ((player.x - hOff0) & 0x1FF) | (2 << 14);
    if (player.damageBuffer != 0) {
        shadowOAM[player.oamIndex].attr2 = (((8) * (32) + (20)) & 0x3FF);

    } else {

        switch(player.direction) {
        case IDLE_LEFT:
        case IDLE_RIGHT:
        shadowOAM[player.oamIndex].attr2 = (((0) * (32) + ((4 * player.currentFrame > 12 ? 12: 4 * player.currentFrame))) & 0x3FF);
        break;

        case WALK_LEFT:
        case WALK_RIGHT:
        shadowOAM[player.oamIndex].attr2 = (((4) * (32) + (4 * player.currentFrame)) & 0x3FF);
        break;

        case JUMP_LEFT:
        case JUMP_RIGHT:
        shadowOAM[player.oamIndex].attr2 = (((8) * (32) + ((4 * player.currentFrame > 12 ? 12: 4 * player.currentFrame))) & 0x3FF);
        break;

        case ATTACK1_LEFT:
        case ATTACK1_RIGHT:
        shadowOAM[player.oamIndex].attr2 = (((12) * (32) + (4 * player.currentFrame)) & 0x3FF);

        player.equippedWeapon.y = player.y + 11;
        player.equippedWeapon.x = player.x + 20;
        int flip = 0;
        if (player.direction < 8) {
            player.equippedWeapon.x = player.x + 5;
            flip = 1;
        }
        if (player.equippedWeapon.weaponType != NONE && player.equippedWeapon.weaponType != GUN) {
            shadowOAM[player.equippedWeapon.oamIndex].attr2 = (((player.equippedWeapon.weaponType - 1) * (32) + (20 + 2 * player.currentFrame)) & 0x3FF);
            switch (player.currentFrame) {
                case 0:
                    shadowOAM[player.equippedWeapon.oamIndex].attr0 = ((player.y - vOff0 + 18) & 0xFF) | (1 << 14);
                    shadowOAM[player.equippedWeapon.oamIndex].attr1 = ((player.x - hOff0 + (flip ? 4 : 13)) & 0x1FF) | (0 << 14);
                    player.equippedWeapon.y = player.y + 18;
                    player.equippedWeapon.x = player.x + (flip ? 4 : 13);
                    break;
                case 1:
                    shadowOAM[player.equippedWeapon.oamIndex].attr0 = ((player.y - vOff0 + 18) & 0xFF) | (1 << 14);
                    shadowOAM[player.equippedWeapon.oamIndex].attr1 = ((player.x - hOff0 + (flip ? 4 : 12)) & 0x1FF) | (0 << 14);
                    player.equippedWeapon.y = player.y + 18;
                    player.equippedWeapon.x = player.x + (flip ? 4 : 12);
                    break;
                case 2:
                    shadowOAM[player.equippedWeapon.oamIndex].attr0 = ((player.y - vOff0 + 14 - flip) & 0xFF) | (1 << 14);
                    shadowOAM[player.equippedWeapon.oamIndex].attr1 = ((player.x - hOff0 + (flip ? 5 : 12)) & 0x1FF) | (0 << 14);
                    player.equippedWeapon.y = player.y + 14 - flip;
                    player.equippedWeapon.x = player.x + (flip ? 5 : 12);
                    break;
                case 3:
                    shadowOAM[player.equippedWeapon.oamIndex].attr0 = ((player.y - vOff0 + 11) & 0xFF) | (1 << 14);
                    shadowOAM[player.equippedWeapon.oamIndex].attr1 = ((player.x - hOff0 + (flip ? -6 : 22)) & 0x1FF) | (0 << 14);
                    player.equippedWeapon.y = player.y + 11;
                    player.equippedWeapon.x = player.x + (flip ? -6 : 22);
                    break;
                case 4:
                    shadowOAM[player.equippedWeapon.oamIndex].attr0 = ((player.y - vOff0 + 9 + flip) & 0xFF) | (1 << 14);
                    shadowOAM[player.equippedWeapon.oamIndex].attr1 = ((player.x - hOff0 + (flip ? -8 : 24)) & 0x1FF) | (0 << 14);
                    player.equippedWeapon.y = player.y + 9 + flip;
                    player.equippedWeapon.x = player.x + (flip ? -8 : 24);
                    break;
                case 5:
                    shadowOAM[player.equippedWeapon.oamIndex].attr0 = ((player.y - vOff0 + 13 + flip) & 0xFF) | (1 << 14);
                    shadowOAM[player.equippedWeapon.oamIndex].attr1 = ((player.x - hOff0 + (flip ? -4 : 20)) & 0x1FF) | (0 << 14);
                    player.equippedWeapon.y = player.y + 13 + flip;
                    player.equippedWeapon.x = player.x + (flip ? -4 : 20);
                    break;
            }
        } else if (player.equippedWeapon.weaponType == GUN) {
            if (player.currentFrame == 4) {
                shadowOAM[player.equippedWeapon.oamIndex].attr0 = ((player.y - vOff0 + 5 + flip) & 0xFF) | (1 << 14);
                shadowOAM[player.equippedWeapon.oamIndex].attr1 = ((player.x - hOff0 + (flip ? 5 : 14)) & 0x1FF) | (0 << 14);
                shadowOAM[player.equippedWeapon.oamIndex].attr2 = (((2) * (32) + (22)) & 0x3FF);
            }
        }
        break;
        }
    }
    if (player.direction < 8) {
        shadowOAM[player.oamIndex].attr1 |= (1 << 12);
        shadowOAM[player.equippedWeapon.oamIndex].attr1 |= (1 << 12);
    }


    updateGun();
}

void draw() {
    waitForVBlank();


    (*(volatile unsigned short*) 0x04000010) = hOff0;
    (*(volatile unsigned short*) 0x04000012) = vOff0;

    (*(volatile unsigned short*) 0x04000014) = hOff1;
    (*(volatile unsigned short*) 0x04000016) = vOff1;

    (*(volatile unsigned short*) 0x04000018) = hOff2;
    (*(volatile unsigned short*) 0x0400001A) = vOff2;

    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);
}

void updateGun() {
    for(int i = 0; i < 4; i++) {
        if (!bullets[i].active) {
            shadowOAM[bullets[i].oamIndex].attr0 = (2 << 8);
            continue;
        }
        if (screenY(bullets[i].y, bullets[i].height) == 170 || screenX(bullets[i].x, bullets[i].width) == 250) {
            bullets[i].active = 0;
        }
        bullets[i].x += bullets[i].xVel;
        shadowOAM[bullets[i].oamIndex].attr0 = ((screenY(bullets[i].y, bullets[i].height)) & 0xFF) | (0 << 14);
        shadowOAM[bullets[i].oamIndex].attr1 = ((screenX(bullets[i].x, bullets[i].width)) & 0x1FF) | (0 << 14);
        shadowOAM[bullets[i].oamIndex].attr2 = (((2) * (32) + (21)) & 0x3FF) | (((bullets[i].palRow) & 0xF) << 12);
    }
}

void updateText() {

    if (ltext == CAT) {
        if ((~(buttons) & ((1 << 6))) && vOff0 > 0) {
            vOff0--;
        } else if ((~(buttons) & ((1 << 7))) && vOff0 < 110) {
            vOff0++;
        }
        draw();
    }
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        switch(ltext) {
        case A:
            people[0].talk = 1;
            people[0].num = 1;
            goToGame();
        break;
        case B:
            if (inventory.credits >= 175) {
                inventory.credits -= 175;
                ltext = COMPLETED;
                for(int i = 0; i < 22; i++) {
                    if (!allItems[i].collected) {
                        allItems[i].collected = 1;
                        allItems[i].itemType = DEFENSE_POTION;
                        break;
                    }
                }
                for(int i = 0; i < 22; i++) {
                    if (!allItems[i].collected) {
                        allItems[i].collected = 1;
                        allItems[i].itemType = DAMAGE_POTION;
                        break;
                    }
                }
                people[5].objectiveCompleted = 1;
                goToText();
            }
        break;
        case C:
            goToGame();
        break;
        case D:
            people[4].talk = 1;
            people[4].num = 2;
            goToGame();
        break;
        case E:
            people[2].talk = 1;
            people[2].num = 1;
            goToGame();
        break;
        case F:
            people[3].talk = 1;
            goToGame();
        break;
        case CAT:
            goToGame();
        break;
        case MAP:
            goToGame();
        break;
        case COMPLETED:
            goToGame();
        break;
        }
    } else if ((!(~(oldButtons) & ((1 << 1))) && (~(buttons) & ((1 << 1))))) {
        goToGame();
    }
}
