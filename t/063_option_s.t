# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{��} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

my $__FILE__ = __FILE__;

# s///g
$a = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

if ($a =~ s/[CK]/������/g) {
    if ($a eq "AB������DEFGHIJ������LMNOPQRSTUVWXYZ") {
        print qq{ok - 1 \$a =~ s/[CK]/������/g ($a) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 \$a =~ s/[CK]/������/g ($a) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 \$a =~ s/[CK]/������/g ($a) $^X $__FILE__\n};
}

__END__
