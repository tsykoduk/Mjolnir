#!/usr/bin/env ruby

@targets = ARGV


30.times do
    fork do
      1000.times do
        @targets.each do |t|
          system("curl -sSLw \"%{http_code} total_time=%{time_total} time_connect=%{time_connect} time_start=%{time_starttransfer} %{url_effective}\\n\" #{t} -o /dev/null")
      end
    end
  end
  puts "run completed"
end


#after everything is done, just sleep the sleep of the victorious.
i = 100

while i < 200 do
  sleep
end
