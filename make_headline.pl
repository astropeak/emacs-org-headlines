$file = $ARGV[0];
open my $fh, "<$file";
print "(\n";
while (<$fh>) {
	++$ln;
	chomp;

       # remove all "
	s/"//g;

	print "(\"$file\" $ln \"$_\")\n" if /^\*+[ \t]/;
}
print ")\n";