# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{��} ne "\x82\xa0";

my $__FILE__ = __FILE__;

use INFORMIXV6ALS;
print "1..1\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

open(FILE,'>F�@�\') || die "Can't open file: F�@�\\n";
print FILE "1\n";
close(FILE);

# open
if (open(FILE,'F�@�\')) {
    print "ok - 1 open $^X $__FILE__\n";
    close(FILE);
}
else {
    print "not ok - 1 open: $! $^X $__FILE__\n";
}

unlink('F�@�\');

__END__