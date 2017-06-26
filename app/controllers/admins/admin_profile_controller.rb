class Admins::AdminProfileController < Devise::ApplicationController
    before_action :set_admin_profile, only: [:edit, :update]

     def edit
     end

     def update
         if @admin_profile.update(params_admin_profile)
             redirect_to edit_admin_profile_path(current_admin.id),
                 notice: "Perfil atualizado com sucesso!"
         else
             render :edit
         end
     end

     private

         def set_admin_profile
             @admin_profile = AdminProfile.find_or_create_by(admin_id: current_admin.id)
         end

         def params_admin_profile
             params.require(:admin_profile).permit(:id, :name, :image, :phone, :skill_id, :admin_id)
         end

end
