#!/bin/bash
# create multiresolution windows icon
#mainnet
ICON_SRC=../../src/qt/res/icons/hcap.png
ICON_DST=../../src/qt/res/icons/hcap.ico
convert ${ICON_SRC} -resize 16x16 hcap-16.png
convert ${ICON_SRC} -resize 32x32 hcap-32.png
convert ${ICON_SRC} -resize 48x48 hcap-48.png
convert hcap-16.png hcap-32.png hcap-48.png ${ICON_DST}
#testnet
ICON_SRC=../../src/qt/res/icons/hcap_testnet.png
ICON_DST=../../src/qt/res/icons/hcap_testnet.ico
convert ${ICON_SRC} -resize 16x16 hcap-16.png
convert ${ICON_SRC} -resize 32x32 hcap-32.png
convert ${ICON_SRC} -resize 48x48 hcap-48.png
convert hcap-16.png hcap-32.png hcap-48.png ${ICON_DST}
rm hcap-16.png hcap-32.png hcap-48.png
#regtest
ICON_SRC=../../src/qt/res/icons/hcap_regtest.png
ICON_DST=../../src/qt/res/icons/hcap_regtest.ico
convert ${ICON_SRC} -resize 16x16 hcap-16.png
convert ${ICON_SRC} -resize 32x32 hcap-32.png
convert ${ICON_SRC} -resize 48x48 hcap-48.png
convert hcap-16.png hcap-32.png hcap-48.png ${ICON_DST}
rm hcap-16.png hcap-32.png hcap-48.png
#unittest
ICON_SRC=../../src/qt/res/icons/hcap_unittest.png
ICON_DST=../../src/qt/res/icons/hcap_unittest.ico
convert ${ICON_SRC} -resize 16x16 hcap-16.png
convert ${ICON_SRC} -resize 32x32 hcap-32.png
convert ${ICON_SRC} -resize 48x48 hcap-48.png
convert hcap-16.png hcap-32.png hcap-48.png ${ICON_DST}
rm hcap-16.png hcap-32.png hcap-48.png