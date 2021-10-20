#!/usr/bin/env ruby
require 'find'

current_directory = Dir.pwd
save_location = current_directory + "/out_ruby.file"


#making sure that I only access my student id, change to the home directory of
#personnal machine
#outContents =  Dir["/home/19476700/**/*.conf*"]
#puts outContents

Find.find("/home/19476700/") { |f| puts f }

def write_file(name)
end


def read_file(name)
    file = File.open(name)
    #removing the new line characters from the lines whcih have being read
    fileContnets = file.readlines.map(&:chomp)
    file.close

    return  fileContnets
end

def printList(inList)
    inList.each{|ii| puts ii}
end

