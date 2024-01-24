# Preview all emails at http://localhost:3000/rails/mailers/usermail_mailer
class UsermailMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/usermail_mailer/respond
  def respond
    UsermailMailer.respond
  end

end
