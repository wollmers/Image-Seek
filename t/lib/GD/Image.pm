package GD::Image {

sub new {
  my $class = shift;
  # uncoverable condition false
  bless @_ ? @_ > 1 ? {@_} : {%{$_[0]}} : {}, ref $class || $class;
}

sub copyResized {}

sub width  { 1; }
sub height { 1; }

sub rgb {
  return (20,20,20);
}

sub getPixel { 1;}

1;
}
