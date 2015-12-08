package  # hide from PAUSE
  Imager {

  sub new {
    my $class = shift;
    # uncoverable condition false
    bless @_ ? @_ > 1 ? {@_} : {%{$_[0]}} : {}, ref $class || $class;
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
