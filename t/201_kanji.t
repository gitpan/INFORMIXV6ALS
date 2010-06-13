# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{��} ne "\x82\xa0";

use strict;
# use warnings;

use INFORMIXV6ALS;
print "1..1\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

mkdir('hoge', 0777);
open(FILE,'>hoge/�e�X�g�\�[�X.txt') || die "Can't open file: hoge/�e�X�g�\�[�X.txt\n";
print FILE "1\n";
close(FILE);

my($fileName) = glob("./hoge/*");
if ($fileName =~ /�\�[�X/) {
    print "ok - 1 $^X $0\n";
}
else {
    print "not ok - 1 $^X $0\n";
}

unlink('hoge/�e�X�g�\�[�X.txt');
rmdir('hoge');

__END__

���Ƃ��΁A./hoge�z���Ɂw�e�X�g�\�[�X.txt�x�Ƃ����t�@�C�����������Ƃ��܂��B

�����̂P�F�R�[�h��shiftjis�A������shiftjis�A�W�����o�͂�shiftjis

���s����
C:\test>perl kanji00.pl
Unmatched [ in regex; marked by <-- HERE in m/��[ <-- HERE �X/ at kanji00.pl line 6.

�������A��L�ł̓}�b�`���܂���B
�Ƃ������A���K�\���G���[�ɂȂ�܂��B
����́A�w�\�[�X�x�́w�[�x�̑�Q�o�C�g���w[�x�̃R�[�h�ɂȂ��Ă��邩��ł��B
�����āA���́w]�x���Ȃ����߂ɐ��K�\���G���[�ɂȂ�̂ł��B

8/2(�y) ��[Perl�m�[�g] �V�t�gJIS�����̃t�@�C�����Ƀ}�b�`���Ă݂�
http://d.hatena.ne.jp/chaichanPaPa/20080802/1217660826