$dir = $ARGV[0];
$file = $ARGV[1];
open my $fh, "<$dir/$file";
print "(\n";
while (<$fh>) {
	++$ln;
	chomp;

       # remove all "
	s/"//g;

	print "(\"$file\" $ln \"$_\")\n" if /^\*+[ \t]/;
}
print ")\n";