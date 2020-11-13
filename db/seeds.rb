rebecca = User.create(username: "rebecca", email: "becca@gmail.com", password: "pw1234")
chaim = User.create(username: "chaim", email: "chaim@gmail.com", password: "123123")

Tweet.create(content: "hello fwitter!", user_id: chaim.id)
Tweet.create(content: "Hello WOrld!!", user_id: rebecca.id)