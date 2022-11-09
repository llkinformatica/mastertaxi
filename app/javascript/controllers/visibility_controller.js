// app/javascript/controllers/visibility_controller.js 

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static get targets() {
    return [ "sidebarContainer" , "mainContainer" ]
  }  

  toggle() {
    if (this.sidebarContainerTarget.dataset.expanded === "1") {
      this.collapse()
    } else {
      this.expand()
    }
  }
  
  collapse() {
    this.sidebarContainerTarget.classList.add("invisible")
    this.mainContainerTarget.classList.remove("sm:ml-[300px]")    
    this.mainContainerTarget.classList.add("sm:ml-0")
    this.sidebarContainerTarget.dataset.expanded = "0"
  }
  
  expand() {
    this.sidebarContainerTarget.classList.remove("invisible")
    this.mainContainerTarget.classList.remove("sm:ml-0")
    this.mainContainerTarget.classList.add("sm:ml-[300px]")
    this.sidebarContainerTarget.dataset.expanded = "1"
  }
    
}