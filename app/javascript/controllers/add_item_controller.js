import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["addItem", "newForm"];

  connect() {
    // console.log(this.sourceTargets)
    if (this.newFormTarget) {
    this.newFormTarget.classList.add("d-none")
    }
    this.addItemTarget.classList.remove("d-none")
    // console.log("This is working")
  }

  nextItem() {
    this.newFormTarget.classList.remove("d-none")
    this.addItemTarget.classList.add("d-none")
  }
}
