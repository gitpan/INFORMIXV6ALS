# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{��} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

# �G���[�ɂ͂Ȃ�Ȃ����Ǖ�����������i�Q�j
if ('�~�\\500' eq pack('C8',0x83,0x7e,0x83,0x5c,0x5c,0x35,0x30,0x30)) {
    print "ok - 1 'MISO 500yen'\n";
}
else {
    print "not ok - 1 'MISO 500yen'\n";
}

__END__

INFORMIXV6ALS.pm �̏������ʂ��ȉ��ɂȂ邱�Ƃ����҂��Ă���

if ('�~�\\\500' eq pack('C8',0x83,0x7e,0x83,0x5c,0x5c,0x35,0x30,0x30)) {

Shift-JIS�e�L�X�g�𐳂�������
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
