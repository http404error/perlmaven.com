use strict;
use warnings;

print "What is your age? ";
my $age = <STDIN>;
if ($age >= 18) {
    print "In most countries you can vote.\n";
} else {
    print "You are too young to vote\n";
}
