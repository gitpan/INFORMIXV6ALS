# This file is encoded in INFORMIX V6 ALS.
die "This file is not encoded in INFORMIX V6 ALS.\n" if q{あ} ne "\x82\xa0";

use INFORMIXV6ALS;
print "1..1\n";

my $__FILE__ = __FILE__;

# 修飾子 C<i>, C<I> および C<j> は、C<\p{}>, C<\P{}>, POSIX C<[: :]>.
# (例えば C<\p{IsLower}>, C<[:lower:]> など) には作用しません。
# そのため、C<re('\p{Lower}', 'iI')> の代わりに
# C<re('\p{Alpha}')> を使用してください。

# INFORMIXV6ALS ソフトウェアに C<\p{}>, C<\P{}>, POSIX C<[: :]> の機能がもともと存在しない。

print "ok - 1 $^X $__FILE__ (NULL)\n";

__END__

http://search.cpan.org/dist/INFORMIX V6 ALS-Regexp/
