package Perl::Critic::Bangs;

use warnings;
use strict;

=head1 NAME

Perl::Critic::Bangs - A collection of handy Perl::Critic policies

=head1 VERSION

Version 0.22

=cut

our $VERSION = '0.22';

=head1 SYNOPSIS

Perl::Critic::Bangs is a collection of Perl::Critic policies that
will help make your code better.

=head1 DESCRIPTION

The rules included with the Perl::Critic::Bangs group include:

=head2 ProhibitCommentedOutCode

Commented-out code is usually noise.  It should be removed.

=head2 ProhibitFlagComments

Watch for comments like "XXX", "TODO", etc.

=head2 ProhibitNoPlan

Tests should have a plan.

=head2 ProhibitNumberedNames

Variables like C<$user> and C<$user2> are insufficiently distinguished.

=head2 ProhibitRefProtoOrProto

Determining the class in a constructor by using C<ref($proto) || $proto> is usually
a cut-n-paste that is incorrect.

=head2 ProhibitVagueNames

Vague variables like C<$data> or C<$info> are not descriptive enough.

=head1 WHY BANGS?

I didn't want to call it "Perl::Critic::Lester" or "Perl::Critic::Petdance"
that would make it sound like they were only my rules.  Other people
will likely include their own set of rules, too.

So I started thinking of names of famous critics.  Ebert, Siskel,
Kael, etc. What about music critics?  Greil Marcus, J.D. Considine...
Lester Bangs!  He's even got my name in his!  So there was the name.

See http://en.wikipedia.org/wiki/Lester_Bangs for more on Lester Bangs.

=head1 AUTHOR

Andy Lester, C<< <andy at petdance.com> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-perl-critic-bangs at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Perl-Critic-Bangs>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Perl::Critic::Bangs

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Perl-Critic-Bangs>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Perl-Critic-Bangs>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Perl-Critic-Bangs>

=item * Search CPAN

L<http://search.cpan.org/dist/Perl-Critic-Bangs>

=back

=head1 ACKNOWLEDGEMENTS

Thanks to
Aaron Moore for helping me get this off the ground.

=head1 COPYRIGHT & LICENSE

Copyright 2006 Andy Lester, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1; # End of Perl::Critic::Bangs
