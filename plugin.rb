# name: discourse-groups-review-queue
# version: 1.0
# authors: Communiteq
# about: Show groups in review queue
# url: https://www.github.com/communiteq/discourse-groups-review-queue

enabled_site_setting :groups_review_queue_enabled

after_initialize do
  add_to_serializer(:UserWithCustomFields, :groups, include_condition: -> {  scope.user&.staff? }) do
    object.groups.pluck(:name)
  end
end
