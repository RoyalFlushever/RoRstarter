OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1053536374378-ti2h41mnvnmfon2lbm9hpo71bumhv3rc.apps.googleusercontent.com', 'Vb3e9-KqbddFx5NkEJ6XWdDM', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end