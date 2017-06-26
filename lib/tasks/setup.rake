namespace :setup do

    desc "Cria as Todos os registros default"
    task all: :environment do

        puts "Iniciando a instalação dos registros:"
            puts "Excluindo banco de dados... #{%x(rake db:drop)}"
            puts "Criando banco de dados... #{%x(rake db:create)}"
            puts "Migrando banco de dados... #{%x(rake db:migrate)}"
            puts %x(rake setup:skills)
            puts %x(rake setup:members)
            puts %x(rake setup:clients)
        puts "Todos os Registros foram criados com sucesso!"
    end

    desc "Cria as Skills default"
    task skills: :environment do

        puts "Criando SKILLS..."
            Skill.create!(
                title: "-- Escolha uma Skill --",
            )
            Skill.create!(
                title: "Marketing",
                icon: "fa fa-laptop",
                description: "Facebook, email, Otimização, publicidade...",
            )
            Skill.create!(
                title: "Programador",
                icon: "fa fa-terminal",
                description: "JAVA, PHP, Python, Ruby, NodeJS...",
            )
            Skill.create!(
                title: "Webdesigner",
                icon: "fa fa-code",
                description: "HTML, CSS, Wordpress, Joomla...",
            )
            Skill.create!(
                title: "Designer Gráfico",
                icon: "fa fa-crop",
                description: "Illustrator, Photoshop, CorelDRAW...",
            )
            Skill.create!(
                title: "Fotógrafo",
                icon: "fa fa-camera",
                description: "Artistas, Paisagens, Produtos...",
            )
            Skill.create!(
                title: "Negócios",
                icon: "fa fa-briefcase",
                description: "Reuniões, Vendas, Captações, Eventos...",
            )
        puts "SKILLS criadas com sucesso!"
    end

    desc "Cria as Members default"
    task members: :environment do

        puts "Criando MEMBERS..."
            Member.create!(
                name: "-- Escolha um Membro --",
                email: "escolha@email.com",
            )
            Member.create!(
                name: "Leandro Macedo",
                email: "leandro@utu.agency",
                phone: "999999999",
                portfolio: "http://www.leandromacedo.com",
                github: "http://www.github.com/leandromac",
                location: "Setúbal, Portugal",
                skill_id: 3,

            )
            50.times do
                Member.create!(
                    name: Faker::Name.name,
                    email: Faker::Internet.email,
                    phone: Faker::PhoneNumber.cell_phone,
                    portfolio: Faker::Internet.url,
                    github: Faker::Internet.url('github.com'),
                    location: Faker::Address.state,
                    skill_id: Skill.all.sample,
                )
            end
        puts "MEMBERS criados com sucesso!"
    end

    desc "Cria as Clients default"
    task clients: :environment do

        puts "Criando CLIENTS..."
            Client.create!(
                name: "-- Escolha um Cliente --",
            )
            Client.create!(
                name: "Pingo Doce",
                email: "contato@pingodoce.pt",
                phone: "999999999",
                website: "http://www.pingodoce.pt",
                address: "Penalva, Setúbal",
                fiscal_number: "99.999.999/9999-99",
            )
            Client.create!(
                name: "Continente",
                email: "contato@continente.pt",
                phone: "999999999",
                website: "http://www.continente.pt",
                address: "Almoçageme, Sintra",
                fiscal_number: "99.999.999/9999-99",
            )
            Client.create!(
                name: "Worten",
                email: "contato@worten.pt",
                phone: "999999999",
                website: "http://www.worten.pt",
                address: "Entre Campos, Lisboa",
                fiscal_number: "99.999.999/9999-99",
            )

        puts "CLIENTS criados com sucesso!"
    end

end
