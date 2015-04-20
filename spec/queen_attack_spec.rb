require('rspec')
require('queen_attack')

describe('Array#queen_attack?') do
  it('is false if the coordinates are not horizontally, veritcally or diagonally in line with each other') do
    expect([1,1].queen_attack?([2,3])).to(eq(false))
  end

  it('is true if horizonatally in line with each other') do
    expect([2,3].queen_attack?([4,3])).to(eq(true))
  end

  it('is true if vertically in line with each other') do
    expect([3,4].queen_attack?([3,8])).to(eq(true))
  end

  it('is true if diagnonally in line with each other') do
    expect([5,4].queen_attack?([4,3])).to(eq(true))
  end
end
