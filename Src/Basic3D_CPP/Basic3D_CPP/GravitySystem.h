#pragma once

#include "BaseSystem.h"
#include "SimpleComponents.h"
#include "Player.h"

namespace godot
{
	class GravitySystem : public BaseSystem
	{
	public:
		void Update(GravityComponent& gravity, float delta, bool isOnFloor, bool jump)
		{
			if (isOnFloor)
				gravity.speed = jump ? gravity.jumpSpeed : 0;
			else
			{
				float acc = gravity.speed > 0 ? gravity.accUp : gravity.accDown;
				gravity.speed -= acc * delta;
			}
		}

		virtual void operator()(float delta, entt::registry& registry) override
		{
			Input* pInput = Input::get_singleton();
			bool jump = pInput->is_action_pressed("ui_select");

			registry.view<GravityComponent, Player*>().each([&](GravityComponent& gravity, Player* player)
			{
				Update(gravity, delta, player->is_on_floor(), jump);
			});
		}
	};
}