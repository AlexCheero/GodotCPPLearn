#pragma once

#include "BaseSystem.h"
#include "SimpleComponents.h"
#include "Player.h"

namespace godot
{
	class VelocitySystem : public BaseSystem
	{
	public:
		void Update(SpeedComponent speed, MoveComponent& velocity, float delta, bool left, bool right, bool up, bool down)
		{
			velocity = Vector2(0, 0);
			if (left)
				velocity.x -= 1;
			if (right)
				velocity.x += 1;
			if (up)
				velocity.y -= 1;
			if (down)
				velocity.y += 1;

			velocity.normalize();
			velocity *= speed * delta;
		}

		virtual void operator()(float delta, entt::registry& registry) override
		{
			Input* pInput = Input::get_singleton();
			bool left = pInput->is_action_pressed("ui_left");
			bool right = pInput->is_action_pressed("ui_right");
			bool up = pInput->is_action_pressed("ui_up");
			bool down = pInput->is_action_pressed("ui_down");

			registry.view<SpeedComponent, MoveComponent>().each([&](SpeedComponent& speed, MoveComponent& velocity)
			{
				Update(speed, velocity, delta, left, right, up, down);
			});
		}
	};
}