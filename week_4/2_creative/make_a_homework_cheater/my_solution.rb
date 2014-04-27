# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

def essay_writer(title, topic, date, thesis_statment)
  print topic + " is an important person in " + date.to_s + ". His resume speaks for himself." + thesis_statment + " As you can see, we all should recognize " + topic + " for all of his accomplishments."
end


# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE


describe 'essay_writer' do
	let(:arrayA) {["Best Rb in NFL","Adrian Peterson", 2013, "Adrian Peterson has the size, tenacity and speed to make you smile.", male ]}
	let(:arrayB) {["Best Basketball Coach in the Big 10", "Richard Pitino", 2014, "Coach Pitino is the best up and coming coach in college basketball", male]}
	let(:arrayC) {["Best PF in the NBA", "Kevin Love", 2014, "Kevin Love's combination of an outside shot, interior post moves, and rebounding makes him the top power forward in the world", male]}

it 'is defined as a method' do
	defined?(essay_writer).should eq 'method'
end
it 'returns "A" when the average is >= 90' do
    get_grade(arrayA).should eq "A"
  end
  it 'returns "B" when the average is >= 80' do 
    get_grade(arrayB).should eq "B"
  end
  it 'returns "C" when the average is >= 70' do
    get_grade(arrayC).should eq "C"
  end
	




# 5. Reflection 


