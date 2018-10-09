class PagesController < ApplicationController
	def about
		@title = 'About stuff or Us';
		@content = 'This is some stuff about me. veni vidi vici verdom verdumb dominae. 
		  veni vidi vici verdom verdumb dominae. veni vidi vici verdom verdumb dominae. 
		  veni vidi vici verdom verdumb dominae. veni vidi vici verdom verdumb dominae. ';
		@moreContent = 'Here is some more content I decided to add.';
	end
end
