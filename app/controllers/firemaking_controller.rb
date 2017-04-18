class FiremakingController < ApplicationController
  def load
    file = File.read('skills.json')
    data = JSON.parse(file)
    firemaking = data["skills"]["firemaking"]
    @options = firemaking.to_json
  end
end
