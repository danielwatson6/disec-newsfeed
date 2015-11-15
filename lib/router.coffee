Router.configure
  layoutTemplate: 'layout'
  waitOn: -> Meteor.subscribe('posts')

Router.route '/',
  name: 'posts'
  data: -> posts: Posts.find({}, {sort: {submitted: -1}})
