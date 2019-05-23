class DailyNotifier < ApplicationMailer
  default from: 'ryofuji3@yahoo.co.jp'

  def notify
    mail(to: 'ryofuji3@yahoo.co.jp', subject: 'Welcom to Crossity!') do |format|
      format.text
    end
  end
end
