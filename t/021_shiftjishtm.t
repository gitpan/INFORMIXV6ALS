# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

# unmatched [ ] in regexp
# 「正規表現にマッチしない [ ] がある」
eval { /プール/ };
if ($@) {
    print "not ok - 1 eval { /PUURU/ }\n";
}
else {
    print "ok - 1 eval { /PUURU/ }\n";
}

__END__

Shift-JISテキストを正しく扱う
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
