
User.create(:email => "chessmaster@t-online.de", :nickname => "Perry Rhodan", :password => "artec", :password_confirmation => "artec" )
User.create(:email => "tgk123@yahoo.com", :nickname => "Tom", :password => "artec", :password_confirmation => "artec" )

Shoe.create(:brand => "Asics", :description => "GT-2130", :user_id => 1, :fullname => 'Asics GT-2130')
Shoe.create(:brand => "Asics", :description => "GT-2170", :user_id => 1, :fullname => 'Asics GT-2170')
Shoe.create(:brand => "Puma", :description => "Supernova Cushion 6", :user_id => 1, :fullname => 'Puma Supernova Cushion 6')
Shoe.create(:brand => "Brooks", :description => "Adrenaline 11", :user_id => 1, :fullname => 'Brooks Adrenaline 11')
Shoe.create(:brand => "Mizuno", :description => "Wave Inspire 7", :user_id => 2, :fullname => 'Mizuno Wave Inspire 7')
Shoe.create(:brand => "Nike", :description => "Free 3.1", :user_id => 2, :fullname => 'Nike Free 3.1')

Run.create( :distance => "10.3", :user_id => 1, :run_at => "2011-05-05", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "1000", :shoe_id => 2 )
Run.create( :distance => "20.3", :user_id => 1, :run_at => "2012-01-01", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "7000", :shoe_id => 1 )
Run.create( :distance => "10.3", :user_id => 1, :run_at => "2011-12-12", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "1000", :shoe_id => 3 )
Run.create( :distance => "20.3", :user_id => 1, :run_at => "2012-01-01", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "7000", :shoe_id => 1 )
Run.create( :distance => "10.3", :user_id => 1, :run_at => "2011-05-05", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "1000", :shoe_id => 2 )
Run.create( :distance => "20.3", :user_id => 1, :run_at => "2012-01-01", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "7000", :shoe_id => 1 )
Run.create( :distance => "10.3", :user_id => 1, :run_at => "2011-12-12", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "1000", :shoe_id => 3 )
Run.create( :distance => "20.3", :user_id => 1, :run_at => "2012-01-01", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "7000", :shoe_id => 1 )
Run.create( :distance => "10.3", :user_id => 1, :run_at => "2011-05-05", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "1000", :shoe_id => 2 )
Run.create( :distance => "20.3", :user_id => 1, :run_at => "2012-01-01", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "7000", :shoe_id => 1 )
Run.create( :distance => "10.3", :user_id => 1, :run_at => "2011-12-12", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "1000", :shoe_id => 3 )
Run.create( :distance => "20.3", :user_id => 1, :run_at => "2012-01-01", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "7000", :shoe_id => 1 )
Run.create( :distance => "10.3", :user_id => 2, :run_at => "2011-05-05", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "1000", :shoe_id => 5 )
Run.create( :distance => "20.3", :user_id => 2, :run_at => "2012-01-01", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "7000", :shoe_id => 5 )
Run.create( :distance => "10.3", :user_id => 2, :run_at => "2011-12-12", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "1000", :shoe_id => 5 )
Run.create( :distance => "20.3", :user_id => 2, :run_at => "2012-01-01", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "7000", :shoe_id => 6 )
