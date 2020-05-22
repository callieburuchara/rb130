class Device
  def initialize
    @recordings = []
  end

  def listen
    record(yield) if block_given?
    # takes an optional block
    # If it takes a block, it stores the return value of the block into the
    # recordings instance variable.
    # Use `record` to accomplish this instead of setting it up again
  end

  def play
    puts @recordings.last
    # outputs last item in the recordings  
  end

  def record(recording)
    @recordings << recording
  end
end


listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"
