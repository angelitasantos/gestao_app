module ApplicationHelper

    def avatar_url(user)
        if user.image
            "https://graph.facebook.com/v4.0/"
        else
          'profile.png'
        end
    end

end
