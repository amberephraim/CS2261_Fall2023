
//{{BLOCK(main)

//======================================================================
//
//	main, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 1024 tiles not compressed
//	Total size: 512 + 32768 = 33280
//
//	Time-stamp: 2023-11-28, 17:58:22
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAIN_H
#define GRIT_MAIN_H

#define mainTilesLen 32768
extern const unsigned short mainTiles[16384];

#define mainPalLen 512
extern const unsigned short mainPal[256];

#endif // GRIT_MAIN_H

//}}BLOCK(main)
