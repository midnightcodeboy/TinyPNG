#!/bin/bash

##Created by Jess B. Dahlberg
# Aiding in installations since 1990
# This script will install from source all components needed to successfully run TinyPNG
##06/17/13



cd /usr/local/src/;
#Install OptiPNG
wget http://prdownloads.sourceforge.net/optipng/optipng-0.7.4.tar.gz;
tar -xvzf optipng-0.7.4.tar.gz; 
cd optipng-0.7.4;
./configure ;
make;
make install;
cd /usr/local/src/;
#AdvanceComp needed for AdvPNG
wget http://prdownloads.sourceforge.net/advancemame/advancecomp-1.17.tar.gz?download;
tar -xvzf advancecomp-1.17.tar.gz ;
cd advancecomp-1.17;
./configure;
make;
make install;
cd /usr/local/src/;
#PNGOut Installation
wget http://static.jonof.id.au/dl/kenutils/pngout-20130221-linux.tar.gz;
tar -xvzf pngout-20130221-linux.tar.gz; 
cd pngout-20130221-linux;
cd i386/;
#Copy to binaries
cp pngout /usr/bin/;
cd /usr/local/src/;
#PNGnq installation
wget http://sourceforge.net/projects/pngnq/files/latest/download?source=files;
tar -xvzf pngnq-1.1.tar.gz; 
cd pngnq-1.1;
./configure;
make;
make install;
cd /usr/local/src/;
#Install PNGCrush
wget http://sourceforge.net/projects/pmt/files/pngcrush/1.7.63/pngcrush-1.7.63.tar.gz/download;
tar -xvzf pngcrush-1.7.63.tar.gz; 
cd pngcrush-1.7.63;
./configure;
make;
#Copy to binaries
cp pngcrush /usr/bin/;

echo "Done!";
