import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["input", "output"];

  connect() {
    console.log("Hello World!");
  }

  greet() {
    this.outputTarget.innerHTML = `Hello ${this.inputTarget.value}`;
  }
}
