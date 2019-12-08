#pragma once

#include <core/Godot.hpp>
#include <Node.hpp>
#include <InputEvent.hpp>

#include "BaseSystem.h"

namespace godot
{
	//maybe rename to world
	class EntityManager : public Node
	{
		GODOT_CLASS(EntityManager, Node)
	private:
		entt::registry registry;
		std::vector<BaseSystem*> m_physics_systems;
		std::vector<BaseSystem*> m_process_systems;

		void CleanUpSystems(std::vector<BaseSystem*>& systems);
		void UpdateSystems(float delta, std::vector<BaseSystem*>& systems);
	public:
		EntityManager() = default;
		virtual ~EntityManager();

		static void _register_methods();
		void _init();
		void _ready();
		void HandleInputEvent(InputEvent* e);
		void _process(float delta);
		void _physics_process(float delta);
	};
}