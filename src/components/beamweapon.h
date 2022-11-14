#pragma once

#include "ecs/entity.h"
#include "shipsystem.h"
#include "spaceObjects/spaceObject.h"


class BeamWeaponSys : public ShipSystem {
public:
    class MountPoint {
    public:
        glm::vec3 position;//Visual position on the 3D model where this beam is fired from.

        //Beam configuration
        float arc = 0.0f;
        float direction = 0.0f;
        float range = 0.0f;
        float turret_arc = 0.0f;
        float turret_direction = 0.0f;
        float turret_rotation_rate = 0.0f;
        float cycle_time = 6.0f;
        float damage = 1.0f;//Server side only
        float energy_per_beam_fire = 3.0f;//Server side only
        float heat_per_beam_fire = 0.02f;//Server side only
        glm::u8vec4 arc_color{255, 0, 0, 128};
        glm::u8vec4 arc_color_fire{255, 255, 0, 128};
        EDamageType damage_type = DT_Energy;

        //Beam runtime state
        float cooldown = 0.0f;
        string texture;
    };

    int frequency = 0;
    ESystem system_target = SYS_None;
    sp::ecs::Entity target;

    MountPoint mounts[max_beam_weapons];
};
