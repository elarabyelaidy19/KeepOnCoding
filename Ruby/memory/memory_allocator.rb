class MemoryManager
  attr_accessor :total_memory, :allocated_memory

  def initialize(total_memory)
    @total_memory = total_memory
    @allocated_memory = {}
  end

  def allocate(size)
    address = find_free_block(size)
    if address
      allocated_memory[address] = size
      address
    else
      puts "Memory allocation failed. No suitable block found for size #{size}."
      nil
    end
  end

  def deallocate(address)
    if allocated_memory.key?(address)
      size = allocated_memory[address]
      allocated_memory.delete(address)
      puts "Deallocated #{size} units of memory at address #{address}."
    else
      puts "Memory deallocation failed. Block not found at address #{address}."
    end
  end

  def display_memory
    puts "Total Memory: #{total_memory} units"
    puts "Allocated Memory:"
    allocated_memory.each do |address, size|
      puts "  Address: #{address}, Size: #{size} units"
    end
  end

  private

  def find_free_block(size)
    start_address = 0
    end_address = total_memory - 1
    current_address = start_address

    while current_address <= end_address
      if allocated_memory.key?(current_address)
        current_address = allocated_memory.keys.max + 1
      else
        block_size = 0
        
        while current_address + block_size <= end_address && !allocated_memory.key?(current_address + block_size)
          block_size += 1
        end

        return current_address if block_size >= size

        current_address += block_size
      end
    end

    nil
  end
end

# Example Usage
memory_manager = MemoryManager.new(100)

address1 = memory_manager.allocate(20)
address2 = memory_manager.allocate(30)

memory_manager.display_memory

memory_manager.deallocate(address1)
# memory_manager.find_free_block(10)
memory_manager.display_memory
