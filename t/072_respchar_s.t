# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

my $__FILE__ = __FILE__;

$a = "アソア";
if ($a =~ s/(アソ|イソ)/$1<$1>/) {
    if ($1 eq "アソ") {
        print qq{ok - 1 "アソア" =~ s/(アソ|イソ)// \$1=($1) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 "アソア" =~ s/(アソ|イソ)// \$1=($1) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 "アソア" =~ s/(アソ|イソ)// \$1=($1) $^X $__FILE__\n};
}

__END__
