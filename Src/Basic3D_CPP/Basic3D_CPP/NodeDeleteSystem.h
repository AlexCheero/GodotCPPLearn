#pragma once

#include "BaseSystem.h"

#include <Node.hpp>

#include "SimpleComponents.h"

namespace godot
{
	class NodeDeleteSystem : public BaseSystem
	{
		static void OnPendingDeleteComponentConstructed(entt::entity entity, entt::registry& registry, PendingDeleteComponent& comp)
		{
			registry.destroy(entity);
		}
		
	public:
		NodeDeleteSystem(entt::registry& registry)
		{
			//doesn't compiles
			//registry.on_construct<PendingDeleteComponent>().connect<&NodeDeleteSystem::OnPendingDeleteComponentConstructed>();
		}

		virtual void operator()(float delta, entt::registry& registry) override
		{
			registry.view<DeletableComponent*, Node*>().each([&registry](entt::entity entity, DeletableComponent* del, Node* pNode)
			{
				if (!del->pending_delete)
					return;
				
				registry.assign<PendingDeleteComponent>(entity);
				pNode->queue_free();
			});
			
			//use on_construct OnPendingDeleteComponentConstructed when compilation fixed instead
			auto viewToDelete = registry.view<PendingDeleteComponent>();
			registry.destroy(viewToDelete.begin(), viewToDelete.end());
		}
	};
}