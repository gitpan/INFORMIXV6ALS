# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{��} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('x������y' =~ /(������)/) {
    if ("$1" eq "������") {
        print "ok - 1 $^X $__FILE__ ('x������y' =~ /������/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('x������y' =~ /������/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('x������y' =~ /������/).\n";
}

__END__
