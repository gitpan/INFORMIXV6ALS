# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('ああいう' =~ /(あいう)$/) {
    if ("$1" eq "あいう") {
        print "ok - 1 $^X $__FILE__ ('ああいう' =~ /あいう\$/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('ああいう' =~ /あいう\$/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('ああいう' =~ /あいう\$/).\n";
}

__END__
