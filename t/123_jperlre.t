# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{‚ } ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

if ('‚ ‚¢‚¢‚¢‚¢‚¤' =~ /(‚ ‚¢{4,5}‚¢‚¤)/) {
    print "not ok - 1 $^X jperlre022.pl not ('‚ ‚¢‚¢‚¢‚¢‚¤' =~ /‚ ‚¢{4,5}‚¢‚¤/).\n";
}
else {
    print "ok - 1 $^X jperlre022.pl not ('‚ ‚¢‚¢‚¢‚¢‚¤' =~ /‚ ‚¢{4,5}‚¢‚¤/).\n";
}

__END__
