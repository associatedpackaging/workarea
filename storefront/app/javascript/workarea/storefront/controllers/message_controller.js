import { Controller } from "stimulus"

/**
 * This is the "original" MessageController from base, which gets
 * subclassed in the application's storefront JavaScript. Out of the
 * box, it just removes a flash message element from the DOM when
 * closed.
 */
export default class MessageController extends Controller {
  close(event) {
    event.preventDefault()
    this.element.remove()
  }
}