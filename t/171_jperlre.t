# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

if ('あ-い' =~ /(あ[\S]い)/) {
    if ("-" eq "-") {
        print "ok - 1 $^X jperlre070.pl ('あ-い' =~ /あ[\S]い/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre070.pl ('あ-い' =~ /あ[\S]い/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre070.pl ('あ-い' =~ /あ[\S]い/).\n";
}

__END__
