Shoebrand.create(:brand => "Asics")
Shoebrand.create(:brand => "Adidas")
Shoebrand.create(:brand => "Puma")
Shoebrand.create(:brand => "Brooks")
Shoebrand.create(:brand => "Mizuno")
Shoebrand.create(:brand => "Nike")

User.create(:email => "chessmaster@t-online.de", :nickname => "Perry Rhodan", :password => "artec", :password_confirmation => "artec" )
User.create(:email => "tgk123@yahoo.com", :nickname => "Tom", :password => "artec", :password_confirmation => "artec" )

Shoe.create(:brand => "Asics", :description => "GT-2130")
Shoe.create(:brand => "Adidas", :description => "GT-2170")
Shoe.create(:brand => "Puma", :description => "Supernova Cushion 6")
Shoe.create(:brand => "Brooks", :description => "Adrenaline 11")
Shoe.create(:brand => "Mizuno", :description => "Wave Inspire 7")
Shoe.create(:brand => "Nike", :description => "Free 3.1")

Run.create( :distance => "10.3", :user_id => 1, :run_at => "2011-05-05", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "1000", :shoe_id => 2 )
