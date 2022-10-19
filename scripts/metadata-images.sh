#!/bin/bash
set -eux

URL='https://efck-chat-keyboard.github.io'

EXIV2_COMMANDS="
set Exif.Image.Copyright                               XmpText $URL
set Xmp.iptc.CreatorContactInfo/Iptc4xmpCore:CiUrlWork XmpText $URL
set Xmp.dc.creator                                     XmpSeq  $URL
set Xmp.plus.Licensor                                  XmpText type=Seq
set Xmp.plus.Licensor[1]/plus:LicensorURL              XmpText $URL
set Xmp.iptc.creditLine                                XmpBag  $URL
set Xmp.xmpRights.UsageTerms                           LangAlt lang=x-default $URL
set Xmp.xmpRights.WebStatement                         XmpText $URL
"
exiv2 -v rm "$@"
exiv2 -v -m <(echo "$EXIV2_COMMANDS") "$@"

exiftool \
    -all= \
    -copyright="$URL" \
    -Creator="$URL" \
    -CreditLine="$URL" \
    -LicensorURL="$URL" \
    -WebStatement="$URL" \
    -UsageTerms="$URL" \
    -CreatorWorkURL="$URL" \
    -XMPToolkit= \
    "$@" || true
