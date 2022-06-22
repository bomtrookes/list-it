import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["infos", "form", "card", "editor", "article"];

  connect() {
    this.articleTarget.classList.add("d-none")
  }

  displayForm() {
    this.infosTarget.classList.add("d-none")
    this.formTarget.classList.remove("d-none")

    // this.editorTarget.classList.add("d-none")
    this.articleTarget.classList.add("d-none")
  }

  descBtn() {
    this.articleTarget.classList.toggle("d-none")
    console.log("clicked")
  }

  //displayArticle() {
    // this.artViewTarget.nextElementSibling.classList.toggle("d-none")
    //this.articleTarget.classList.toggle("d-none")
    //console.log("clicked")
  //}

  update(event) {
    event.preventDefault()
    const url = this.formTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
    .then(response => response.text())
    .then((data) => {
      this.cardTarget.outerHTML = data
    })
  }
}
