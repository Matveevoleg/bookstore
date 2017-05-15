module ApplicationHelper

	def all_categories
		Category.all
	end

	def check_class(key)
		case key
    		when 'notice' then 'success'
   			when 'alert' then 'warning'
    		else key
    	end
    end
end
