#pragma once

#include "BaseSystem.h"

#include "SimpleComponents.h"
#include "Box.h"

#include "core/math/math_funcs.h"

namespace godot
{
	class RotationSystem : public BaseSystem
	{
	public:
		virtual void operator()(float delta, entt::registry& registry) override
		{
			registry.view<RotationSpeedComponent, Box*>().each([delta](RotationSpeedComponent rotation, Box* pBox)
			{
				pBox->rotate_x(Math::deg2rad(rotation * delta));
				pBox->rotate_y(Math::deg2rad(rotation * delta));
			});
		}
	};
}