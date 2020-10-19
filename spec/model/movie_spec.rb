require 'rails_helper.rb'

RSpec.describe Movie, type: :model do
    let (:subject) { Movie.new }

    describe "Movie title" do
        it "Should be Movie title " do
            subject.Movie_title
            expect(subject.title).to eq('Barbie')
        end
    end

    describe "Movie description" do
        it "Should be Movie description" do
            subject.Movie_description
            expect(subject.description).to eq('12 dancing princess')
        end
    end

    describe "Movie release date" do
        it "Should be Movie release date" do
            subject.Movie_release
            expect(subject.release_date).to eq('September 19, 2006')
        end
    end
end