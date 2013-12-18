require 'rake'

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['*.symlink'].each do |file|
    #next if %w[Rakefile README LICENSE id_dsa.pub].include? file
   link_file = file.chomp('.symlink') 
    if File.exist?(File.join(ENV['HOME'], ".#{link_file}"))
      if replace_all
        replace_file(file, link_file)
      else
        print "overwrite ~/.#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file, link_file)
        when 'y'
          replace_file(file, link_file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file}"
        end
      end
    else
      link_file(file, link_file)
    end
  end

  # Handle ssh pubkey on its own
  #puts "Linking public ssh key"
  #system %Q{rm "$HOME/.ssh/id_dsa.pub"}
  #system %Q{ln -s "$PWD/id_dsa.pub" "$HOME/.ssh/id_dsa.pub"}

  # Need to do this to make vim use RVM's ruby version
  #puts "Moving zshenv to zshrc"
  #system %Q{sudo mv /etc/zshenv /etc/zshrc}

  system %Q{mkdir ~/.tmp}
end

def replace_file(file, link_file)
  system %Q{rm "$HOME/.#{link_file}"}
  link_file(file, link_file)
end

def link_file(file, link_file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{link_file}"}
end
