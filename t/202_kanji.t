# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use strict;
# use warnings;

use INFORMIXV6ALS;
print "1..1\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

mkdir('hoge', 0777);
open(FILE,'>hoge/テストソース.txt') || die "Can't open file: hoge/テストソース.txt\n";
print FILE "1\n";
close(FILE);

my($fileName) = glob("./hoge/*");
if ($fileName =~ /\Qソース\E/) {
    print "ok - 1 $^X $0\n";
}
else {
    print "not ok - 1 $^X $0\n";
}

unlink('hoge/テストソース.txt');
rmdir('hoge');

__END__

たとえば、./hoge配下に『テストソース.txt』というファイルがあったとします。
『[』を普通の文字扱いするために、『ソース』を\Qと\Eで囲んでみます。

◆その２：コードはshiftjis、処理はshiftjis、標準入出力はshiftjis

実行結果
C:\test>perl kanji01.pl
Unmatch
./hoge/テストソース.txt

しかし、上記ではマッチしません。
なぜかというと、 /\Qソース\E/は、\Qより先に『ソース』文字列が評価されるので、
基本的に『[』をエスケープしたに過ぎません。

8/2(土) ■[Perlノート] シフトJIS漢字のファイル名にマッチしてみる
http://d.hatena.ne.jp/chaichanPaPa/20080802/1217660826
