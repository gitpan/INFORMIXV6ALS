# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS qw(ord);
print "1..2\n";

my $__FILE__ = __FILE__;

if (ord('あ') == 0x82A0) {
    print qq{ok - 1 ord('あ') == 0x82A0 $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 ord('あ') == 0x82A0 $^X $__FILE__\n};
}

$_ = 'い';
if (ord == 0x82A2) {
    print qq{ok - 2 \$_ = 'い'; ord == 0x82A2 $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 \$_ = 'い'; ord == 0x82A2 $^X $__FILE__\n};
}

__END__
