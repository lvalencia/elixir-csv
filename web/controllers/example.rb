



class MyClass
  def intialize(platform: platform)
    @user_name = platform.user_name
    @password = platform.password
    @submit = platform.submit
    @platform = platform
  end

  def fill_email(email)
    wait( @user_name.send_keys email)
  end

  # ... other methods

  attr_reader :user_name, :password, :submit, :platform
end



MyClass.new(platform: IOS::Signinpage.new).fill_email('igor@gmail.com')
MyClass.new(platform: Android::Signinpage.new).fill_email('igor@gmail.com')
MyClass.new(platform: Windows::Signinpage.new).fill_email('igor@gmail.com')
MyClass.new(platform: patform_from_config).fill_email('igor@gmail.com')


# .. et etc
