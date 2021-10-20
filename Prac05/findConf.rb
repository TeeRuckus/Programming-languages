#!/usr/bin/env ruby
require 'find'
#making sure that I only access my student id, change to the home directory of
#personnal machine
#outContents =  Dir["/home/19476700/**/*.conf*"]
#puts outContents

Find.find("/home/19476700/") { |f| puts f if  f.include? ".conf"}
