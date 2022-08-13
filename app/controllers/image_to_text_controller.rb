class ImageToTextController < ApplicationController

    skip_before_action :verify_authenticity_token

    def create
        image_url = params[:image_url]
        if image_url.present?
            @image_text = ImageToText.image_text(image_url)
        else
            @image_text = "Texto"
        end
        render :json => { 
            :text => @image_text,
        }.to_json
    end

end
