#include "imgdb.cpp"
#include "haar.cpp"
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "const-c.inc"


MODULE = Image::Seek		PACKAGE = Image::Seek		

INCLUDE: const-xs.inc

void 
addImage(id, red, green, blue)
    long id
    unsigned char* red
    unsigned char* green
    unsigned char* blue

void
queryImgID(id, numres)
    long id
    int numres

void
loaddb(filename)
    char* filename

void
savedb(filename)
    char* filename

void
cleardb()

void
results()
    PPCODE:
        while(!pqResults.empty()) {
            curResult = pqResults.top();
            pqResults.pop();
            EXTEND(SP, 2);
            PUSHs(sv_2mortal(newSViv(curResult.id)));
            PUSHs(sv_2mortal(newSVnv(curResult.score)));
        }
