# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

if ('xあいうy' =~ /(あいう)/) {
    if ("$1" eq "あいう") {
        print "ok - 1 $^X jperlre005.pl ('xあいうy' =~ /あいう/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre005.pl ('xあいうy' =~ /あいう/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre005.pl ('xあいうy' =~ /あいう/).\n";
}

__END__
