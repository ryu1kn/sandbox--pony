actor Main
  new create(env: Env) =>
    let w = Wombat("foo")
    w.set_hunger(3)
    env.out.print(w.describe())

class Wombat
  let name: String
  var _hunger_level: U64

  new create(name': String, hunger_level: U64 = 0) =>
    name = name'
    _hunger_level = hunger_level

  fun ref set_hunger(level: U64): U64 =>
    _hunger_level = level

  fun describe(): String =>
    "Wombat \"" + name + "\" is hungry (" + _hunger_level.string() + ")"

