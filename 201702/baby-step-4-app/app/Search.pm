package Search;

use strict;
use warnings;
use Moose;
use namespace::autoclean;
use Plack::Request;
extends('MyBase');

override 'get_content' => sub {
    my ($self, $env) = @_;
    my $req = Plack::Request->new($env);
    my $param = $req->param('field');
    if (!$param) { $param = '<h1>LIES!!!</h1>'; }
    else { $param = "<p>You searched for: $param</p>"; }
    my $html = <<"END_HTML";
<html>
  <body>
    <h1>HTML FORM</h1>
    <form action="search">
      <input type="text" name="field"/>
      <input type="submit" name="submit" value="search"/>
    </form>
    <hr/>
    $param
  </body>
</html>
END_HTML
    return $html;
};

__PACKAGE__->meta->make_immutable;
1;
