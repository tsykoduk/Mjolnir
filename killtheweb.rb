#!/usr/bin/env ruby

@targets = ARGV


20.times do
    fork do
      100.times do
        @targets.each do |t|
          system("curl -sSLw \"%{http_code} total_time=%{time_total} time_connect=%{time_connect} time_start=%{time_starttransfer} %{url_effective}\\n\" #{t} -o /dev/null")
          #puts " #{Process.pid} curl -sSLw \"%{http_code} total_time=%{time_total} time_connect=%{time_connect} time_start=%{time_starttransfer} speed=%{speed_download} %{url_effective}\\n\" #{t} -o /dev/null"
        end
    end
  end
end


i = 100

while i < 200 do
  sleep
end