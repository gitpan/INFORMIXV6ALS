# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{��} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

# �}�b�`����͂��Ȃ̂Ƀ}�b�`���Ȃ��i�P�j
if ("�^�]�Ƌ�" =~ /�^�]/) {
    print qq<ok - 1 "UNTENMENKYO" =~ /UNTEN/>;
}
else {
    print qq<not ok - 1 "UNTENMENKYO" =~ /UNTEN/>;
}

__END__

Shift-JIS�e�L�X�g�𐳂�������
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
