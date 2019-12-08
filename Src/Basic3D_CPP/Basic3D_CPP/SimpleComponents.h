#pragma once

#include <core/Godot.hpp>

namespace godot
{
	using SpeedComponent = float;
	using MoveComponent = Vector2;
	using RotationSpeedComponent = float;

	struct GravityComponent
	{
		float speed;
		float accUp;
		float accDown;
		float jumpSpeed;
	};

	struct DeletableComponent
	{
		bool pending_delete = false;
	};

	struct PendingDeleteComponent {};

	struct HidableUIComponent
	{
		bool visible;
	};

	struct EndGameComponent
	{
		bool finished = false;
	};
}