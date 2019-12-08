#pragma once

#include "BaseSystem.h"
#include "SimpleComponents.h"

namespace godot
{
	class EndGameSystem : public BaseSystem
	{
	public:
		virtual void operator()(float delta, entt::registry& registry) override
		{
			static bool finished = false;

			if (finished)
				return;

			auto view = registry.view<EndGameComponent*>();
			for (auto entity : view)
			{
				if (!view.get<EndGameComponent*>(entity)->finished)
					continue;

				finished = true;
				break;
			}

			if (finished)
			{
				registry.view <HidableUIComponent>().each([](HidableUIComponent& hidable)
				{
					hidable.visible = true;
				});
			}
		}
	};
}
