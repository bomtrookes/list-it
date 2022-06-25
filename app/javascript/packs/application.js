
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
// Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"
// trying to solve bootstrap icon issue
import "@fortawesome/fontawesome-free/js/all"
