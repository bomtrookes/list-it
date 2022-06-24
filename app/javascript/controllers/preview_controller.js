const preview = document.getElementById("preview")
const buttons = document.getElementById("buttons")
const listEdits = document.querySelectorAll(".list-editor")

function pT() {
    buttons.classList.toggle("d-none");
    listEdits.forEach((edit) => {
      edit.classList.toggle("d-none")
    });
}

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["title", "tags", "add", "article"];

  previewToggle() {
    this.titleTarget.classList.toggle("d-none")
    this.tagsTarget.classList.toggle("d-none")
    this.addTarget.classList.toggle("d-none")
    this.articleTarget.classList.toggle("d-none")
    pT()
  }
}
