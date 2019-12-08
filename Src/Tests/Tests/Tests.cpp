#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

#include "core/math/math_funcs.h"

#include "GravitySystem.h"
#include "VelocitySystem.h"

using namespace godot;

#define CHECK_FLOAT_EQ_PRECISION(a, b, epsilon) CHECK(Math::absf(a - b) <= epsilon)
#define CHECK_FLOAT_EQ(a, b, epsilon) CHECK_FLOAT_EQ_PRECISION(a, b, CMP_EPSILON)

TEST_CASE("GravitySystem test")
{
	GravitySystem gs;
	float delta = 1.f;

	SUBCASE("Falling down test")
	{
		GravityComponent gc{ 0, 30, 20, 10 };
		gs.Update(gc, delta, false, false);
		float expectedSpeed = -gc.accDown * delta;
		CHECK_FLOAT_EQ(gc.speed, expectedSpeed);
	}

	SUBCASE("Flying up test")
	{
		const float initialSpeed = 10;
		GravityComponent gc{ initialSpeed, 30, 20, 10 };
		gs.Update(gc, delta, false, false);
		float expectedSpeed = initialSpeed - gc.accUp;
		CHECK_FLOAT_EQ(gc.speed, expectedSpeed);
	}

	SUBCASE("Standing test")
	{
		GravityComponent gc{ 0, 30, 20, 10 };
		gs.Update(gc, delta, true, false);
		float expectedSpeed = -gc.accDown * delta;
		CHECK_FLOAT_EQ(gc.speed, 0);
	}

	SUBCASE("Jumping test")
	{
		GravityComponent gc{ 0, 30, 20, 10 };
		gs.Update(gc, delta, true, true);
		CHECK_FLOAT_EQ(gc.speed, gc.jumpSpeed);
	}
}

TEST_CASE("VelocitySystem test")
{
	VelocitySystem vs;
	SpeedComponent sc = 1.f;
	MoveComponent mc;
	float delta = 1.f;
	
	SUBCASE("Move left test")
	{
		vs.Update(sc, mc, delta, true, false, false, false);
		CHECK_FLOAT_EQ(mc.x, -sc * delta);
	}

	SUBCASE("Move right test")
	{
		vs.Update(sc, mc, delta, false, true, false, false);
		CHECK_FLOAT_EQ(mc.x, sc * delta);
	}

	SUBCASE("Move up test")
	{
		vs.Update(sc, mc, delta, false, false, true, false);
		CHECK_FLOAT_EQ(mc.y, -sc * delta);
	}

	SUBCASE("Move down test")
	{
		vs.Update(sc, mc, delta, false, false, false, true);
		CHECK_FLOAT_EQ(mc.y, sc * delta);
	}

	SUBCASE("Stand still test")
	{
		vs.Update(sc, mc, delta, false, false, false, false);
		CHECK_FLOAT_EQ(mc.x, 0);
		CHECK_FLOAT_EQ(mc.y, 0);
	}

	SUBCASE("Move left right test")
	{
		vs.Update(sc, mc, delta, true, true, false, false);
		CHECK_FLOAT_EQ(mc.x, 0);
		CHECK_FLOAT_EQ(mc.y, 0);
	}

	SUBCASE("Move up down test")
	{
		vs.Update(sc, mc, delta, false, false, true, true);
		CHECK_FLOAT_EQ(mc.x, 0);
		CHECK_FLOAT_EQ(mc.y, 0);
	}

	Vector2 diag(1, 1);
	
	SUBCASE("Move up left test")
	{
		diag.normalize();
		vs.Update(sc, mc, delta, true, false, true, false);
		CHECK_FLOAT_EQ(mc.length(), diag.length());
		CHECK_FLOAT_EQ(mc.x, -diag.x);
		CHECK_FLOAT_EQ(mc.y, -diag.y);
	}

	SUBCASE("Move up right test")
	{
		diag.normalize();
		vs.Update(sc, mc, delta, false, true, true, false);
		CHECK_FLOAT_EQ(mc.length(), diag.length());
		CHECK_FLOAT_EQ(mc.x, diag.x);
		CHECK_FLOAT_EQ(mc.y, -diag.y);
	}

	SUBCASE("Move down left test")
	{
		diag.normalize();
		vs.Update(sc, mc, delta, true, false, false, true);
		CHECK_FLOAT_EQ(mc.length(), diag.length());
		CHECK_FLOAT_EQ(mc.x, -diag.x);
		CHECK_FLOAT_EQ(mc.y, diag.y);
	}

	SUBCASE("Move down right test")
	{
		diag.normalize();
		vs.Update(sc, mc, delta, false, true, false, true);
		CHECK_FLOAT_EQ(mc.length(), diag.length());
		CHECK_FLOAT_EQ(mc.x, diag.x);
		CHECK_FLOAT_EQ(mc.y, diag.y);
	}
}
