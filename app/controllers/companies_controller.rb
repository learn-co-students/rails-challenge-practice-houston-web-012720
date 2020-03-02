class CompaniesController < ApplicationController

    def show
        @company = Company.find(params[:id])
        @offices = Office.all
        @employees = Employee.all
    end
end