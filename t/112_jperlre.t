# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あいいいいう' =~ /(.{1})/) {
    if ("$1" eq "あ") {
        print "ok - 1 $^X $__FILE__ ('あいいいいう' =~ /.{1}/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あいいいいう' =~ /.{1}/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あいいいいう' =~ /.{1}/).\n";
}

__END__
