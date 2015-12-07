use 5.006;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
use Config;
my $ld = $Config{ld};
$ld =~ s/gcc/c++/ or $ld =~ s/cc/c++/;

WriteMakefile(
    NAME              => 'Image::Seek',
    VERSION_FROM      => 'lib/Image/Seek.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
   CC => "c++",
   XSOPT => "-C++",
    LIBS => ($^O =~ /darwin/ ? ['-lSystem'] : []),
    LD => $ld,
    META_MERGE => {
        'meta-spec' => { version => 2 },
        license  => [ 'gpl_1' ],
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/wollmers/Image-Seek.git',
                web  => 'https://github.com/wollmers/Image-Seek',
            },
            homepage => 'https://github.com/wollmers/Image-Seek',
            bugtracker => {
                web => 'https://github.com/wollmers/Image-Seek/issues',
            },
        },
     },
);
if  (eval {require ExtUtils::Constant; 1}) {
  # If you edit these definitions to change the constants used by this module,
  # you will need to use the generated const-c.inc and const-xs.inc
  # files to replace their "fallback" counterparts before distributing your
  # changes.
  my @names = (qw());
  ExtUtils::Constant::WriteConstants(
                                     NAME         => 'Image::Seek',
                                     NAMES        => \@names,
                                     DEFAULT_TYPE => 'IV',
                                     C_FILE       => 'const-c.inc',
                                     XS_FILE      => 'const-xs.inc',
                                  );

}
else {
  use File::Copy;
  use File::Spec;
  foreach my $file ('const-c.inc', 'const-xs.inc') {
    my $fallback = File::Spec->catfile('fallback', $file);
    copy ($fallback, $file) or die "Can't copy $fallback to $file: $!";
  }
}
