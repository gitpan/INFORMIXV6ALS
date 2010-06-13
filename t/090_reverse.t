# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{‚ } ne "\x82\xa0";

use INFORMIXV6ALS qw(reverse);
print "1..2\n";

my $__FILE__ = __FILE__;

@_ = reverse('‚ ‚¢‚¤‚¦‚¨', '‚©‚«‚­‚¯‚±', '‚³‚µ‚·‚¹‚»');
if ("@_" eq "‚³‚µ‚·‚¹‚» ‚©‚«‚­‚¯‚± ‚ ‚¢‚¤‚¦‚¨") {
    print qq{ok - 1 \@_ = reverse('‚ ‚¢‚¤‚¦‚¨', '‚©‚«‚­‚¯‚±', '‚³‚µ‚·‚¹‚»') $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 \@_ = reverse('‚ ‚¢‚¤‚¦‚¨', '‚©‚«‚­‚¯‚±', '‚³‚µ‚·‚¹‚»') $^X $__FILE__\n};
}

$_ = reverse('‚ ‚¢‚¤‚¦‚¨', '‚©‚«‚­‚¯‚±', '‚³‚µ‚·‚¹‚»');
if ($_ eq "‚»‚¹‚·‚µ‚³‚±‚¯‚­‚«‚©‚¨‚¦‚¤‚¢‚ ") {
    print qq{ok - 2 \$_ = reverse('‚ ‚¢‚¤‚¦‚¨', '‚©‚«‚­‚¯‚±', '‚³‚µ‚·‚¹‚»') $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 \$_ = reverse('‚ ‚¢‚¤‚¦‚¨', '‚©‚«‚­‚¯‚±', '‚³‚µ‚·‚¹‚»') $^X $__FILE__\n};
}

__END__
