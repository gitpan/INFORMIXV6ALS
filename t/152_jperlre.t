# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

if ('あ]' =~ /(あ])/) {
    if ("$1" eq "あ]") {
        print "ok - 1 $^X jperlre051.pl ('あ]' =~ /あ]/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre051.pl ('あ]' =~ /あ]/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre051.pl ('あ]' =~ /あ]/).\n";
}

__END__
