#!/usr/bin/env ruby

@conts = []

def clean
  @conts.each do |c|
    system "docker rm -f -v #{c}"
  end
exit
end

trap ("SIGINT") {
clean
}

24.times do |i|
puts i
name = "cont-#{i}"
system "docker rm -f -v #{name}"
system "docker create -v `pwd`:/workspace --name #{name} ubuntu:18.04 /workspace/run.sh"
system "docker start #{name}"
@conts << name
end

sleep 10000000000000000

clean
