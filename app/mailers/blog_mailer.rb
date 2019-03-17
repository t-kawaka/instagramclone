class BlogMailer < ApplicationMailer
  def blog_mail(blog)
    @blog = blog

  mail(to: @blog.user.email, subject: '私の素敵なサイトへようこそ')
  end
end