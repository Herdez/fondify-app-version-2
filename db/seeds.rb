#################################
# Seed for Model user-treatment
#Userss
@user1 = User.create(name: "herdez", email: "herdez@gmail.com", password: "herdez", admin: 1)
@user2 = User.create(name: "july", email: "july@gmail.com", password: "xochitl", admin: 0)
@user3 = User.create(name: "mario", email: "mario@gmail.com", password: "xochitl", admin: 0)


@project_1 = Project.create(user_id: @user2.id, short_description: "Prueba 1", description: "Proyecto social", image: "Imagen 1", status: 0)
@project_2 = Project.create(user_id: @user3.id, short_description: "Prueba 2", description: "Proyecto empresarial", image: "Imagen 2", status: 1)
@project_3 = Project.create(user_id: @user3.id, short_description: "Prueba 3", description: "Proyecto impacto empresarial", image: "Imagen 3", status: 1)

@faqs_1 = Faq.create(project_id: @project_1.id, question: "¿Cómo puedo participar", answer: "Todos pueden participar")