class CasesController < ApplicationController
    def index
        @cases = @user.cases
        render json: @cases
    end

    def create
        @case = Case.create(case_params)
        if @case.valid?
            UserCase.create(user_id: @user.id, case_id: @case.id)
            render json: { case: CaseSerializer.new(@case) }, status: :created
        else
            render json: { message: "Failed to create CASE" }, status: :not_created
        end

    end

    def destroy
        @case = Case.find(params['id'])
        @case.destroy
        render json: { message: "DESTROY!", params: params }
    end
 
    private
    def case_params
      params.require(:case).permit(:fullname, :location, :description)
    end
end
