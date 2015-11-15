# Function used to post via the console
@post = (content) ->
  currentDate = new Date
  # Set day to 29-30 September 2016 according to whether it's Monday or Tuesday IRL.
  d = new Date(2016, 9, 29, currentDate.getHours(), currentDate.getMinutes())
  if currentDate.getDay() is 2
    d.setDate(30)
  
  Posts.insert
    submitted: d
    date: "#{d.getDate()} September 2016, #{d.getHours()}:#{d.getMinutes()}"
    content: content
