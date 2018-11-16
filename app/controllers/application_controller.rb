class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  helper_method :current_user 

	def pdf
    pdf_filename = File.join(Rails.root, "app/assets/teste.pdf")
    send_file(pdf_filename, :filename => "teste.pdf",:disposition => 'inline', :type => "application/pdf")
  end

  def pdff
    path = "app/assets/#{params[:filename]}"
    modo = "#{params[:disposition]}"
    send_file( path,
    :disposition => modo,
    :type => 'application/pdf',
    :x_sendfile => true )
  end 

  def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end
    
  def require_user 
    redirect_to '/login' unless current_user 
  end
  
end
