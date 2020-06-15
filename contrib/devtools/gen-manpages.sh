#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

HCAPD=${HCAPD:-$BINDIR/hcapd}
HCAPCLI=${HCAPCLI:-$BINDIR/hcap-cli}
HCAPTX=${HCAPTX:-$BINDIR/hcap-tx}
HCAPQT=${HCAPQT:-$BINDIR/qt/hcap-qt}

[ ! -x $HCAPD ] && echo "$HCAPD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
HCAPVER=($($HCAPCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for hcapd if --version-string is not set,
# but has different outcomes for hcap-qt and hcap-cli.
echo "[COPYRIGHT]" > footer.h2m
$HCAPD --version | sed -n '1!p' >> footer.h2m

for cmd in $HCAPD $HCAPCLI $HCAPTX $HCAPQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${HCAPVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${HCAPVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
