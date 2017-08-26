describe 'Matcher output' do
  it { expect{ puts "jackson" }.to output.to_stdout}
  it { expect{ print "jackson" }.to output("jackson").to_stdout}
  it { expect{ puts "jackson pires" }.to output(/jackson/).to_stdout}

  it { expect{ warn "jackson" }.to output.to_stderr}
  it { expect{ warn "jackson" }.to output("jackson\n").to_stderr}
  it { expect{ warn "jackson pires" }.to output(/jackson/).to_stderr}
end
