#!/usr/bin/env ruby

file_path_name = File.expand_path('../../lib/file_launcher', __FILE__)
require file_path_name

puts "Enter a file name to launch it"
file_name = gets.chomp
file_launcher = FileLauncher.new({
  vlc: ['webm', 'mp4', 'mp3'],
  gedit: ['txt'],
  subl: ['css', 'erb', 'html', 'java', 'js', 'php', 'rb', 'scss'],
  eog: ['gif', 'jpg', 'jpeg', 'png']
})

file_launcher.launch file_name
