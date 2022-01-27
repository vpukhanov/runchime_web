# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home; end

  def privacy
    @title = 'Privacy Policy'
  end
end
