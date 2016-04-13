require 'spec_helper_acceptance'

describe 'test' do
  describe command('date') do
    it {
      t = Time.now; puts "Sleeping at #{t}"; sleep 10
      t = Time.now; puts "Slept for 10 seconds, time is now #{t}"
      expect(subject.exit_code).to eq 0
      t = Time.now; puts "Sleeping at #{t}"; sleep 10
      t = Time.now; puts "Slept for 10 seconds, time is now #{t}"
    }
  end
end
