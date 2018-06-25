# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     HelloPhoenix.Repo.insert!(%HelloPhoenix.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


alias HelloPhoenix.Repo
alias HelloPhoenix.User

Repo.insert! %User{
  name: "Sebastian Kessler",
  email: "sebastian@herrkessler.de"
}

Repo.insert! %User{
  name: "Heike Kessler",
  email: "heike@herrkessler.de"
}

Repo.insert! %User{
  name: "Jakob Kessler",
  email: "jakob@herrkessler.de"
}

Repo.insert! %User{
  name: "Julian Kessler",
  email: "julian@herrkessler.de"
}