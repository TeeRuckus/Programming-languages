#!usr/bin/perl
use warnings;
use File::Find;

# recursively searching all the files found in my home directory, change s
#search path to home machine

my $searchPath = "/home/19476700/";
my $fileFind = ".conf";
find(\&filesWanted, $searchPath);



sub filesWanted {
    #print "$File::Find::name\n if $File::Find::name =~ /Prac01/";
    my $currDirectory = $File::Find::name;
    #print "$File::Find::name\n" if  index(File::Find::name $fileFind) != -1;
    print "$currDirectory\n" if (index($currDirectory, $fileFind) != -1)
}

