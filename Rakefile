# require_relative './config/environment'
# require 'sinatra/activerecord/rake'

# CREATE TASK WITHOUT DESCRIPTION
task :hello_world do
    puts "Hello World"
end

# CREATE TASK WITH DESCRIPTION
desc 'Find .01% of 14M'
task :complex_math do
    output = (0.01/100) * 14000000
    puts output
end

# ORGANIZE TASKS IN NAMESPACES
namespace :math_concepts do
    desc 'Find addition'
    task :add, [:num1, :num2] do
        puts "Addition: #{num1}, #{num2}"
    end 

    desc 'Find subtraction'
    task :sub do
        puts "Subtraction"
    end

    desc 'Find division'
    task :div do
        puts "Division"
    end
end