# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

if ('あxyzう' =~ /(あ.*う)/) {
    if ("$1" eq "あxyzう") {
        print "ok - 1 $^X jperlre039.pl ('あxyzう' =~ /あ.*う/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre039.pl ('あxyzう' =~ /あ.*う/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre039.pl ('あxyzう' =~ /あ.*う/).\n";
}

__END__
