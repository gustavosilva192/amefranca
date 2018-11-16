class ApplicationController < ActionController::Base
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
end
