# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

if ('えef' =~ /(()ef)/) {
    if ("$1-$2" eq "ef-") {
        print "ok - 1 $^X jperlre077.pl ('えef' =~ /()ef/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre077.pl ('えef' =~ /()ef/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre077.pl ('えef' =~ /()ef/).\n";
}

__END__
