# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

if ('あいいいいう' =~ /(あい{4,5}いう)/) {
    print "not ok - 1 $^X jperlre022.pl not ('あいいいいう' =~ /あい{4,5}いう/).\n";
}
else {
    print "ok - 1 $^X jperlre022.pl not ('あいいいいう' =~ /あい{4,5}いう/).\n";
}

__END__
