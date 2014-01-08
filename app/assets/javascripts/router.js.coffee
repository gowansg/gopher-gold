# For more information see: http://emberjs.com/guides/routing/

GopherGold.Router.map ->
    @resource('users')
    @resource('user', {path: '/users/:user_id'}, ->
      @resource('surveys'))