class PagesController < ApplicationController

	#Ausser für Startpage das Standardlayout festlegen
	layout "application", except: [:home]

  def home
  end

	def about
	end
	
	def contact
	end

end
