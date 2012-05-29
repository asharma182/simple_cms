class SubjectsController < ApplicationController

	layout 'admin'

	
	ob=SubjectsController.new
 
	def list
		@subjects = Subject.order("subjects.position ASC")
		
		
	end

	def show
		@subject = Subject.find(params[:id])
		@items=render('show')
	  
	end

	def new
		@subject = Subject.new(:visible => 'false')
		@subject_count = Subject.count + 1
	end

	def create 
		@subject = Subject.new(params[:subject])
		if @subject.save
			flash[:notice]= "Subject created"
			redirect_to(:action => 'list')
		else
			render('new')
		end
	end

	def delete
		@subject = Subject.find(params[:id])
	end

	def destroy
		@subject = Subject.find(params[:id])
		@subject.destroy
		flash[:notice] = "Subject destroyed."
		redirect_to(:action => 'list')
	end

	def edit
		@subject = Subject.find(params[:id])
	end

	def update
         @subject = Subject.find(params[:id])
		if @subject.update_attributes(params[:subject])
			flash[:notice] = "Subject updated."
			redirect_to(:action => 'show', :id => @subject.id)
		else
			render('edit')
		end
	end
	def javascript
	end

end
