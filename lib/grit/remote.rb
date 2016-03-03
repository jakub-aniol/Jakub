#!/usr/bin/env ruby

require "pathname"

module Grit
	class Remote
		attr_reader :name, :repo

		def self.find_all(repo)
			Pathname.glob("#{repo.path}/refs/remotes/*").map { |path|
				Remote.new(repo, path.basename.to_s)
			}
		end

		def initialize(repo, name)
			@repo, @name = repo, name
		end

		def heads
			Pathname("#{@repo.path}/refs/remotes/#{@name}").children.map {|c|
				Grit::Head.new(c.basename.to_s, Grit::Commit.create(@repo, :id => c.read.strip))
			}
		end

		def head(name="master")
			c = Pathname.new("#{@repo.path}/refs/remotes/#{@name}/#{name}")
			Grit::Head.new(c.basename.to_s, Grit::Commit.create(@repo, :id => c.read.strip))
		rescue Errno::ENOENT, Errno::ENOTDIR
			nil
		end
	end

	class Repo
		def remotes
			Remote.find_all(self)
		end
	end
end


