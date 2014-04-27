require_relative 'my_solution'

def total(array)
  sum = 0
  i = 0
  while array[i] 
  sum += array[i]
  i += 1
  end
  return sum
end

def get_grade(array)
  average = total(array) / array.length
  if average >= 90
    return "A"
  elsif average >=80
    return "B"
  elsif average >=70
    return "C"
  elsif average >= 60
    return "D"
  else 
    return "F"
  end
end
    

describe 'get_grade' do
  let(:arrayA) { [100,90,100,99,99]}
  let(:arrayB) { [80,90,80,89,98]}
  let(:arrayC) { [70,80,70,79]}
  let(:arrayD) { [60,67,70,63]}
  let(:arrayF) { [50,40,0,99,9]}
  
  it 'is defined as a method' do
    defined?(get_grade).should eq 'method'
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
  it 'returns "D" when the average is >= 60' do
    get_grade(arrayD).should eq "D"
  end
  it 'returns "F" when the average is < 60' do
    get_grade(arrayF).should eq "F"
  end
  
end