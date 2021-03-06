defmodule Api.Town do
    use Api.Web, :model

    schema "towns" do
      field :name, :string

      belongs_to :state, Api.Town, foreign_key: :state_id 
      
      has_many :constituencies, Api.Constituency
      
      timestamps()
    end
end
