#!perl

# Self-compliance tests

use strict;
use warnings;

use lib 't/tlib';

use English qw( -no_match_vars );

use File::Spec qw();

use Perl::Critic::PolicyFactory;
use Perl::Critic::Utils qw( :characters );
use Perl::Critic::TestUtilitiesWithMinimalDependencies qw(
    should_skip_author_tests
    get_author_test_skip_message
);

use Test::More;

if (should_skip_author_tests()) {
    plan skip_all => get_author_test_skip_message();
}

#-----------------------------------------------------------------------------

eval { require Test::Perl::Critic; };
plan skip_all => 'Test::Perl::Critic required to criticise code' if $EVAL_ERROR;

#-----------------------------------------------------------------------------
# Set up PPI caching for speed (used primarily during development)

if ( $ENV{PERL_CRITIC_CACHE} ) {
    require PPI::Cache;
    my $cache_path =
        File::Spec->catdir(
            File::Spec->tmpdir,
            "test-perl-critic-cache-$ENV{USER}",
        );
    if ( ! -d $cache_path) {
        mkdir $cache_path, oct 700;
    }
    PPI::Cache->import( path => $cache_path );
}

#-----------------------------------------------------------------------------
# Run critic against all of our own files

my $rcfile = File::Spec->catfile( qw( t 40_perlcriticrc ) );
Test::Perl::Critic->import( -profile => $rcfile );
all_critic_ok();

#-----------------------------------------------------------------------------

# Local Variables:
#   mode: cperl
#   cperl-indent-level: 4
#   fill-column: 78
#   indent-tabs-mode: nil
#   c-indentation-style: bsd
# End:
# ex: set ts=8 sts=4 sw=4 tw=78 ft=perl expandtab :
