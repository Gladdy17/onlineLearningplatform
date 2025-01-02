class ExamsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @exam = Exam.new
  end

end
