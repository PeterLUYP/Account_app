class JobsController < ApplicationController
	def index
		@jobs = Job.all
	end

	def new
		@job = Job.new
	end

	def create
		p "In the create method!!!!!!"
		Job.create(job_params)
		p job
		redirect_to jobs_path
	end

	private

	def job_params
		params.require(:job).permit(:title, :description)
	end

	def edit
		@job = Job.find(params[:id])
	end

	def update
		@job = Job.find(params[:id])
		@job.update_attibutes(job_params)
		redirect_to jobs_path
	end


end
