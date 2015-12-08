#!perl

BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for author testing');
  }
}

use Test::More;
use Image::Seek;

eval "use Image::Imlib2";
if ( $@ ) {
  plan skip_all => 'Image::Imlib2 required for testing with images';
}
else {
  $img = Image::Imlib2->new(1, 1);
  Image::Seek::add_image($img, 1);
  ok(1);
  done_testing;
}


