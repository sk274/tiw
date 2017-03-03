package MyBase;

use strict;
use warnings;
use Moose;
use namespace::autoclean;

sub get_instance() {
    my ($class, %params) = @_;
    return $my::instance->{$class} if $my::instance->{$class};
    $my::instance->{$class} = $class->new(%params);
    return $my::instance->{$class};
}

sub dispatch {
    my ($self, $env) = @_;
    return [
        200,
        [ 'Content-Type' => 'text/html' ],
        [ get_content($env) ]
    ];
}

sub get_content {
}

__PACKAGE__->meta->make_immutable;
1;
