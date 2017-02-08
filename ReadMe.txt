Installation instructions.

Step One - install pdf extraction engine. 

The appropriate pdf extraction engine for each operating system type are within the following compressed files:
xpdfbin-mac-3.04.tar.gz for MacOS or OSX  
xpdfbin-win-3.04.zip for Windows 
xpdfbin-linux-3.04.tar.gz for Linux 

Extract the folders and install according to the instructions within the INSTALL file.

The extraction engines come courtesy from http://www.foolabs.com/xpdf/home.html (open source)

Step Two - install etwtc

Open R:

install.packages('devtools')
library(devtools)
install_github('etwtc', 'palesl')
