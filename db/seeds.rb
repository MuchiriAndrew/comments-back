

# Comment.create(user_id: 1, timestamp: "3 weeks ago.", score:12, content: "Impressive! Though it seems the drag feature could be improved. But overall it looks incredible. You've nailed the design and the responsiveness at various breakpoints works really well.")
# Comment.create(user_id: 2,timestamp: "2 weeks ago.", score:5, content: "Woah, your project looks awesome! How long have you been coding for? I'm still new, but think I want to dive into React as well soon. Perhaps you can give me an insight on where I can learn React? Thanks!")

# Reply.create(user_id: 3, score: 4,timestamp: "3 days ago.", content: "If you're still new, I'd recommend focusing on the fundamentals of HTML, CSS, and JS before considering React. It's very tempting to jump ahead but lay a solid foundation first.", parent_comment_id: 2)
# Reply.create(user_id: 4, score: 2,timestamp: "2 days ago.", content: "I couldn't agree more with this. Everything moves so fast and it always seems like everyone knows the newest library/framework. But the fundamentals are what stay constant.", parent_comment_id: 2)

# User.create(image: "https://i.postimg.cc/Qt9Mh5ms/image-amyrobson.png",name: "amyrobson")
# User.create(image: "https://i.postimg.cc/prc5qxsX/image-maxblagun.png",name: "maxblagun")
# User.create(image: "https://i.postimg.cc/LXT1gjfP/image-ramsesmiron.png",name: "ramsesmiron")
# User.create(image: "https://i.postimg.cc/HsQVrwgk/image-juliusomo.png",name: "juliusomo")
User.find_by(id: 1)&.update(password: '1234567')
User.find_by(id: 2)&.update(password: 'qwerqwer')
User.find_by(id: 3)&.update(password: 'abcdefg')
User.find_by(id: 4)&.update(password: '987654321')