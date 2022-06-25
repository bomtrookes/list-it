import { end } from "@popperjs/core"
import Rails from "@rails/ujs"
import Sortable from "sortablejs"
const sortList = document.querySelector("#sortList");

const initSortable = () => {
  if (sortList) {

    Sortable.create(sortList, {
      ghostClass: "ghost",
      animation: 150,
      group: "listLocalStorage",
      store: {
        /**
         * Get the order of elements. Called once during initialization.
         * @param   {Sortable}  sortable
         * @returns {Array}
         */
        get: function (sortable) {
          var order = localStorage.getItem(sortable.options.group.name);
          return order ? order.split('|') : [];
        },

        /**
         * Save the order of elements. Called onEnd (when the item is dropped).
         * @param {Sortable}  sortable
         */
        set: function (sortable) {
          var order = sortable.toArray();
          localStorage.setItem(sortable.options.group.name, order.join('|'));
        }
     }
  })
  }
console.log("sorted")
}

// if (document.querySelector("#sort-list")) {
//   initSortable();
// }

export { initSortable }

// go to controllers/index and uncomment initSortable()
