#include "EntityManager.h"

#include "VelocitySystem.h"
#include "GravitySystem.h"
#include "MoveSystem.h"
#include "RotationSystem.h"
#include "NodeDeleteSystem.h"
#include "HideUISystem.h"
#include "EndGameSystem.h"
#include "EndGameArea.h"

#include <SceneTree.hpp>
#include <Panel.hpp>

void godot::EntityManager::CleanUpSystems(std::vector<BaseSystem*>& systems)
{
	for (BaseSystem* system : systems)
	{
		if (!system)
			continue;
		delete system;
		system = nullptr;
	}
}

void godot::EntityManager::UpdateSystems(float delta, std::vector<BaseSystem*>& systems)
{
	for (BaseSystem* system : systems)
		(*system)(delta, registry);
}

godot::EntityManager::~EntityManager()
{
	CleanUpSystems(m_process_systems);
	CleanUpSystems(m_physics_systems);
}

void godot::EntityManager::_register_methods()
{
	register_method((char*)"_init", &EntityManager::_init);
	register_method((char*)"_ready", &EntityManager::_ready);
	register_method((char*)"_input", &EntityManager::HandleInputEvent);
	register_method((char*)"_process", &EntityManager::_process);
	register_method((char*)"_physics_process", &EntityManager::_physics_process);
}

void godot::EntityManager::_init()
{
	m_physics_systems.insert(m_physics_systems.end(), new VelocitySystem());
	m_physics_systems.insert(m_physics_systems.end(), new GravitySystem());
	m_physics_systems.insert(m_physics_systems.end(), new MoveSystem());

	m_process_systems.insert(m_process_systems.end(), new NodeDeleteSystem(registry));
	m_process_systems.insert(m_process_systems.end(), new RotationSystem());
	m_process_systems.insert(m_process_systems.end(), new HideUISystem(registry));
	m_process_systems.insert(m_process_systems.end(), new EndGameSystem());
}

void godot::EntityManager::_ready()
{
	//----begin Player entity----
	entt::entity entity = registry.create();
	registry.assign<SpeedComponent>(entity, 600.f);
	registry.assign<MoveComponent>(entity, Vector2(0, 0));
	registry.assign<GravityComponent>(entity, GravityComponent{ 0, 30, 20, 10 });

	Player* pPlayerNode = Object::cast_to<Player>(get_node("Player"));
	registry.assign<Player*>(entity, pPlayerNode);
	//------end Player entity----

	//----begin Box entity----
	entity = registry.create();
	registry.assign<RotationSpeedComponent>(entity, 60.f);

	Box* pBoxNode = Object::cast_to<Box>(get_node("Box"));
	registry.assign<Box*>(entity, pBoxNode);
	registry.assign<Node*>(entity, Object::cast_to<Node>(pBoxNode));
	registry.assign<DeletableComponent*>(entity, static_cast<DeletableComponent*>(pBoxNode));
	//------end Box entity----

	//----begin Panel entity----
	entity = registry.create();
	registry.assign<HidableUIComponent>(entity);

	Panel* pPanelNode = Object::cast_to<Panel>(get_node("Panel"));
	registry.assign<Panel*>(entity, pPanelNode);
	//------end Panel entity----

	//----begin EndGameArea entity----
	entity = registry.create();
	EndGameArea* pEGANode = Object::cast_to<EndGameArea>(get_node("EndPlatform/Area"));
	registry.assign<EndGameComponent*>(entity, static_cast<EndGameComponent*>(pEGANode));
	//------end EndGameArea entity----
}

void godot::EntityManager::HandleInputEvent(InputEvent* e)
{
	if (e->is_action_pressed("ui_accept"))
		//todo reload registry
		get_tree()->reload_current_scene();
	else if (e->is_action_pressed("ui_cancel"))
		get_tree()->quit();
}

void godot::EntityManager::_process(float delta)
{
	UpdateSystems(delta, m_process_systems);
}

void godot::EntityManager::_physics_process(float delta)
{
	UpdateSystems(delta, m_physics_systems);
}
