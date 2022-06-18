import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["top", "list", "user","tag", "topbutton", "listbutton", "userbutton","tagbutton"]

  connect() {
    this.topTarget.classList.remove("d-none")
    this.topbuttonTarget.classList.add("active-search")
    console.log("search filter controller")
  }

  tops() {
    this.topTarget.classList.remove("d-none")
    this.listTarget.classList.add("d-none")
    this.userTarget.classList.add("d-none")
    this.tagTarget.classList.add("d-none")

    this.topbuttonTarget.classList.add("active-search")
    this.listbuttonTarget.classList.remove("active-search")
    this.userbuttonTarget.classList.remove("active-search")
    this.tagbuttonTarget.classList.remove("active-search")
    console.log("top linked")
  }

  lists() {
    this.topTarget.classList.add("d-none")
    this.listTarget.classList.remove("d-none")
    this.userTarget.classList.add("d-none")
    this.tagTarget.classList.add("d-none")

    this.topbuttonTarget.classList.remove("active-search")
    this.listbuttonTarget.classList.add("active-search")
    this.userbuttonTarget.classList.remove("active-search")
    this.tagbuttonTarget.classList.remove("active-search")
    console.log("lists linked")
  }
  users() {
    this.topTarget.classList.add("d-none")
    this.listTarget.classList.add("d-none")
    this.userTarget.classList.remove("d-none")
    this.tagTarget.classList.add("d-none")

    this.topbuttonTarget.classList.remove("active-search")
    this.listbuttonTarget.classList.remove("active-search")
    this.userbuttonTarget.classList.add("active-search")
    this.tagbuttonTarget.classList.remove("active-search")
    console.log("users linked")
  }
  tags() {
    this.topTarget.classList.add("d-none")
    this.listTarget.classList.add("d-none")
    this.userTarget.classList.add("d-none")
    this.tagTarget.classList.remove("d-none")

    this.topbuttonTarget.classList.remove("active-search")
    this.listbuttonTarget.classList.remove("active-search")
    this.userbuttonTarget.classList.remove("active-search")
    this.tagbuttonTarget.classList.add("active-search")
    console.log("tags linked")
  }
}

// Search on type - also reveal 'filters' on search
// document.getElementById('name')
//     .addEventListener('keyup', function(event) {
//      event.preventDefault();
//      document.querySelector('form').submit();
//         }
//     });
