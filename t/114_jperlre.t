# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

if ('あいいいいう' =~ /(あい{0,}いう)/) {
    if ("$1" eq "あいいいいう") {
        print "ok - 1 $^X jperlre013.pl ('あいいいいう' =~ /あい{0,}いう/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre013.pl ('あいいいいう' =~ /あい{0,}いう/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre013.pl ('あいいいいう' =~ /あい{0,}いう/).\n";
}

__END__
