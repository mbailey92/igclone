import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-post-form"
export default class extends Controller {
static targets = ['selectFileButton', 'photoFile'];

  connect() {
  }

  selectFile(e) {
    e.preventDefault();
    this.photoFileTarget.click();
  }

  submitForm() {
    this.element.submit();
  }
}
