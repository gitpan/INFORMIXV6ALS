# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

if ('あいう' =~ /(あい{0,1}う)/) {
    if ("$1" eq "あいう") {
        print "ok - 1 $^X jperlre028.pl ('あいう' =~ /あい{0,1}う/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre028.pl ('あいう' =~ /あい{0,1}う/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre028.pl ('あいう' =~ /あい{0,1}う/).\n";
}

__END__
