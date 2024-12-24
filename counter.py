class UpCounter:
    def __init__(self):
        self.count = 0  # Initialize count to 0

    def reset(self):
        """Reset the counter to zero."""
        self.count = 0

    def increment(self):
        """Increment the counter."""
        if self.count < 255:  # Maximum value for an 8-bit counter
            self.count += 1

    def run(self, enable, reset):
        """Run the counter based on enable and reset signals."""
        if reset:
            self.reset()
        elif enable:
            self.increment()

# Example Usage
if __name__ == "__main__":
    counter = UpCounter()

    # Simulate some clock cycles
    for i in range(10):
        print(f"Cycle {i + 1}: Count = {counter.count}")
        
        if i == 5:  # Reset at cycle 5
            counter.run(enable=False, reset=True)
        else:
            counter.run(enable=True, reset=False)

    print(f"Final count: {counter.count}")
