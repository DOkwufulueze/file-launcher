#!/usr/bin/env ruby

class FileLauncher
  def initialize application_hash
    @application_hash = application_hash
  end

  def launch file_name
    application = get_application_for file_name
    system "#{application} '#{file_name}'"
  end

  def get_application_for file_name
    file_type = get_file_type_of file_name
    keyValueSearchArray = (@application_hash.find { |k, v| v.include? (file_type) })
    if keyValueSearchArray
      keyValueSearchArray[0].to_s
    else
      puts "File type is not recognised by file_launcher"
    end
  end

  def get_file_type_of file_name
    File.extname(file_name).gsub(/^\./, '').downcase
  end
end
