Installation instructions.



Step ONE - install etwtc

Open R:

install.packages('devtools')
library(devtools)
install_github('palesl/etwtc')


Step TWO - install pdf extraction engine. (NECESSARY FOR THE pdf_corpus FUNCTION)

The extraction engines come courtesy from http://www.foolabs.com/xpdf/download.html (open source)

The appropriate pdf extraction engine for each operating system type are within the following compressed files:

xpdfbin-mac-3.04.tar.gz for MacOS or OSX  
xpdfbin-win-3.04.zip for Windows 
xpdfbin-linux-3.04.tar.gz for Linux 

Extract the folders and install according to the instructions within the INSTALL file.


