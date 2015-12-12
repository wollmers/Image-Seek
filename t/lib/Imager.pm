package  # hide from PAUSE
  Imager {

  sub new {
    my $class = shift;
    bless {}, $class;
  }

  sub scaleX { shift; }
  sub scaleY { shift; }

  sub getscanline  {
    my $self = shift;
    my @scanline = map { $self; } 0..127;
    return @scanline;
  }


  sub rgba {
    return (20,20,20);
  }

  1;
}
