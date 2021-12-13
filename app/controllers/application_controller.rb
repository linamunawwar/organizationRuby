class ApplicationController < ActionController::Base
	# mencari user berdasarkan session key
    def current_user
        if session[:user_id]
            User.find(session[:user_id])
        else
            nil
        end
    end

    #cek apakah user saat ini account manager atau bukan
    def current_user_manager
        if session[:role_id]
            unless session[:role_id] == 2
                flash[:error] = 'error 403'
                redirect_to :back
            end
        else
            nil
        end
    end

    # cek apakah user sudah login
    def user_signed_in?
        if current_user
            true
        else
            redirect_to form_login_path, alert: "Silahkan login terlebih dahulu!"
            return false
        end
    end
end
