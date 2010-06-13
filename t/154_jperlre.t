# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{‚ } ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

if ('‚ e‚¦' =~ /(‚ [^‚¢‚¤]‚¦)/) {
    if ("$1" eq "‚ e‚¦") {
        print "ok - 1 $^X jperlre053.pl ('‚ e‚¦' =~ /‚ [^‚¢‚¤]‚¦/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre053.pl ('‚ e‚¦' =~ /‚ [^‚¢‚¤]‚¦/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre053.pl ('‚ e‚¦' =~ /‚ [^‚¢‚¤]‚¦/).\n";
}

__END__
