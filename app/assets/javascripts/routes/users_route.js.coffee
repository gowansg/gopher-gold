# For more information see: http://emberjs.com/guides/routing/

GopherGold.UsersRoute = Ember.Route.extend
  model: -> @store.findAll('user')

GopherGold.UserRoute = Ember.Route.extend
  model: (params) -> @store.find('user', params.user_id)