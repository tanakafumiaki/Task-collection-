class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  around_action :switch_locale
  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end
  # def switch_locale(&action)
  #   locale = current_user.try(:locale) || I18n.default_locale
  #   I18n.with_locale(locale, &action)
  # end
  # トップレベルドメインからロケールを取得する、なければ+nil+を返す
  # この動作をローカルPCで行なうためには、
  #   127.0.0.1 application.com
  #   127.0.0.1 application.it
  #   127.0.0.1 application.pl
  # /etc/hosts上のように記述する必要がある
  # def extract_locale_from_tld
  #   parsed_locale = request.host.split('.').last
  #   I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  # end

  # リクエストのサブドメインからロケールを取り出す (http://it.application.local:3000のような形式)
  # この動作をローカルPCで行なうためには
  #   127.0.0.1 gr.application.local
  # /etc/hostsファイルに上のように記述する必要がある
  # def extract_locale_from_subdomain
  #   parsed_locale = request.subdomains.first
  #   I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  # end
end
