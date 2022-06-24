const preview = document.querySelector("#preview")

const title = document.querySelector("#title")
const tags = document.querySelector("#tags")
const add = document.querySelector("#add")
const article = document.querySelector("#art")
const buttons = document.querySelector("#buttons")
const listEdits = document.querySelectorAll(".list-editor")

function pT() {
    preview.classList.toggle("selected");
    title.classList.toggle("d-none");
    tags.classList.toggle("d-none");
    add.classList.toggle("d-none");
    article.classList.toggle("d-none");
    buttons.classList.toggle("d-none");
    listEdits.forEach((edit) => {
      edit.classList.toggle("d-none")
    });
}

preview.addEventListener("click", pT)

if (preview.innerHTML == "Editor") {
  pT()
}
// import { Controller } from "stimulus"

// export default class extends Controller {
//   static targets = ["title", "tags", "add", "article"];

//   previewToggle() {
//     this.titleTarget.classList.toggle("d-none")
//     this.tagsTarget.classList.toggle("d-none")
//     this.addTarget.classList.toggle("d-none")
//     this.articleTarget.classList.toggle("d-none")
//     pT()
//   }

// }
