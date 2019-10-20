use strict;
use warnings;

use FindBin qw($Bin);
use lib $Bin;

use Test::More;
plan tests => 1;

use Test::Mock::Simple;
my $mock = Test::Mock::Simple->new(module => 'MyWebAPI');

my $w = MyWebAPI->new;

$mock->add(get => sub {
    return 'Beyonce Beyonce Miley Cyrus';
});
is_deeply $w->count_strings('Beyonce', 'Miley Cyrus'), 
    {
        'Beyonce'     => 2,
        'Miley Cyrus' => 1,
    };
