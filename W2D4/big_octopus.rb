def quadratic_biggest_fish(array)
  array.each_with_index do |fish1, i|
    biggest = true
    array.each_with_index do |fish2, j|
      next if i == j
      biggest = false if fish2.length > fish1.length
    end
    return fish1 if biggest
  end
end

def merge_sort(array)
  return array if array.length <= 1

  midpoint = array.length / 2
  left = merge_sort(array.take(midpoint))
  right = merge_sort(array.drop(midpoint))

  merge(left, right)
end

def merge(left, right)
  sorted = []

  until left.empty? || right.empty?
    case left.first.length <=> right.first.length
    when -1
      sorted << left.shift
    when 0
      sorted << left.shift
    when 1
      sorted << right.shift
    end
  end

  sorted + left + right
end

def nlogn_biggest_fish(array)
  merge_sort(array).last
end

def linear_biggest_fish(array)
  biggest_fish = array.first

  array.each do |fish|
    if fish.length > biggest_fish.length
      biggest_fish = fish
    end
  end

  biggest_fish
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, index|
    return index if tile == direction
  end
end

tiles_to_tentacle = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def fast_dance(direction, tiles_to_tentacle)
  tiles_to_tentacle[direction]
end

# Basic test cases to confirm everything works. 

if __FILE__ == $PROGRAM_NAME
  array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
  p quadratic_biggest_fish(array) == 'fiiiissshhhhhh'
  p nlogn_biggest_fish(array) == 'fiiiissshhhhhh'
  p linear_biggest_fish(array) == 'fiiiissshhhhhh'

  tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
  p slow_dance("up", tiles_array) == 0
  p slow_dance("right-down", tiles_array) == 3
  p slow_dance("left-up", tiles_array) == 7
  p slow_dance("down", tiles_array) == 4

  tiles_to_tentacle = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
  }

  p fast_dance("up", tiles_to_tentacle) == 0
  p fast_dance("right-down", tiles_to_tentacle) == 3
  p fast_dance("left-up", tiles_to_tentacle) == 7
  p fast_dance("down", tiles_to_tentacle) == 4
end
