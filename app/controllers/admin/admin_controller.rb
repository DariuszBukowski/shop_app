class Admin::AdminController < ApplicationController
	layout 'admin'
	before_filter :authenticate_admin_admin_user!
end