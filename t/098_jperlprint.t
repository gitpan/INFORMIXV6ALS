# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

open(TMP,'>Kanji_xxx.tmp') || die "Can't open file: Kanji_xxx.tmp\n";
print TMP <<EOL;
あいう    align
abcde お  align
かきくけ  align
こ        align
EOL
close(TMP);

$CAT = 'perl -e "print <>"';
if (`$CAT Kanji_xxx.tmp` eq <<EOL) {
あいう    align
abcde お  align
かきくけ  align
こ        align
EOL
    print "ok - 1 $^X 02jperlprint.pl\n";
    unlink "Kanji_xxx.tmp";
}
else {
    print "not ok - 1 $^X 02jperlprint.pl\n";
}

__END__
