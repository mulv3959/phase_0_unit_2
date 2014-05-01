# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(labels)
    unless labels.length > 0
      raise ArgumentError.new("Need more sides")
    end
    @labels = labels
  end

  def sides
    return @labels.length
  end

  def roll
    @labels.sample
  end
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE


describe Die do
  describe '#initialize' do
    it 'expects a single argument' do
      Die.instance_method(:initialize).arity.should eq 1
    end

    it 'raises an ArgumentError if list of labels is empty' do
      expect {
        Die.new([])
      }.to raise_error(ArgumentError)
    end
  end

  describe '#sides' do
    it 'expects no arguments' do
      Die.instance_method(:sides).arity.should be_zero
    end

    it 'returns the number of sides given on initialization' do
      length = 1 + rand(100)
      sides = Array.new(length) { 'A' }
      die = Die.new(sides)

      die.sides.should eq length
    end
  end


  describe '#roll' do
    it 'expects no arguments' do
      Die.instance_method(:roll).arity.should be_zero
    end

    it 'returns a single letter if one label is passed in' do
      random_letter = ('A'..'Z').to_a[rand(26)]
      die = Die.new([random_letter])

      Array.new(100) { die.roll }.should eq Array.new(100) { random_letter }
    end

    it 'returns every possible letter for a sufficiently large number of rolls' do
      possible_values = ('A'..'Z').to_a.shuffle.first(15)

      die = Die.new(possible_values)

      output = Array.new(10000) { die.roll }.uniq

      output.sort.should eq possible_values.sort
    end
  end
end



# 5. Reflection 
