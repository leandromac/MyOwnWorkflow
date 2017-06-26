module HomeHelper

    def total_clients
        @clients.count - 1
    end

    def total_members
        @members.count - 1
    end

    def total_skills
        @skills.count - 1
    end

end
