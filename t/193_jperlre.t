# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{��} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

eval q!'AAA' =~ /[]/!;
if ($@) {
    print "ok - 1 $^X jperlre110.pl (!'AAA' =~ /[]/!)\n";
}
else {
    print "not ok - 1 $^X jperlre110.pl (!'AAA' =~ /[]/!)\n";
}

__END__