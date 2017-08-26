# coding: utf-8

require 'find'
require 'fileutils'

class Download
  def self.get
    (188..250).each do |n|
      Dir.mkdir(n.to_s)
      Dir.chdir n.to_s
      (1..100).each do |m|
        url = "http://pic.fxdm.cc/tu/986/#{n.to_s}话/#{(m-1).to_s.rjust(3, '0')}#{m.to_s.rjust(3, '0')}.jpg"
        system "wget #{url}"
      end
      Dir.chdir '..'
    end
  end

end

Download.get