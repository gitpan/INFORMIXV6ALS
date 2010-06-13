use INFORMIXV6ALS;
print "1..1\n";

if ('1' =~ /([\d])/) {
    if ("-" eq "-") {
        print "ok - 1 $^X jperlre071.pl ('1' =~ /[\d]/).\n";
    }
    else {
        print "not ok - 1 $^X jperlre071.pl ('1' =~ /[\d]/).\n";
    }
}
else {
    print "not ok - 1 $^X jperlre071.pl ('1' =~ /[\d]/).\n";
}

__END__
