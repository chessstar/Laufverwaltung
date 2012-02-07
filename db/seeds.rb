Run.create( :distance => "10.3", :shoe => "Asics", :user_id => 1, :run_at => "2011-05-05", :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "1000" )
Run.create( :distance => "20", :shoe => "Asics", :user_id => 1, :run_at => "2011-05-05", :run_hours => 2, :run_minutes => 25, :run_seconds => 13, :runtime_in_seconds => "1000" )
Run.create( :distance => "30", :shoe => "Asics", :user_id => 1, :run_at => "2011-07-05" , :run_hours => 0, :run_minutes => 44, :run_seconds => 55, :runtime_in_seconds => "1000")
Run.create( :distance => "40", :shoe => "Puma", :user_id => 2, :run_at => "2011-05-05" , :run_hours => 0, :run_minutes => 22, :run_seconds => 33, :runtime_in_seconds => "1000")
Run.create( :distance => "5.5", :shoe => "Puma", :user_id => 2, :run_at => "2011-06-06" , :run_hours => 1, :run_minutes => 45, :run_seconds => 33, :runtime_in_seconds => "1000")
User.create(:email => "chessmaster@t-online.de", :nickname => "Perry Rhodan", :password => "artec", :password_confirmation => "artec" )
User.create(:email => "tgk123@yahoo.com", :nickname => "Tom", :password => "artec", :password_confirmation => "artec" )
