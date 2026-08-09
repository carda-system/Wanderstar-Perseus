/// The mission is still loading and we shouldn't allow players to get to it yet
#define MISSION_STATUS_LOADING 0
/// The mission is currently running and should check whenever ticked about objective completion
#define MISSION_STATUS_RUNNING 1
/// The mission is completed and now we give time for the crew to get back home afterward
#define MISSION_STATUS_FINISHED 2
/// The mission area is currently being cleaned up and we should prevent players from going back to it
#define MISSION_STATUS_CLEANING 3
