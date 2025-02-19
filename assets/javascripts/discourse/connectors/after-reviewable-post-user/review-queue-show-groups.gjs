import Component from '@glimmer/component';

export default class ReviewQueueShowGroups extends Component {
  get groupNames() {
    return this.args.outletArgs.user.groups?.join(', ');
  }

  <template>
    <div class="review-queue-groups">Groups: {{ this.groupNames}}</div>
  </template>
}