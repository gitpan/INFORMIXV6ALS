# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

if ('あうe' =~ /(あ[い-え]e)/) {
    if ("$1" eq "あうe") {
        print "ok - 1 $^X jperlre044.pl ('あうe' =~ /あ[い-え]e/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre044.pl ('あうe' =~ /あ[い-え]e/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre044.pl ('あうe' =~ /あ[い-え]e/).\n";
}

__END__
