package Home;

use strict;
use warnings;

our $VERSION = 'v1.0.0';

use Moose;
use namespace::autoclean;
extends('MyBase');

override 'get_content' => sub {
    my $html = <<'END_HTML';
<html>
  <body>
    <h1>HTML FORM</h1>
    <form action="search">
      <input type="text" name="field"/>
      <input type="submit" name="submit" value="search"/>
    </form>
  </body>
</html>
END_HTML
    return $html;
};

__PACKAGE__->meta->make_immutable;
1;
