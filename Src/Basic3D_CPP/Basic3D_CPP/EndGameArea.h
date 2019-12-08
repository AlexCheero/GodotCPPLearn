#pragma once

#include <core/Godot.hpp>
#include <Area.hpp>

#include "SimpleComponents.h"

namespace godot
{
	class EndGameArea : public Area, public EndGameComponent
	{
		GODOT_CLASS(EndGameArea, Area)
	public:
		static void _register_methods();
		void _init();
		void _on_Area_body_entered(Object* body);
	};
}