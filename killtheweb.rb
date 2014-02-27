#!/usr/bin/env ruby

@targets = ARGV

# After some expermentation, 12 forks seems to be optimal. Much more runs up the load on the dyno and
# just slows the entire thing down.
# Needs a little bit more testing, and it should settle between 12 and 14 forks.
# I need to normalize away diffrences in dyno preformamce by running multi-dyno tests
# I've seen some very stark diffrences between dynos (~ 1000 RPM diffrences in preformance)

12.times do
    fork do
      10000000.times do
        @targets.each do |t|
          system("curl -sSLw \"%{http_code} total_time=%{time_total} time_connect=%{time_connect} time_start=%{time_starttransfer} %{url_effective}\\n\" #{t} -o /dev/null")
      end
    end
  end
end

#after everything is done, just sleep the sleep of the victorious.
#this is just to keep the process from crashing and getting restarted

i = 100

while i < 200 do
  sleep
end
