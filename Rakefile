require_relative './config/environment'
require 'sinatra/activerecord/rake'
require "active_record"

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

desc 'Summation of two numbers'
task :summation, [:num1, :num2] do |t, args|
    addition = args[:num1].to_i + args[:num2].to_i
    puts "Summation: #{addition}"
    puts "T IS: #{t}"
end

desc 'Update something something'
task :update_db do
    require_relative './app/run'
    rubyCourse = Course.find(2)
    rubyCourse.duration = 99
    rubyCourse.save
    pp Course.all
end



