require 'rspec'
require 'triangles'

describe Triangles do
  it 'is initialized with three sides' do
    test_triangles = Triangles.new(4,4,4)
    test_triangles.should be_an_instance_of Triangles
  end

  it 'is a valid triangle' do
    test_triangles = Triangles.new(4,4,8)
    test_triangles.valid.should eq 'Not a triangle'
  end

  it 'is an equilateral triangle if all three sides are equal' do
    test_triangles = Triangles.new(4,4,4)
    test_triangles.type.should eq 'equilateral'
  end

  it 'is an isosceles triangle if only two sides are equal' do
    test_triangles = Triangles.new(4,4,3)
    test_triangles.type.should eq 'isosceles'
  end

  it 'is a scalene triangle if no sides are equal' do
    test_triangles = Triangles.new(3,4,5)
    test_triangles.type.should eq 'scalene'
  end

end



# 1)Create a Triangle class.
#1a)check to make sure it is a valid triangle
# 2)Make a method in Triangle that tells what type of triangle it is.
# 3)Build a program that uses this Triangle model to let users enter 3
#   values for the sides and find out what type of triangle it is.
