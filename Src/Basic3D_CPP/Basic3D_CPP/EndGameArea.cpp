#include "EndGameArea.h"

#include <RigidBody.hpp>

void godot::EndGameArea::_register_methods()
{
	register_method((char*)"_on_Area_body_entered", &EndGameArea::_on_Area_body_entered);
}

void godot::EndGameArea::_init() {}

void godot::EndGameArea::_on_Area_body_entered(Object* body)
{
	if (Object::cast_to<RigidBody>(body))
		finished = true;
}
