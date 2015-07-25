class CoachNotifier < ActionMailer::Base
  default from: "bom_de_bola@hackercidadao.com.br"

  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
          :subject => 'Bem vindo #{@user.name}!' )
  end
end
