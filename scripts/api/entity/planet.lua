--- A Planet is a spherical piece of space terrain that can orbit other SpaceObjects.
--- Each Planet has separate textures for its surface, atmosphere, and cloud layers.
--- Several planetary textures are included in the resources/planets/ directory.
--- Planets can collide with objects and run callback functions upon collisions.
--- Examples:
--- -- Creates a small planetary system with a sun, a planet orbiting the sun, and a moon orbiting the planet.
--- sun = Planet():setPosition(5000, 15000):setPlanetRadius(1000):setPlanetAtmosphereTexture("planets/star-1.png"):setPlanetAtmosphereColor(1.0, 1.0, 1.0)
--- planet = Planet():setPosition(5000, 5000):setPlanetRadius(3000):setPlanetSurfaceTexture("planets/planet-1.png")
--- planet:setPlanetCloudTexture("planets/clouds-1.png"):setPlanetAtmosphereTexture("planets/atmosphere.png"):setPlanetAtmosphereColor(0.2, 0.2, 1.0):setOrbit(sun,40)
--- moon = Planet():setPosition(5000, 0):setPlanetRadius(1000):setPlanetSurfaceTexture("planets/moon-1.png"):setAxialRotationTime(20.0):setOrbit(planet,20)
function Planet()
    local e = createEntity()
    e.transform = {rotation=random(0, 360)}
    e.radar_signature = {gravity=0.5, biological=0.3}
    return e
end

local Entity = getLuaEntityFunctionTable()
--- Sets this Planet's atmospheric effect color.
--- Example: planet:setPlanetAtmosphereColor(0.2,0.2,1.0) -- sets a blue atmosphere
function Entity:setPlanetAtmosphereColor(r, g, b)
    --TODO
    return self
end
--- Sets this Planet's atmospheric effect texture.
--- Valid values are filenames of PNG files relative to the resources/ directory.
--- Optional; if defined, atmosphere textures should be transparent or translucent.
--- For stars, you can set an atmosphere texture such as planets/star-1.png with no surface texture.
--- Example: planet:setPlanetSurfaceTexture("planets/atmosphere.png")
function Entity:setPlanetAtmosphereTexture(texture)
    --TODO
    return self
end
--- Sets this Planet's surface texture.
--- Valid values are filenames of PNG files relative to the resources/ directory.
--- Optional; if defined, surface textures should be opaque and use a 2:1-ratio equirectangular projection.
--- Example: planet:setPlanetSurfaceTexture("planets/planet-1.png")
function Entity:setPlanetSurfaceTexture(texture)
    --TODO
    return self
end
--- Sets this Planet's cloud layer effect texture, which rotates independently of the planet.
--- Valid values are filenames of PNG files relative to the resources/ directory.
--- Optional; if defined, cloud layer textures should be transparent or translucent.
--- Example: planet:setPlanetCloudTexture("planets/cloud-1.png")
function Entity:setPlanetCloudTexture(texture)
    --TODO
    return self
end
--- Returns this Planet's radius.
--- Example: planet:getPlanetRadius()
function Entity:getPlanetRadius()
    --[[TODO
        this->planet_size = size;
        this->cloud_size = size * 1.05f;
        this->atmosphere_size = size * 1.2f;
    --]]
    return 1000.0
end
--- Sets this Planet's radius, which also sets:
--- - its cloud radius to 1.05x this value
--- - its atmosphere radius to 1.2x this value
--- - its collision size to a function of this value and the planet's z-position
--- Defaults to 5000 (5U).
--- Example: planet:setPlanetRadius(2000)
function Entity:setPlanetRadius()
    --TODO
    return self
end
--- Sets this Planet's collision radius.
--- Defaults to a function of the Planet's radius and its z-position.
--- AI behaviors use this size to plot routes that try to avoid colliding with this Planet.
--- Example: planet:getCollisionSize()
function Entity:getCollisionSize()
    --TODO
    return 0.0
end
--- Sets this Planet's cloud radius, overriding Planet:setPlanetRadius().
--- Defaults to 1.05x this Planet's radius.
--- If this value isn't larger than the Planet's radius, the cloud layer won't be visible.
--- Example: planet:setPlanetCloudRadius(2500) -- sets this Planet's cloud radius to 2.5U
function Entity:setPlanetCloudRadius(radius)
    --TODO
    return self
end
--- Sets the z-position of this Planet, the distance by which it's offset above (positive) or below (negative) the movement plane.
--- This value also modifies the Planet's collision radius.
--- Defaults to 0.
--- Example: planet:setDistanceFromMovementPlane(-500) -- sets the planet 0.5U below the movement plane
function Entity:setDistanceFromMovementPlane(z)
    --TODO
    return self
end
--- Sets this Planet's axial rotation time, in degrees per tick.
--- Defaults to 0.
--- Example: planet:setAxialRotationTime(20)
function Entity:setAxialRotationTime()
    --TODO: set spin
    return self
end
--- Sets a SpaceObject around which this Planet orbits, as well as its orbital period in orbital degrees per tick.
--- Example: moon:setOrbit(planet, 20)
function Entity:setOrbit(target, time)
    --TODO: set orbit
    return self
end
