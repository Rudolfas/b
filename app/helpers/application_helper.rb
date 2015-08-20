module ApplicationHelper

	def title
		base_title="IIPP"
		if @title.nil?
			base_title
		#elsif @title
			#{}"#{@title}"
			
	    else
	    	"#{base_title}|#{@title}"
	    end
	end
end
