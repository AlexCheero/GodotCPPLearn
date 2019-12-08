#pragma once

#include "BaseSystem.h"
#include "SimpleComponents.h"
#include "Player.h"

namespace godot
{
	class MoveSystem : public BaseSystem
	{
	public:
		virtual void operator()(float delta, entt::registry& registry) override
		{
			registry.view<MoveComponent, GravityComponent, Player*>().each([](MoveComponent& velocity, GravityComponent& gravity, Player* player)
			{
				Vector3 movement(velocity.x, gravity.speed, velocity.y);
				player->move_and_slide(movement, Vector3(0, 1, 0));
			});
		}
	};
}