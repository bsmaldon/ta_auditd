require 'spec_helper'
describe 'ta_auditd' do
  context 'with default values for all parameters' do
    it { should contain_class('ta_auditd') }
  end
end
