#!/usr/bin/perl

use Test;
BEGIN { plan tests => 4 };
use Image::Seek;
use Imager;

# test we're not regressing against a double-free bug in I::S 0.01
Image::Seek::cleardb();
ok(1);
Image::Seek::cleardb();
ok(1);
$img = Imager->new(xsize => 1, ysize => 1);
Image::Seek::add_image($img, 1);
Image::Seek::cleardb();
ok(1);
Image::Seek::cleardb();
ok(1);
