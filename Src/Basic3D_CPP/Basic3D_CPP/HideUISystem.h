#pragma once

#include "BaseSystem.h"
#include "SimpleComponents.h"

#include <Panel.hpp>

namespace godot
{
	class HideUISystem : public BaseSystem
	{
	public:
		HideUISystem(entt::registry& registry)
		{
			registry.view<HidableUIComponent>().each([](HidableUIComponent hidable)
			{
				hidable.visible = false;
			});
		}

		virtual void operator()(float delta, entt::registry& registry) override
		{
			registry.view<HidableUIComponent, Panel*>().each([](HidableUIComponent hidable, Panel* pPanel)
			{
				pPanel->set_visible(hidable.visible);
			});
		}
	};
}