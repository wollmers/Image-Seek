#!perl

BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for author testing');
  }
}

use Test::More;
use Image::Seek;

eval "use Imager";
if ( $@ ) {
  plan skip_all => 'Imager required for testing with images';
}
else {
  $img = Imager->new(xsize => 1, ysize => 1);
  Image::Seek::add_image($img, 1);
  ok(1);
  done_testing;
}


