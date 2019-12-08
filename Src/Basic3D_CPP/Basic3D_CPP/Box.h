#pragma once

#include <core/Godot.hpp>
#include <Area.hpp>

#include "SimpleComponents.h"

namespace godot
{
	class Box : public Area, public DeletableComponent
	{
		GODOT_CLASS(Box, Area)
	public:
		static void _register_methods();

		void _init();

		void _on_Box_body_entered(Object* body);
	};
}
