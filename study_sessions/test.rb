# Let's ignore for now how Ruby actually works.
# Just focus on this one example of Ruby's behaviour.

# In this example, Ruby behaves as if it is pass-by-value:
def change_name(name)
  name = 'alice'
end

my_name = 'bob'
change_name(my_name)
puts my_name
# Output: bob