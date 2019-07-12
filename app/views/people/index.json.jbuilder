json.people @people.each do |person|
    json.firstname person.firstname
    json.lastname person.lastname
    json.ascii person.ascii
    json.binary person.binary
    json.zeros person.zeros
end