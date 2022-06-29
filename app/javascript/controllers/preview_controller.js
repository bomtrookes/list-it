const preview = document.querySelector("#preview")

if(preview) {
  preview.addEventListener("click", pT)
  console.log("preview listener loaded")
}

function pT() {
  const title = document.querySelector("#title")
  const tags = document.querySelector("#tags")
  // const save = document.querySelector("#save-btn")
  // const share = document.querySelector("#share-btn")
  const add = document.querySelector("#add")
  const list = document.querySelector("#sortList")
  // const article = document.querySelector("#art")
  const grips = document.querySelectorAll(".my-handle")
  // const buttons = document.querySelector("#buttons")
  const delBtns = document.querySelectorAll(".delBtn")
  const listEdits = document.querySelectorAll(".list-editor")

  // preview.classList.toggle("selected");
  list.classList.toggle("hide-nums")
  title.classList.toggle("d-none");
  tags.classList.toggle("d-none");
  add.classList.toggle("d-none");
  // save.classList.toggle("d-none");
  // share.classList.toggle("d-none");
  // article.classList.toggle("d-none");
  // buttons.classList.toggle("d-none");
  listEdits.forEach((edit) => {
    edit.classList.toggle("d-none")
  });
  delBtns.forEach((del) => {
    del.classList.toggle("d-none")
  });
  grips.forEach((grip) => {
    grip.classList.toggle("d-none")
  });
}

const status = document.querySelector("span")
if ( status && status.innerText == "true" ) {
  console.log("status is indeed true!")
  pT()
} else {
  console.log("profile loaded")
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
