import "@hotwired/turbo-rails"
import { Application } from "@hotwired/stimulus"
import "controllers"
import Rails from "@rails/ujs"
Rails.start()

const application = Application.start()
application.debug = false
window.Stimulus = application

import "bootstrap"
