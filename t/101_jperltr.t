# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..5\n";

#
# tr
#
$y = "あいうえお";
$y =~ tr/あ-う//cd;
if ($y ne "あいう") {
    print "not ok - 1 $^X 05jperltr.pl\n";
}
else {
    print "ok - 1 $^X 05jperltr.pl\n";
}

$y = "あいうえお";
$y =~ tr/あ-う/か-く/;
if ($y ne "かきくえお") {
    print "not ok - $^X 2 05jperltr.pl\n";
}
else {
    print "ok - 2 $^X 05jperltr.pl\n";
}

$y = 'abcabcabc';
$y =~ tr/a-c/d-f/;
if ($y ne 'defdefdef') {
    print "not ok - 3 $^X 05jperltr.pl\n";
}
else {
    print "ok - 3 $^X 05jperltr.pl\n";
}

$y = 'abc';
$y =~ tr/abc/def/;
if ($y ne 'def') {
    print "not ok - 4 $^X 05jperltr.pl\n";
}
else {
    print "ok - 4 $^X 05jperltr.pl\n";
}

$y = 'abcabcabc';
$y =~ tr/abc/def/;
if ($y ne 'defdefdef') {
    print "not ok - 5 $^X 05jperltr.pl\n";
}
else {
    print "ok - 5 $^X 05jperltr.pl\n";
}

__END__
