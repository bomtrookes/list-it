import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["list", "user","tag"]

  connect() {
    console.log("search filter controller")
  }

  lists() {
    this.listTarget.classList.remove("d-none")
    this.userTarget.classList.add("d-none")
    this.tagTarget.classList.add("d-none")

    // this.listbuttoniconTarget.classList.add("active-tab")
    // this.userbuttonTarget.classList.remove("active-tab")
    // this.tagbuttonTarget.classList.remove("active-tab")
    console.log("lists linked")
  }
  users() {
    this.listbuttonTarget.classList.add("d-none")
    this.userTarget.classList.remove("d-none")
    this.tagTarget.classList.add("d-none")

    // this.listiconTarget.classList.remove("active-tab")
    // this.userbuttonTarget.classList.add("active-tab")
    // this.tagbuttonTarget.classList.remove("active-tab")
    console.log("users linked")
  }
  tags() {
    this.listbuttonTarget.classList.add("d-none")
    this.userTarget.classList.add("d-none")
    this.tagTarget.classList.remove("d-none")

    // this.listiconTarget.classList.remove("active-tab")
    // this.userbuttonTarget.classList.remove("active-tab")
    // this.tagbuttonTarget.classList.add("active-tab")
    console.log("tags linked")
  }
}
