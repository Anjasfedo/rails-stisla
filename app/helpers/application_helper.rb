module ApplicationHelper
  def devise_controller?
    controller_name == 'sessions' || controller_name == 'registrations'
  end

  def devise_auth_action?
    (controller_name == 'sessions' && action_name == 'new') ||
      (controller_name == 'registrations' && (action_name == 'new' || action_name == 'create'))
  end

  def devise_update_profile?
    controller_name == 'registrations' && (action_name == 'edit' || action_name == 'update')
  end
end
