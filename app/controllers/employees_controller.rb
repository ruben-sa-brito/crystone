class EmployeesController < ApplicationController
  def index
  end

  def create
    user = User.new(
    nome: params[:name],
    email: params[:email],
    role: "employee",
    password: params[:password],
    password_confirmation: params[:password_confirmation]
  )

    if user.save
      redirect_to employees_path
    else
      @user = user
      render :index, status: :unprocessable_entity
    end
  end
end
