class ImageToTextController < ApplicationController

    skip_before_action :verify_authenticity_token

    def create
        encoded64_image = params[:encoded64_image]
        if encoded64_image.present?
            @image_text = ImageToText.image_text(encoded64_image)
        else
            @image_text = "encoded64_image parameter not found"
        end
        respond_to do |format|
            format.json { render :json => { :text => @image_text }.to_json  }
        end
    end

end
