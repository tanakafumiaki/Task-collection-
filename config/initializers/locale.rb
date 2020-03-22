# # I18nライブラリに訳文の探索場所を指示する
# I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]
#
# # アプリケーションでの利用を許可するロケールをホワイトリスト化する
# I18n.available_locales = [:en, :pt]
#
# # ロケールを:en以外に変更する
# I18n.default_locale = :pt

I18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
I18n.config.available_locales = :ja
I18n.default_locale = :ja
