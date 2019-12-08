#pragma once

#include <Input.hpp>

#include "entt/entt.hpp"

namespace godot
{
	class BaseSystem
	{
	public:
		virtual void operator()(float delta, entt::registry& registry) = 0;
	};
}
