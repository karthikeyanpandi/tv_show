require 'rails_helper'

describe TvShow, type: :model do
  describe '.create' do
    let(:name) { 'Flight charges' }
    let(:description) { 'Flight charges description' }
    let(:channel) { create(:channel) }
    let(:category) { create(:category) }


    subject { TvShow.create(name: name, description: description, category: category,  channel: channel) }

    context 'success' do
      it 'should create a tv show successfully' do
        expect(subject).to eq(TvShow.last)
      end
    end

    context 'failure' do
      before(:each) do
        subject
      end

      context 'when name is blank' do
        let(:name) { '' }

        it 'should not create the tv show' do
          expect(TvShow.last).to be_nil
        end

        it 'should have errors on name' do
          expect(subject.errors[:name]).to eq(["can't be blank"])
        end
      end

      context 'when category is not set' do
        let(:category) { nil }

        it 'should not create the tv show' do
          expect(TvShow.last).to be_nil
        end

        it 'should have errors on category' do
          expect(subject.errors[:category]).to eq(["must exist"])
        end
      end

      context 'when channel is not set' do
        let(:channel) { nil }

        it 'should not create the tv show' do
          expect(TvShow.last).to be_nil
        end

        it 'should have errors on channel' do
          expect(subject.errors[:channel]).to eq(["must exist"])
        end
      end
    end
  end
end