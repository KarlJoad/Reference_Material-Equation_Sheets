# Defining an associative array
%salaries = ("Gary" => 75000, "Perry" => 57000, "Mary" => 55750);

# Switch from % for hash to $ for single values in the hash
# That should be a dollar sign, not a Stirling Pound symbol

# Changing a value in the associative array
$salaries{"Perry"} = 58850;

# Removing a key-value pair from the associative array
delete $salaries{"Gary"};
