# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..4\n";

# メタ文字 C<\U>, C<\L>, C<\Q>, C<\E> および変数展開は考慮されておりません。
# 必要なら、C<""> (or C<qq//>) 演算子を使ってください。

if ('ABC' =~ /\Uabc\E/) {
    print "ok - 1 $^X 01sadahiro.pl ('ABC' =~ /\\Uabc\\E/)\n";
}
else {
    print "not ok - 1 $^X 01sadahiro.pl ('ABC' =~ /\\Uabc\\E/)\n";
}

if ('def' =~ /\LDEF\E/) {
    print "ok - 2 $^X 01sadahiro.pl ('def' =~ /\\LDEF\\E/)\n";
}
else {
    print "not ok - 2 $^X 01sadahiro.pl ('def' =~ /\\LDEF\\E/)\n";
}

if ('({[' =~ /\Q({\[\E/) {
    print "ok - 3 $^X 01sadahiro.pl ('def' =~ /\\Q({\[\\E/)\n";
}
else {
    print "not ok - 3 $^X 01sadahiro.pl ('def' =~ /\\Q({\[\\E/)\n";
}

my $var = 'GHI';
if ('GHI' =~ /GHI/) {
    print "ok - 4 $^X 01sadahiro.pl ('GHI' =~ /GHI/)\n";
}
else {
    print "not ok - 4 $^X 01sadahiro.pl ('GHI' =~ /GHI/)\n";
}

__END__

http://search.cpan.org/dist/INFORMIX V6 ALS-Regexp/
