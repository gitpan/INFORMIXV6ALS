# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

if ('あいう' =~ /(あ[いう]え)/) {
    print "not ok - 1 $^X jperlre041.pl not ('あいう' =~ /あ[いう]え/).\n";
}
else {
    print "ok - 1 $^X jperlre041.pl not ('あいう' =~ /あ[いう]え/).\n";
}

__END__
