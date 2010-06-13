# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{‚ } ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

if ('‚ A]‚¢' =~ /‚ [^]]‚¢/) {
    print "not ok - 1 $^X jperlre105.pl ('‚ A]‚¢' =~ /‚ [^]]‚¢/)\n";
}
else {
    print "ok - 1 $^X jperlre105.pl ('‚ A]‚¢' =~ /‚ [^]]‚¢/)\n";
}

__END__
