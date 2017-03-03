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
  if ($request->param('field')) {
    $html .= '<hr/>You said: ' . $request->param('field');
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

        <form>
        <input name="field"/>
        <input type="submit" value="Echo"/>
        </form>
    }
}

1;
