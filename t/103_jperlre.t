# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

if ('xいう' =~ /(あいう)/) {
    print "not ok - 1 $^X jperlre002.pl not ('xいう' =~ /あいう/).\n";
}
else {
    print "ok - 1 $^X jperlre002.pl not ('xいう' =~ /あいう/).\n";
}

__END__
