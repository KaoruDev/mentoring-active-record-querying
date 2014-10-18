require "rails_helper"

describe "Querying" do
  before do
    require_relative "../../db/seeds"
  end

  it "has many posts" do
    User.first.posts
  end

  it "has many likes" do
    User.first.likes
  end

  it "has many comments" do
    User.first.comments
  end

  it "returns all of the likes that are a user with email domenick.spinka@gmail.com post" do
    result = User

    ###################
    # DO NOT CODE BELOW THIS
    ##################
    answers = [2, 16, 3, 13, 19, 7, 12, 4, 11, 20, 5, 8, 21]

    result.each do |like|
      expect(answers.delete(like.id)).to be_truthy
    end

    expect(answers.empty?).to eq(true)
  end

  it "returns all of the posts alice@gmail.com commented on" do
    result = User

    ###################
    # DO NOT CODE BELOW THIS
    ##################
    answers = [1, 3, 2, 4, 6]

    result.each do |post|
      expect(answers.delete(post.id)).to be_truthy
    end

    expect(answers.empty?).to eq(true)
  end

  it "returns all of the users who commented on dorian.breitenberg@gmail.com's posts" do
    result = User

    ###################
    # DO NOT CODE BELOW THIS
    ##################
    answers = [2, 4]

    result.each do |user|
      expect(answers.delete(user.id)).to be_truthy
    end

    expect(answers.empty?).to eq(true)
  end

  it "returns posts with more than 2 likes" do
    result = Post

    ###################
    # DO NOT CODE BELOW THIS
    ##################

    answers = [9, 8]

    result.each do |post|
      expect(answers.delete(post.id)).to be_truthy
    end

    expect(answers.empty?).to eq(true)
  end

  it "create a like on any one of edd@gmail.com's post by alice@gmail.com" do


    ###################
    # DO NOT CODE BELOW THIS
    ##################

    result = User.find_by(email: "edd@gmail.com").posts.select do |post|
      post.likes.where(user_id: 1).first
    end

    expect(result.empty?).to be_falsely
  end

  it "Return a post commented by domenick.spinka@gmail.com and liked by dorian.breitenberg@gmail.com" do
    # Your query goes here. You can assign variable etc until you find the post you need.
    result = Post

    ###################
    # DO NOT CODE BELOW THIS
    ##################

    expect(result.id).to eq(6)

  end

end

