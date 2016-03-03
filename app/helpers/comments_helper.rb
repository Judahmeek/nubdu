module CommentsHelper
    def comment_params
        params.require(:submission_id, :content)
    end
end
