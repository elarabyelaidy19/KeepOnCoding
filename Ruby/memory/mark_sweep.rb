class CustomObject
  attr_accessor :reachable, :references

  def initialize
    @reachable = false
    @references = []
  end

  def add_reference(object)
    references << object
  end

  def mark
    return if reachable

    @reachable = true
    references.each(&:mark)
  end

  def to_s
    "Object-#{object_id}"
  end
end

class GarbageCollector
  attr_accessor :objects, :root_set

  def initialize
    @objects = []
    @root_set = []
  end

  def allocate_object
    object = CustomObject.new
    objects << object
    object
  end

  def build_reference_graph
    # Simulate object references
    root_set.each { |root| root.add_reference(objects.sample) }
    objects.each { |object| object.add_reference(objects.sample) }
  end

  def mark_and_sweep
    mark
    sweep
  end

  private

  def mark
    puts "Marking reachable objects..."
    root_set.each(&:mark)
  end

  def sweep
    puts "Sweeping unreachable objects..."
    objects.reject! { |object| !object.reachable }
  end
end

# Example Usage
garbage_collector = GarbageCollector.new

# Allocate some objects
object1 = garbage_collector.allocate_object
object2 = garbage_collector.allocate_object
object3 = garbage_collector.allocate_object

# Add objects to the root set
garbage_collector.root_set << object1 << object2

# Build reference graph
garbage_collector.build_reference_graph

# Mark and Sweep
garbage_collector.mark_and_sweep

# Display the state after Mark and Sweep
puts "State after Mark and Sweep:"
puts "Root Set: #{garbage_collector.root_set.map(&:to_s).join(', ')}"
puts "Objects: #{garbage_collector.objects.map(&:to_s).join(', ')}"
