#!/usr/bin/ruby
def sort_method(input)
sort = []
	input.each{ |k,v| sort.push(v)}
	sort.sort_by!{|hash| hash[:year_of_birth]}
	sort.each{|person| puts "#{person[:name].to_s} is a great peson born in #{person[:year_of_birth].to_i}"}
end
women_in_science = {
	:ada => { :name => "Ada Lovelace", :year_of_birth => "1815" },
	:cecilia => { :name => "Cecila Payne", :year_of_birth => "1900"},
	:lise => { :name => "Lise Meitner", :year_of_birth => "1878"},
	:grace => { :name => "Grace Hopper", :year_of_birth => "1906"}
}
sort_method(women_in_science)
