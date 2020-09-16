require 'rails_helper'

RSpec.describe Issuer, type: :model do
  let(:issuer) { build :issuer }

  describe '::associations' do
    it 'belongs to invoice' do
      assc = described_class.reflect_on_association(:invoice)
      expect(assc.macro).to eq :belongs_to
    end
  end
  
  describe '::validations' do
    context 'invoice' do
      it 'is invalid when missing' do
        issuer.invoice = nil
        expect(issuer.valid?).to be false
      end
  
      it 'is valid when present' do
        expect(issuer.valid?).to be true
      end
    end

    context 'name' do
      it 'is invalid when missing' do
        issuer.name = nil
        expect(issuer.valid?).to be false
      end

      it 'is valid when present' do
        expect(issuer.valid?).to be true
      end
    end

    context 'address_one' do
      it 'is invalid when missing' do
        issuer.address_one = nil
        expect(issuer.valid?).to be false
      end

      it 'is valid when present' do
        expect(issuer.valid?).to be true
      end
    end

    context 'address_two' do
      it 'is invalid when missing' do
        issuer.address_two = nil
        expect(issuer.valid?).to be false
      end

      it 'is valid when present' do
        expect(issuer.valid?).to be true
      end
    end

    context 'phone_number' do
      it 'is invalid when missing' do
        issuer.phone_number = nil
        expect(issuer.valid?).to be false
      end

      it 'is valid when present' do
        expect(issuer.valid?).to be true
      end
    end
  end
end
