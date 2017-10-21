#################################
@user1 = User.create(name: "herdez", email: "herdez@gmail.com", password: "herdez", admin: 1)
@user2 = User.create(name: "july", email: "july@gmail.com", password: "xochitl", admin: 0)
@user3 = User.create(name: "mario", email: "mario@gmail.com", password: "xochitl", admin: 0)


@project_1 = Project.create(user_id: @user2.id, title: "Prueba 1", description: "Proyecto social", image: "3836625_orig.png", status: false)
@project_2 = Project.create(user_id: @user3.id, title: "Prueba 2", description: "Proyecto empresarial", image: "3836625_orig.png", status: true)
@project_3 = Project.create(user_id: @user3.id, title: "Prueba 3", description: "Proyecto impacto empresarial", image: "3836625_orig.png", status: true)

@faqs_1 = Faq.create(project_id: @project_1.id, question: "¿Cómo puedo participar", answer: "Todos pueden participar")