class VendorMailer < ApplicationMailer
    
    def welcome_email(vendor)
        @vendor = vendor
        mail(to: @vendor.email, subject: 'Welcome to XpressChow')
    end

    def login_warning(vendor)
        @vendor = vendor
        mail(to: @vendor.email, subject: 'Your account is being accessed')
    end

    def forgot_password(vendor)
        @vendor = vendor
        mail(to: @vendor.email, subject: 'Resetting your XpressChow Password')
    end
end
