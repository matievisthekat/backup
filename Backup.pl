package Backup;
use strict;
use warnings;
use Readonly;

# use CLI::Helpers qw(:all);
use Getopt::Long;

Readonly our $VERSION => q{0.0.0};

my $verbose = 0;
my $help    = 0;
my $version = 0;
GetOptions(
    'verbose' => \$verbose,
    'help'    => \$help,
    'version' => \$version,
) or die();

if ($version) {
    print "Backup.pl version $VERSION\n";
}

1;
