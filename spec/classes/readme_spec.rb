describe 'readme' do
  it 'should have a readme' do
    expect { File.open('README.md') }.to_not raise_error
  end
end
