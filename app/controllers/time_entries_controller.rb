class TimeEntriesController < ApplicationController

  def index
    @my_project = Project.find(params[:project_id])
    @my_entries = @my_project.time_entries.where('created_at > ?', 1.month.ago.end_of_month) #Update the entries page to display only the entries of this month 
  end
end
