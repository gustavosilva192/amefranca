class Contact < MailForm::Base
	attribute :name,		:validate 	=> true
	attribute :message,		:validate	=> true
	attribute :telefone,	:validate	=> false
	attribute :nickname,	:captcha	=> true
	attribute :tipo,		:validate	=> false

	def headers
		{
		:subject => "Contato Site Ame-Franca",
		:to => "ouvidoria@amefranca.com.br",
		:from => "sau@amefranca.com.br"
		}
	end
end