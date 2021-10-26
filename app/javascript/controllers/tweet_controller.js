import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["charactersRemaining", "tweetBody"];
  
  updateCharsRemaining() {
    this.charactersRemainingTarget.innerHTML = 140 - this.tweetBodyTarget.value.length;
  }
}