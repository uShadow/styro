/**
 * An event that the user may want to be notified of, e.g., "You're base is
 * under attack!"
 */
class Alert {
  // TODO write me.
}

/**
 * The rules for what depends on what.
 */
class TechTree {
  List<Agent> _start;
  List<Agent> _available;

  bool canBuild(Buildable buildable) => _available.contains(buildable);

  add(Buildable buldable) {
    // TODO write me
  }
}

/**
 * Place to store information about the world we're playing in (formerly "Map).
 */
class World {
  var _size;

  // TODO write me
}



////////////////////////////////////////////////////////////////////////////////
// ------------------------------ Build Hierarchy --------------------------- //
////////////////////////////////////////////////////////////////////////////////

/**
 * Something you can build (or produce).  Known subclasses include "Unit",
 * "Building", and "Research".
 */
interface Buildable {
  requirements();
  time();
  cost();
  progress();
}

/**
 * An agent/actor in the game, like a unit or an animal roaming around the map
 * (formerly "Entity").
 */
class Agent {
  var _pos;
  var _health;
  var _armor;
  var _alignment;

  bool hurt(int amt) {
  }
}

/**
 * Something that helps you out in some way, e.g., better armor.
 */
class Research {
}

/**
 * An entity that provides resources.
 */
class Resource extends Agent {
}

/**
 * A structure that allows things to be produced (research or units).
 */
class Building extends Agent implements Buildable {
  List<Research> _researches;
  var _waypoint;
  List<Unit> _queue;
  List<Unit> _units;

  abstract void upgrade(Research);

  abstract void build(Unit);
}

/**
 * An agent roaming around the map.
 */
class Unit extends Agent implements Buildable {
  List<Building> _buildables;
  
  moveTo(var pos) {
    // TODO write me
  }

  bool canBuild(Unit unit) => _buildables.contains(unit);

  build(Unit unit) {
    // TODO write me
  }

  attack(Agent entity) {
    // TODO write me
  }
}
