import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["title", "tags", "add", "article"];

  connect() {
    console.log("preview connected")
  }

  previewToggle() {
    this.titleTarget.classList.toggle("d-none")
    this.tagsTarget.classList.toggle("d-none")
    this.addTarget.classList.toggle("d-none")
    this.articleTarget.classList.toggle("d-none")

  }
}

const preview = document.getElementById("preview")
const buttons = document.getElementById("buttons")
const listEdits = document.querySelectorAll(".list-editor")

preview.addEventListener("click", ()=> {
  buttons.classList.toggle("d-none");
  listEdits.forEach((edit) => {
    edit.classList.toggle("d-none")
  });
})
