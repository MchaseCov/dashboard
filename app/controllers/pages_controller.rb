class PagesController < ApplicationController
  def main
    client = Octokit::Client.new(access_token: ENV['github_token'])
    @repos = client.repos({}, query: { type: 'owner', sort: 'pushed', per_page: 6 })
  end
end
