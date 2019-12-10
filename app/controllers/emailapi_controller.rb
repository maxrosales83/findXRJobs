class EmailapiController < ApplicationController
 def subscribe
  @list_id = ENV["MAILCHIMP_LIST_ID"]
    gibbon = Gibbon::Request.new
  
    gibbon.lists(@list_id).members.create(
      body: {
        email_address: params[:email][:address],
        status: "subscribed"
      }
    )

    respond_to do |format|
    format.html {redirect_to root_path}
    flash[:alert] = "Subscribed!"
    #flash.keep(:alert) # Keep flash notice around for the redirect.
    format.js {render :js => "window.location.href='"+root_path+"'"} 
  end
 end
end

