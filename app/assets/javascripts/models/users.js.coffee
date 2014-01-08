# for more details see: http://emberjs.com/guides/models/defining-models/

GopherGold.User = DS.Model.extend
  username: DS.attr('string')
  created_on: DS.attr('date')
