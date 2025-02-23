# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( bootstrap.min.css )
# Rails.application.config.assets.precompile += %w( agency.css )
Rails.application.config.assets.precompile += %w( personalized.css )
# Rails.application.config.assets.precompile += %w( shared.css ) # go-man-go
# Rails.application.config.assets.precompile += %w( examples.css ) # go-man-go
# Rails.application.config.assets.precompile += %w( easelcss/shared.css )
# Rails.application.config.assets.precompile += %w( easelcss/examples.css )
Rails.application.config.assets.precompile += %w( other.css )
# Rails.application.config.assets.precompile += %w( non-responsive.css )

# Rails.application.config.assets.precompile += %w( jquery.js) # removed based on rails specifications
Rails.application.config.assets.precompile += %w( bootstrap.min.js)
# Rails.application.config.assets.precompile += %w( classie.js) # reinclude if desired
# Rails.application.config.assets.precompile += %w( cbpAnimatedHeader.js) # reinclude if desired
# Rails.application.config.assets.precompile += %w( jqBootstrapValidation.js)
# Rails.application.config.assets.precompile += %w( contact_me.js)
# Rails.application.config.assets.precompile += %w( agency.js)
# Rails.application.config.assets.precompile += %w( examples.js) # go-man-go
# Rails.application.config.assets.precompile += %w( preloadjs-NEXT.min.js) # go-man-go
# Rails.application.config.assets.precompile += %w( easeljs-NEXT.combined.js) # go-man-go
# Rails.application.config.assets.precompile += %w( easeljs/examples.js )
# Rails.application.config.assets.precompile += %w( easeljs/go-man-go.js )
# Rails.application.config.assets.precompile += %w( _assets/libs/preloadjs-NEXT.min.js )
# Rails.application.config.assets.precompile += %w( lib/easeljs-NEXT.combined.js )
# Rails.application.config.assets.precompile += %w( shared.js )
Rails.application.config.assets.precompile += %w( homepage.js )
# Rails.application.config.assets.precompile += %w( rand-back.js )