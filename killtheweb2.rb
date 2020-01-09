#!/usr/bin/env ruby

require "thor"


# This will run tests with random delays between each request.
# It will also ramp up RPS during certian hours and ramp down others to simulate load peaks
# It's best to run this in continuous mode

class Mjolnir < Thor
  
  desc "start TARGETS", "Start an assault against TARGETS (comma delimited list of target endpoints)"

  method_option :workers, :type => :numeric, :default => 12, :desc => "Number of workers"
  method_option :length, :type => :numeric, :default => 10000, :desc => "Length of assault"

  def start(args)
    
    @slider = 0.5
    @timer = 0
    targets = args.split(",")
    workers = options[:workers]

    if options[:length] == 0
      length = Float::INFINITY
    else
      length = options[:length]
    end
    
    puts "Workers: #{workers}"
    puts "Length: #{length}"

    puts "Starting a Mjölnir assault..."
  
 while length > 1 do
        print 
        system("curl -sSLw \"%{http_code} total_time=%{time_total} time_connect=%{time_connect} time_start=%{time_starttransfer} %{url_effective}\\n\" #{targets[0]} -o /dev/null")
        if Time.now.to_i - @timer.to_i > 300
          if (Time.now.strftime('%H').to_i/6).even?
            @slider = @slider + 0.01
            @timer = Time.now
          else
            @slider = @slider - 0.01
            @timer = Time.now.to_i
          end
        end
        if @slider < 0
          spike = rand() * 0.01
        else
          spike = rand() * @slider
        end
        puts "sleeping for #{spike}ms with a slider of #{@slider}"
        sleep(spike)
    end

    #after everything is done, just sleep the sleep of the victorious.
    #this is just to keep the process from crashing and getting restarted
    
    sleep

  end

end

Mjolnir.start
