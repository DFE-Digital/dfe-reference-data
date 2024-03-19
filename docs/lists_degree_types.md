# Degree Types

This document provides a list of degree types.

## List of Degree Types

The `degree_types` file contains the following degree types:

1. Bachelor's Degree
2. Master's Degree
3. Doctoral Degree
4. Associate Degree
5. Professional Degree
6. Other

## Usage

The `degree_types` file can be used to validate the degree type input from the user. It can also be used to populate a dropdown list for degree type selection in a form.

## Example

Here's an example of how you can use the `degree_types` file:

```ruby
# Access the MAPPING constant from the DegreeTypes module
mapping = DegreeTypes::MAPPING

# Get a degree type based on a key
uuid = 'db695652-c197-e711-80d8-005056ac45bb'
degree_type = mapping[uuid]

# Print the degree type
puts "Degree type for key #{uuid}: #{degree_type}"

# Iterate over the MAPPING hash
mapping.each do |key, degree_type|
  puts "Key: #{key}, Degree Type: #{degree_type}"
end
