module RateLimitCheckerHelper
  def self.new_user_message(thing)
    timeframe = I18n.t("helpers.rate_limit_checker_helper.day", count: Settings::RateLimit.user_considered_new_days)
    I18n.t("helpers.rate_limit_checker_helper.general", thing: thing, timeframe: timeframe)
  end

  def configurable_rate_limits
    {
      published_article_creation: {
        min: 0,
        placeholder: 9,
        title: I18n.t("helpers.rate_limit_checker_helper.published.title"),
        description: I18n.t("helpers.rate_limit_checker_helper.published.description")
      },
      published_article_antispam_creation: {
        min: 0,
        placeholder: 1,
        title: I18n.t("helpers.rate_limit_checker_helper.antispam.title"),
        description: RateLimitCheckerHelper.new_user_message(I18n.t("helpers.rate_limit_checker_helper.thing.posts"))
      },
      article_update: {
        min: 1,
        placeholder: 30,
        title: I18n.t("helpers.rate_limit_checker_helper.update.title"),
        description: I18n.t("helpers.rate_limit_checker_helper.update.description")
      },
      image_upload: {
        min: 0,
        placeholder: 9,
        title: I18n.t("helpers.rate_limit_checker_helper.upload.title"),
        description: I18n.t("helpers.rate_limit_checker_helper.upload.description")
      },
      user_update: {
        min: 1,
        placeholder: 5,
        title: I18n.t("helpers.rate_limit_checker_helper.user.title"),
        description: I18n.t("helpers.rate_limit_checker_helper.user.description")
      },
      follow_count_daily: {
        min: 0,
        placeholder: 500,
        title: I18n.t("helpers.rate_limit_checker_helper.follow.title"),
        description: I18n.t("helpers.rate_limit_checker_helper.follow.description")
      },
      reaction_creation: {
        min: 1,
        placeholder: 10,
        title: I18n.t("helpers.rate_limit_checker_helper.reaction.title"),
        description: I18n.t("helpers.rate_limit_checker_helper.reaction.description")
      },
      feedback_message_creation: {
        min: 1,
        placeholder: 5,
        title: I18n.t("helpers.rate_limit_checker_helper.feedback.title"),
        description: I18n.t("helpers.rate_limit_checker_helper.feedback.description")
      },
      comment_creation: {
        min: 0,
        placeholder: 9,
        title: I18n.t("helpers.rate_limit_checker_helper.comment.title"),
        description: I18n.t("helpers.rate_limit_checker_helper.comment.description")
      },
      comment_antispam_creation: {
        min: 0,
        placeholder: 1,
        title: I18n.t("helpers.rate_limit_checker_helper.comment_antispam.title"),
        description: RateLimitCheckerHelper.new_user_message(I18n.t("helpers.rate_limit_checker_helper.thing.comments"))
      },
      mention_creation: {
        min: 0,
        placeholder: 7,
        title: I18n.t("helpers.rate_limit_checker_helper.mention.title"),
        description: I18n.t("helpers.rate_limit_checker_helper.mention.description")
      },
      listing_creation: {
        min: 1,
        placeholder: 1,
        title: I18n.t("helpers.rate_limit_checker_helper.listing.title"),
        description: I18n.t("helpers.rate_limit_checker_helper.listing.description")
      },
      organization_creation: {
        min: 1,
        placeholder: 1,
        title: I18n.t("helpers.rate_limit_checker_helper.organization.title"),
        description: I18n.t("helpers.rate_limit_checker_helper.organization.description")
      },
      user_subscription_creation: {
        min: 0,
        placeholder: 3,
        title: I18n.t("helpers.rate_limit_checker_helper.subscription.title"),
        description: I18n.t("helpers.rate_limit_checker_helper.subscription.description")
      },
      email_recipient: {
        min: 0,
        placeholder: 5,
        title: I18n.t("helpers.rate_limit_checker_helper.recipient.title"),
        description: I18n.t("helpers.rate_limit_checker_helper.recipient.description")
      },
      send_email_confirmation: {
        min: 1,
        placeholder: 2,
        title: I18n.t("helpers.rate_limit_checker_helper.confirmation.title"),
        description: I18n.t("helpers.rate_limit_checker_helper.confirmation.description")
      }
    }
  end
end
