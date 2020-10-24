# Write your code here.

# write a badgemaker method that, when provided a person's name, will create & return this message.
def badge_maker(name)
    "Hello, my name is #{name}."
end



attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

# define a method which takes in, as an argument, an array of names & returns an array of badge messages.
def batch_badge_creator(attendees)
    batch_badge_creator = []
    attendees.each do |name|
        batch_badge_creator << "Hello, my name is #{name}."
    end
    batch_badge_creator
end



# write a method called assign_rooms that takes the list of speakers & assigns each speaker to a room. 
# Make sure that each room only has one speaker. You have rooms 1-7. 
# Return a list of room assignments in the form of "Hello, ____! You'll be assigned to room ____!"
# Hint: Think about how you will assign a room number to each person. Array items are indexed, meaning
# you can access each element by its index number. When you are iterating through an array, you can
# keep track of the index number of the current iteration using an enumerator method called
# each_with_index. 
# Hint: Remember that the return value of the each method is the original array that you are calling on it.
# How can you collect or store the room assignment strings you are creating as you iterate & return them
# at the end of your assign_rooms method? Google or Ruby Docs to find the correct method. 


def assign_rooms(attendees)
    assign_rooms = []
    attendees.each_with_index do |name, number| 
        assign_rooms << "Hello, #{name}! You'll be assigned to room #{number + 1}!"
    end
    assign_rooms
end

# Now you have to tell the printer what to print. Create a method called printer that will output
# first the results of the batch_badge_creator method & then of the assign_rooms method to the screen.
# Hint: remember that methods can call other methods. If the return value of assign_rooms is an array
# of room assignments, how can you print out each assignment? You'll need to iterate over your array of
# room assignments in order to puts out each individual assignment. 


def printer(attendees)
  array_of_badges = batch_badge_creator(attendees)
    array_of_badges.each do |badge|
      puts "#{badge}"
    end
  array_of_rooms = assign_rooms(attendees)
    array_of_rooms.each do |room|
      puts "#{room}"
    end
end



