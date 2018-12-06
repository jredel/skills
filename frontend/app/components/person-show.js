import Component from '@ember/component';
import { inject as service } from '@ember/service';
import { computed } from '@ember/object';
import Person from '../models/person';

export default Component.extend({
  ajax: service(),
  router: service(),
  download: service(),

  init() {
    this._super(...arguments);
  },

  maritalStatus: computed('person.maritalStatus', function() {
    const maritalStatuses = Person.MARITAL_STATUSES
    const Key = this.get('person.maritalStatus')
    return maritalStatuses[Key]
  }),

  actions: {
    deletePerson(personToDelete) {
      personToDelete.destroyRecord();
      this.get('router').transitionTo('people');
    },

    exportCvOdt(personId, e) {
      e.preventDefault();
      let url = `/api/people/${personId}.odt`;
      this.get('download').file(url)
    },
  }
});
