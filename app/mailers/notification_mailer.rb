class NotificationMailer < ApplicationMailer
  default from: "suport.kai@gmail.com"

  def send_confirm_to_user(user)
    @user = user
    mail(
      subject: "購入完了のお知らせ",
      to: @user.email
      ) do |format|
        format.text
      end
  end


end
