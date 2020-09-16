require 'rails_helper'

RSpec.describe Invoice, type: :model do
  let(:invoice) { build :invoice }

  describe '::associations' do
    it 'has many products' do
      assc = described_class.reflect_on_association(:products)
      expect(assc.macro).to eq :has_many
    end

    it 'has one client' do
      assc = described_class.reflect_on_association(:client)
      expect(assc.macro).to eq :has_one
    end

    it 'has one issuer' do
      assc = described_class.reflect_on_association(:issuer)
      expect(assc.macro).to eq :has_one
    end
  end

  describe '::validations' do
    context 'date' do
      it 'is invalid when missing' do
        invoice.date = nil
        expect(invoice.valid?).to be false
      end

      it 'is valid when present' do
        expect(invoice.valid?).to be true
      end
    end

    context 'tax' do
      it 'is invalid when missing' do
        invoice.tax = nil
        expect(invoice.valid?).to be false
      end

      it 'is valid when present' do
        expect(invoice.valid?).to be true
      end
    end

    context 'sub_total' do
      it 'is invalid when missing' do
        invoice.sub_total = nil
        expect(invoice.valid?).to be false
      end

      it 'is valid when present' do
        expect(invoice.valid?).to be true
      end
    end

    context 'total' do
      it 'is invalid when missing' do
        invoice.total = nil
        expect(invoice.valid?).to be false
      end

      it 'is valid when present' do
        expect(invoice.valid?).to be true
      end
    end
  end
end
