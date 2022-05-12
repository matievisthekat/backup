package Backup;
use strict;
use warnings;
use Readonly;

use Getopt::Long;

Readonly our $AUTHOR  => "Matthew Stead <matievisthekat\@gmail.com>";
Readonly our $VERSION => q{0.0.0};

my $verbose = 0;
my $debug   = 0;
my $help    = 0;
my $version = 0;
my $args    = GetOptions(
    'verbose' => \$verbose,
    'debug'   => \$debug,
    'help'    => \$help,
    'version' => \$version,
) or die();

sub verbose {
    my $arg0 = shift;
    if ($verbose) {
        print $arg0;
    }
    return 0;
}

sub debug {
    my $arg0 = shift;
    if ($debug) {
        print $arg0;
    }
    return 0;
}

debug $args;

if ($version) {
    debug "\$VERSION=$VERSION\n";
    print "Backup.pl version $VERSION\n";
}

1;
