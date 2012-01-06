After do |scenario|
  if scenario.respond_to?(:status) && scenario.status == :failed
    save_and_open_page
  end
end