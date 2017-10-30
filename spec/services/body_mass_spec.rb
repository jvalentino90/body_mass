require 'rails_helper'

describe BodyMassService do
  describe '.obtain_body_mass' do
    it 'should return index and normal healthy weight' do
      height = 180
      weight = 80
      expect(subject.obtain_body_mass(weight, height)).to eq({24.69=>"Normal (healthy weight)"})
    end
  end
end
