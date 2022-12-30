class ParentAuthController < ApplicationController
    skip_before_action :authorize, only: [:create]

    def create
        parent = Parent.find_by(phone_number: params[:phone_number])
        if parent && parent.authenticate(params[:password])
            token = encode_token({parent_id: parent.id})
            render json: [ParentSerializer.new(parent), {jwt: token}], status: :accepted
        else
            render json: {error: "Invalid password or username"}, status: :unauthorized
        end
    end
end


