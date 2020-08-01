package String::isComparable::WithNum;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";

use overload (
    '<=>' => \&compareWithNum,
    'cmp' => sub { $_[0]->value() eq $_[1] },
    '""'  => sub { $_[0]->value() },
);
use Mouse;

has value => ( is => 'rw', isa => 'Str' );

__PACKAGE__->meta->make_immutable();
no Mouse;

sub compareWithNum {
    my $self = shift;
    return ( $_[0] ^ $_[0] ) eq '0'
        ? $self->value() == $_[0]
        : $self->value() eq $_[0];
}

1;
__END__

=encoding utf-8

=head1 NAME

String::isComparable::WithNum - It's a test implementing between Str and Int 

=head1 SYNOPSIS

 use String::isComparable::WithNum;
 my $str = String::isComparable::WithNum->new( value => 'strings' );

 say q|Succeeded in comparing with strings| if $str eq 'strings';            
 say q|Succeeded in comparing with strings| if $str == 100;
 say q|Succeeded in comparing with strings| if $str == 'strings';
           
=head1 DESCRIPTION

L<The all of the problem is this Issue|https://github.com/worthmine/String-isComparable-WithNum/issues/1>

=head1 LICENSE

Copyright (C) worthmine.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

worthmine E<lt>worthmine@gmail.comE<gt>

=cut

