package LolCatalyst::Lite::Model::Translate;
use Moose;
use namespace::autoclean;

extends 'Catalyst::Model';

=head1 NAME

LolCatalyst::Lite::Model::Translate - Catalyst Model

=head1 DESCRIPTION

Catalyst Model.


=encoding utf8

=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

use Lingua::PigLatin qw/piglatin/;

sub translate {
  my ($self, $text) = @_;
  return piglatin($text);
}


__PACKAGE__->meta->make_immutable;

1;
