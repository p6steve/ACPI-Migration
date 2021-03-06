#!/usr/bin/env raku

my @vol-iss-max = (
#`[
	1  => 1,
	2  => 2,
	3  => 1,
	4  => 2,
	5  => 4,
	6  => 3,
	7  => 3,
	8  => 2,
	9  => 1,
	10 => 4,
	11 => 3,
	12 => 4,
	13 => 6,
	14 => 5,
#]
	15 => 5,
	16 => 2,
	17 => 3,
	18 => 6,
);

##http://ejel.com/volume18/issue1

my $cmd;
for @vol-iss-max -> %p {
	for 1..%p.value -> $i {
		$cmd = qq|time ./do-issue-ejel.raku -issurl='http://ejel.org/volume{%p.key}/issue$i' >> ejel.log|;
		say $cmd;
		shell($cmd); 
		say "===========================================================================";
		say "===========================================================================";
		say "===========================================================================";
		sleep(3);
	}
}

