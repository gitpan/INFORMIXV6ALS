# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{��} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

#
# split
#
@X = split(/(.)/, "������t����");
$x = $#X;
if ($x != 11) {
    print "not ok - 1 $^X 04jperlsplit.pl\n";
}
else {
    print "ok - 1 $^X 04jperlsplit.pl\n";
}

__END__
