# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{‚ } ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..4\n";

#
# chop, chomp
#

$y = "‚ ‚¢‚¤";
$x = chomp($y);
if ($x ne 0 || $y ne "‚ ‚¢‚¤") {
    print "not ok - 1 $^X 01jperlchop.pl\n";
}
else {
    print "ok - 1 $^X 01jperlchop.pl\n";
}

$y = "‚ ‚¢‚¤\n";
$x = chomp($y);
if ($x ne 1 || $y ne "‚ ‚¢‚¤") {
    print "not ok - 2 $^X 01jperlchop.pl\n";
}
else {
    print "ok - 2 $^X 01jperlchop.pl\n";
}

$y = "‚ ‚¢‚¤";
$x = chop($y);
if ($x ne "‚¤" || $y ne "‚ ‚¢") {
    print "not ok - 3 $^X 01jperlchop.pl\n";
}
else {
    print "ok - 3 $^X 01jperlchop.pl\n";
}

$y = "‚ ‚¢‚¤t";
$x = chop($y);
if ($x ne "t" || $y ne "‚ ‚¢‚¤") {
    print "not ok - 4 $^X 01jperlchop.pl\n";
}
else {
    print "ok - 4 $^X 01jperlchop.pl\n";
}

__END__
