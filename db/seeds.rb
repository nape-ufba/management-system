# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Role.create([
    {
        name: "Usuário",
        slug: "user"
    },
    {
        name: "Administrador",
        slug: "adm"
    }    
]);

UserType.create({
    name: "Aluno",
    slug: "student"
})

admin = UserType.create({
    name: "Professor",
    slug: "professor"
})

SpecialNeed.create([
    {
        name: "Baixa audição",
    },
    {
        name: "Surdez",
    },
    {
        name: "Sem necessidade especial"
    }    
]);

User.create({
        name: "Administrador",
        email: "admin@nape.com",
        user_type_id: 1,
        role_id: 2,
        encrypted_password: BCrypt::Password.create("admin").to_s
});