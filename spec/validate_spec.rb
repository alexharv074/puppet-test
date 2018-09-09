describe 'foo' do
  let(:facts) do
    {
      'foo' => 'bar',
      'baz' => 'qux',
    }
  end

  it 'fact foo should be bar' do
    expect(facts['foo']).to eq 'bar'
  end
end
