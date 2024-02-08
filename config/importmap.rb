# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@rails/actioncable", to: "actioncable.esm.js"
pin_all_from "app/javascript/channels", under: "channels"
pin "lit" # @3.1.1
pin "@lit/reactive-element", to: "@lit--reactive-element.js" # @2.0.3
pin "lit-element/lit-element.js", to: "lit-element--lit-element.js.js" # @4.0.3
pin "lit-html" # @3.1.1
pin "lit-html/is-server.js", to: "lit-html--is-server.js.js" # @3.1.1
