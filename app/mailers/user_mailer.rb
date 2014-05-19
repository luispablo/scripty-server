class UserMailer < ActionMailer::Base
	default from: "Scripty system@duamsistemas.com.ar"

	def validate_device(device)
		@user = device.user
		@device = device
		mail(to: @user.email, subject: 'Validate device account')
	end
end
