# encoding: UTF-8
require 'redmine'

require_dependency 'top_menu_hooks'

Redmine::Plugin.register :redmine_topmenu_tasks do
	name 'Redmine tasks control on top menu'
	description 'A plugin to add control buttons to the top menu'
	url 'https://github.com/mephi-ut/redmine_topmenu_tasks'
	author 'Dmitry Yu Okunev'
	author_url 'https://github.com/xaionaro'
	version '0.0.1'
	# Don't know how to get the Internatialization work
	#menu :top_menu, :tasks_incoming, {:controller => 'issues', :action => 'index', :query_id => 10}, :caption => I18n.t(:tasks_incoming)
	menu :top_menu, :tasks_incoming,  {:controller => 'issues', :action => 'index', :query_id => 10}, :caption => "Поручено мне",	:if => authorize_for('issues', 'new')
	menu :top_menu, :tasks_outcoming, {:controller => 'issues', :action => 'index', :query_id => 56}, :caption => "Я поручил",	:if => authorize_for('issues', 'new')
	menu :top_menu, :tasks_control,   {:controller => 'issues', :action => 'index', :query_id => 59}, :caption => "На контроле",	:if => authorize_for('issues', 'new')
	menu :top_menu, :new_issue, { :controller => 'issues', :action => 'new', :copy_from => nil }, :caption => :label_issue_new,	:if => authorize_for('issues', 'new')
end
