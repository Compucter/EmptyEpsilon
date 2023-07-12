#pragma once

#include "ecs/entity.h"
#include <vector>

class Database
{
public:
    sp::ecs::Entity parent;

    string name;
    struct KeyValue {
        string key;
        string value;
    };
    std::vector<KeyValue> key_values;
    string description;
    string image;
};