# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{��} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

# �G���[�ɂ͂Ȃ�Ȃ����Ǖ�����������i�R�j
if ("�ۏ\net" eq pack('C7',0x8a,0xdb,0x8f,0x5c,0x6e,0x65,0x74)) {
    print qq<ok - 1 "MARU JU net"\n>;
}
else {
    print qq<not ok - 1 "MARU JU net"\n>;
}

__END__

INFORMIXV6ALS.pm �̏������ʂ��ȉ��ɂȂ邱�Ƃ����҂��Ă���

if ("�ۏ\\net" eq pack('C7',0x8a,0xdb,0x8f,0x5c,0x6e,0x65,0x74)) {

Shift-JIS�e�L�X�g�𐳂�������
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
