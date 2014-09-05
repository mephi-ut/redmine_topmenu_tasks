class TopMenuTasksControlHooks < Redmine::Hook::ViewListener
	render_on(:view_layouts_base_html_head, :partial => 'top_menu_hooks/css')
end
