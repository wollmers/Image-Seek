#!/usr/bin/perl

use Test;
BEGIN { plan tests => 7 };
use Image::Seek;

# test we're not regressing against a double-free bug in I::S 0.01
Image::Seek::cleardb();
ok(1);

Image::Seek::cleardb();
ok(1);

my ($reds, $blues, $greens);
for my $y (0..127) {
	for my $x (0..127) {
		$reds .= chr(20); $blues .= chr(20); $greens .= chr(20);
	}
}
Image::Seek::addImage(1, $reds, $greens, $blues);

ok(Image::Seek::query_id(1));

ok(Image::Seek::query_id(1,1));

Image::Seek::remove_id(1);
ok(1);

Image::Seek::cleardb();
ok(1);

Image::Seek::cleardb();
ok(1);
