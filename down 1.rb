# coding: utf-8

require 'find'
require 'fileutils'

class Download
  def self.get
    (1..150).each do |n|
      url = "http://pic.fxdm.cc/tu/986/第7卷/#{n}.jpg"
      system "wget #{url}"
    end
  end

end

Download.get