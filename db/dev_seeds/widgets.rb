section "Creating header and cards for the homepage" do
  def create_image_attachment(type)
    {
      attachment: Rack::Test::UploadedFile.new("db/dev_seeds/images/#{type}_background.jpg"),
      title: "#{type}_background.jpg",
      user: User.first
    }
  end

  Widget::Card.create!(
    random_locales_attributes(
      %i[title description link_text label].map do |attribute|
        [attribute, -> { I18n.t("seeds.cards.header.#{attribute}") }]
      end.to_h
    ).merge(
      link_url: "https://meetdemocracy.com",
      header: true,
      image_attributes: create_image_attachment("header")
    )
  )

  Widget::Card.create!(
    random_locales_attributes(
      %i[title description link_text label].map do |attribute|
        [attribute, -> { I18n.t("seeds.cards.debate.#{attribute}") }]
      end.to_h
    ).merge(
      link_url: "https://meetdemocracy.com",
      header: false,
      image_attributes: create_image_attachment("debate")
    )
  )

  Widget::Card.create!(
    random_locales_attributes(
      %i[title description link_text label].map do |attribute|
        [attribute, -> { I18n.t("seeds.cards.proposal.#{attribute}") }]
      end.to_h
    ).merge(
      link_url: "https://meetdemocracy.com",
      header: false,
      image_attributes: create_image_attachment("proposal")
    )
  )

  Widget::Card.create!(
    random_locales_attributes(
      %i[title description link_text label].map do |attribute|
        [attribute, -> { I18n.t("seeds.cards.budget.#{attribute}") }]
      end.to_h
    ).merge(
      link_url: "https://meetdemocracy.com",
      header: false,
      image_attributes: create_image_attachment("budget")
    )
  )
end
