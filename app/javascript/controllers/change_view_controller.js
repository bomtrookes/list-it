import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["list", "draft","pin", "listicon", "drafticon", "pinicon"]

  connect() {
    this.listTarget.classList.remove("d-none")
    this.listiconTarget.classList.add("active-tab")

    console.log("change view controller")
  }

  lists() {
    this.listTarget.classList.remove("d-none")
    this.draftTarget.classList.add("d-none")
    this.pinTarget.classList.add("d-none")

    this.listiconTarget.classList.add("active-tab")
    this.drafticonTarget.classList.remove("active-tab")
    this.piniconTarget.classList.remove("active-tab")
    console.log("lists linked")
  }
  drafts() {
    this.listTarget.classList.add("d-none")
    this.draftTarget.classList.remove("d-none")
    this.pinTarget.classList.add("d-none")

    this.listiconTarget.classList.remove("active-tab")
    this.drafticonTarget.classList.add("active-tab")
    this.piniconTarget.classList.remove("active-tab")
    console.log("drafts linked")
  }
  pins() {
    this.listTarget.classList.add("d-none")
    this.draftTarget.classList.add("d-none")
    this.pinTarget.classList.remove("d-none")

    this.listiconTarget.classList.remove("active-tab")
    this.drafticonTarget.classList.remove("active-tab")
    this.piniconTarget.classList.add("active-tab")
    console.log("pins linked")
  }
}
