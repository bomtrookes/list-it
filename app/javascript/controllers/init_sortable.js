import Sortable from "sortablejs"

const list = document.querySelector("#sort-list")
const form = document.querySelector("#sort-form")

const initSortable = () => {
  Sortable.create(list, {
    ghostClass: "ghost",
    animation: 150,
    // onEnd: (event) => {
    //   alert(`${event.oldIndex} moved to ${event.newIndex}`)
    // }
    onSort: (event) => {
      const itemEl = event.item
      console.log(itemEl, event.oldIndex, event.newIndex);
      const url = form.action

    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(form)
    })
    .then(response => response.text())
    .then((data) => {
      list.outerHTML = data
    })
   }
})
}

export { initSortable }
