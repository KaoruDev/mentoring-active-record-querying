require "rails_helper"

describe "Querying" do
  describe "User instance" do
    it "has many posts" do
      User.first.posts
    end

    it "has many likes" do
      User.first.likes
    end

    it "has many comments" do
      User.first.comments
    end

    describe "your likes query" do
      it "returns all of the likes that are a user with email domenick.spinka@gmail.com post" do
        result = User # with domenick.spinka@gmail.com

        ###################
        # DO NOT CODE BELOW THIS
        ##################
        answers = [2, 16, 3, 13, 19, 7, 12, 4, 11, 20, 5, 8, 21]

        result.each do |like|
          expect(answers.delete(like.id)).to be_truthy
        end

        expect(answers.empty?).to eq(true)
      end
    end

    describe "your posts query" do
      it "returns all of the posts alice@gmail.com commented on" do
        result = User # with alice@gmail.com

        ###################
        # DO NOT CODE BELOW THIS
        ##################
        answers = [1, 3, 2, 4, 6]

        result.each do |post|
          expect(answers.delete(post.id)).to be_truthy
        end

        expect(answers.empty?).to eq(true)
      end
    end

    describe "your users query" do
      it "returns all of the users who commented on dorian.breitenberg@gmail.com's posts" do
        result = User # with dorian.breitenberg@gmail.com

        ###################
        # DO NOT CODE BELOW THIS
        ##################
        answers = [2, 4]

        result.each do |user|
          expect(answers.delete(user.id)).to be_truthy
        end

        expect(answers.empty?).to eq(true)
      end
    end

    it "returns posts with more than 2 likes" do
      result = Post # query

      ###################
      # DO NOT CODE BELOW THIS
      ##################

      answers = [9, 8]

      result.each do |post|
        expect(answers.delete(post.id)).to be_truthy
      end

      expect(answers.empty?).to eq(true)
    end


  end
end

