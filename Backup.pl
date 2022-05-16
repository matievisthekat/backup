package Backup;
use strict;
use warnings;
use Readonly;
use Data::Dumper::Simple;
use Getopt::Long;

Readonly our $AUTHOR  => "Matthew Stead <matievisthekat\@gmail.com>";
Readonly our $VERSION => q{0.0.0};

my $verbose = 0;
my $debug   = 0;
my $help    = 0;
my $version = 0;
GetOptions(
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

sub debug {;
    if ($debug) {
        print @_;
    }
    return 0;
}

debug Dumper($VERSION, $AUTHOR, $verbose);

if ($version) {
    debug "\$VERSION=$VERSION\n";
    print "Backup.pl version $VERSION\n";
}

1;
