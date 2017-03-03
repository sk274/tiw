package MyApp;

use strict;
use warnings;

our $VERSION = 1.0.0;

use Moose;
use Data::Dumper;
use POSIX;
use CGI::PSGI;
use Plack::Request;

sub run_psgi {
  my ($self, $env) = @_;
  my $request = Plack::Request->new($env);

  my $html = get_html();
  my $stuff = $request->param('stuff');
  my $param = $request->param('field');
  if ($stuff) {
    if ($param) {
      $html .= '<hr/>You said: ' . $request->param('field');
    } else {
      $html .= '<hr/><h1>LIES!!!</h1>';
    } 
  }

  return [
    '200',
    [ 'Content-Type' => 'text/html' ],
    [ $html ],
  ];
}

sub get_html {
    return q{
        <h1>Hello T.I.W.</h1>

        <form method="post">
        <input name="field"/>
        <input type="submit" value="Echo"/>
        <input type="hidden" name="stuff" value="1"/>
        </form>
    }
}

1;
