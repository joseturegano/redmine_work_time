RedmineApp::Application.routes.draw do
  work_time_actions = %w[
    index show member_monthly_data member_monthly_data_table
    total total_data total_data_with_act
    edit_relay relay_total relay_total_data relay_total_data_with_act
    ajax_relay ajax_relay_input ajax_relay_input_select
    ajax_add_tickets_input ajax_add_tickets_input_select ajax_add_tickets_insert
    ajax_memo_edit ajax_done_ratio_input ajax_done_ratio_update
    register_project_settings
  ]

  work_time_actions.each do |action|
    match "work_time/#{action}", to: "work_time##{action}", via: [:get, :post]
    match "work_time/#{action}/:id", to: "work_time##{action}", via: [:get, :post]
  end
end
