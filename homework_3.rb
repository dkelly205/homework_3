# Section A

stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]


# Add "Edinburgh Waverley" to the end of the array
stops[-1] = "Edinburgh Waverley"
# p stops
# ["Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Edinburgh Waverley"]


# Add "Glasgow Queen St" to the start of the array
stops.insert(0, "Glasgow Queen St")
# p stops
# ["Glasgow Queen St", "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Edinburgh Waverley"]


# Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")
stops.insert(4, "Polmont")
# p stops
# ["Glasgow Queen St", "Croy", "Cumbernauld", "Falkirk High", "Polmont", "Linlithgow", "Livingston", "Edinburgh Waverley"]


# Work out the index position of "Linlithgow"
p stops.index("Linlithgow")
# 5

# Remove "Livingston" from the array using its name
stops.delete("Livingston")
p stops
# ["Glasgow Queen St", "Croy", "Cumbernauld", "Falkirk High", "Polmont", "Linlithgow", "Edinburgh Waverley"]

# Delete "Cumbernauld" from the array by index
p stops.index("Cumbernauld")
stops.delete_at(2)
p stops
# ["Glasgow Queen St", "Croy", "Falkirk High", "Polmont", "Linlithgow", "Edinburgh Waverley"]

# How many stops there are in the array?
p stops.count()
# 6


# How many ways can we return "Falkirk High" from the array?
p stops[2]
p stops[-4]
p stops.at(2)
p stops.at(-4)


# Reverse the positions of the stops in the array
p stops.reverse()
# ["Edinburgh Waverley", "Linlithgow", "Polmont", "Falkirk High", "Croy", "Glasgow Queen St"]


# Print out all the stops using a for loop
for every_stop in stops
  p every_stop
end








# Section B

users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        "fluffy" => :cat,
        "fido" => :dog,
        "spike" => :dog
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linlithgow",
      :pets => {
        "nemo" => :fish,
        "kevin" => :fish,
        "spike" => :dog,
        "rupert" => :parrot
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        "colin" => :snake
      }
    },
  }


#   Get Jonathan's Twitter handle (i.e. the string "jonnyt")
p users["Jonathan"][:twitter]

# Get Erik's hometown
p users["Erik"][:home_town]
# Linlithgow

# Get the array of Erik's favourite numbers
p users["Erik"][:favourite_numbers]
# [8, 12, 24]

# Get the type of Avril's pet Colin
p users["Avril"][:pets]["colin"]
# :snake


# Get the smallest of Erik's favourite numbers
p users["Erik"][:favourite_numbers][0]
# 8


# Add the number 7 to Erik's favourite numbers

p users["Erik"][:favourite_numbers] << 7

# Change Erik's hometown to Edinburgh

p users["Erik"][:home_town] = "Edinburgh"

# Add a pet dog to Erik called "Fluffy"
p users["Erik"][:pets]["fluffy"]= :dog
p users ["Erik"][:pets]


# Add yourself to the users hash
users["Danny"] = {
  :twitter => "dannyk",
  :favourite_numbers => [1, 7, 9, 10, 16],
  :home_town => "Glasgow",
  :pets => {
    "jack" => :dog,
    "darcie" => :dog
  }
}
p users




# Section C

united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  }, {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  }, {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]
# Change the capital of Wales from "Swansea" to "Cardiff".
united_kingdom[1][:capital] = "Cardiff"
p united_kingdom[1][:capital]

# Create a Hash for Northern Ireland and add it to the
 # united_kingdom array (The capital is Belfast, and the
 # population is 1,811,000).
united_kingdom[3] = {
  name: "Northern Ireland",
  population: 1811000,
  capital: "Belfast"
}
p united_kingdom
# p united_kingdom[3]

# Use a loop to print the names of all the countries in the UK.
for country_name in united_kingdom
  p country_name[:name]
end


# Use a loop to find the total population of the UK
total_population = 0
for total_pop in united_kingdom
  total_population += total_pop[:population]
end
p total_population
