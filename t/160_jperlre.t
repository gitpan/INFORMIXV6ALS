# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{��} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('�� ��' =~ /(��\s��)/) {
    if ("-" eq "-") {
        print "ok - 1 $^X $__FILE__ ('�� ��' =~ /��\s��/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('�� ��' =~ /��\s��/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('�� ��' =~ /��\s��/).\n";
}

__END__
