#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
#use Path::Router;
#use Plack::App::Path::Router::PSGI;

use lib '/app';
use MyApp;

#use MyBase;
#use Home;
#use Search;
#my $home = Home->get_instance();
#my $search = Search->get_instance();
#my $router = Path::Router->new;
#$router->add_route('/psgi' =>
#    target => sub {
#        my $env = shift;
#        [
#            200,
#            [ 'Content-Type' => 'text/html' ],
#            [ $home->get_content($env) ]
#        ]
#    }
#);
#$router->add_route('/psgi/search' =>
#    target => sub {
#        my $env = shift;
#        [
#            200,
#            [ 'Content-Type' => 'text/html' ],
#            [ $search->get_content($env) ]
#        ]
#    }
#);

# now create the Plack app
#my $app = Plack::App::Path::Router::PSGI->new( router => $router );

my $application = MyApp->new();
my $app = sub { $application->run_psgi(@_) };
