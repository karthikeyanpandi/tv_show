json.extract! tv_show, :id, :name, :description, :stream_url, :telecast_time, :recurrence_event, :boolean,, :days, :string,, :duration, :integer,, :status, :string,, :category, :belongs_to,, :channel, :belongs_to, :created_at, :updated_at
json.url tv_show_url(tv_show, format: :json)
