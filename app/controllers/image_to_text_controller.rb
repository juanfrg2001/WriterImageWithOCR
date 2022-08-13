class ImageToTextController < ApplicationController

    skip_before_action :verify_authenticity_token

    def create
        @image_text = ImageToText.image_text("app/assets/images/prueba1.jpg")
        render :json => { 
            :text => @image_text,
        }.to_json
    end

end
