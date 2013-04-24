#!/usr/bin/env ruby

@targets = ARGV

#After some expermentation, 12 forks seems to be optimal. Much more runs up the load on the dyno and 
# just slows the entire thing down.
# Needs a little bit more testing, and it should settle between 12 and 14 forks.
# I need to normalize away diffrences in dyno preformamce by running multi-dyno tests
# I've seen some very stark diffrences between dynos (~ 500 RPM diffrences in preformance)

12.times do
    fork do
      10000.times do
        @targets.each do |t|
          # to insure a rate, why not fork here as well, with a sleep after the fork?
          #fork do
          system("curl -sSLw \"%{http_code} total_time=%{time_total} time_connect=%{time_connect} time_start=%{time_starttransfer} %{url_effective}\\n\" #{t} -o /dev/null")
          #end
          #sleep 0.1 should give us 10 requests per second per main fork
      end
    end
  end
end


#after everything is done, just sleep the sleep of the victorious.
i = 100

while i < 200 do
  sleep
end
