package Backup;
use strict;
use warnings;
use Readonly;

use Getopt::Long;

Readonly our $AUTHOR  => "Matthew Stead <matievisthekat\@gmail.com>";
Readonly our $VERSION => q{0.0.0};

our $verbose = 0;
our $debug   = 0;
our $help    = 0;
our $version = 0;
our $args    = GetOptions(
    'verbose' => \$verbose,
    'debug'   => \$debug,
    'help'    => \$help,
    'version' => \$version,
) or die();

sub verbose {
    print @_ if $verbose;
}

sub debug {
    print @_ if $debug;
}

if ($version) {
    debug "\$VERSION=$VERSION\n";
    print "Backup.pl version $VERSION\n";
}

1;
