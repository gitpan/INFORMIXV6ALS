use INFORMIXV6ALS;
print "1..1\n";

if ('-' =~ /([\d])/) {
    print "not ok - 1 $^X jperlre072.pl not ('-' =~ /[\d]/).\n";
}
else {
    print "ok - 1 $^X jperlre072.pl not ('-' =~ /[\d]/).\n";
}

__END__
