#include "Box.h"

#include <KinematicBody.hpp>
#include <GDScript.hpp>

void godot::Box::_register_methods()
{
	register_method((char*)"_on_Box_body_entered", &Box::_on_Box_body_entered);
}

void godot::Box::_init() {}

void godot::Box::_on_Box_body_entered(Object* body)
{
	KinematicBody* pKB = Object::cast_to<KinematicBody>(body);
	if (pKB)
		pending_delete = true;
}