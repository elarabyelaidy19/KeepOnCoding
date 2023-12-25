# Ruby Example
child_pid = Process.fork do
  shared_data = "This is shared"
  puts "Child Process: #{shared_data}"
  # Modification triggers copy-on-write
  shared_data << " and modified by the child"
  puts "Child Process Modified: #{shared_data}"
end

Process.wait(child_pid)
# Parent process continues with the original shared_data
puts "Parent Process: #{shared_data}"
