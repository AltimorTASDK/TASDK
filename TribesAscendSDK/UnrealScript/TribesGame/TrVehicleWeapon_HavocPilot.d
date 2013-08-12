module UnrealScript.TribesGame.TrVehicleWeapon_HavocPilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrEffect_MovableDecal;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrVehicleWeapon_BurstShot;

extern(C++) interface TrVehicleWeapon_HavocPilot : TrVehicleWeapon_BurstShot
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleWeapon_HavocPilot")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDestroyed;
			ScriptFunction mTick;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon_HavocPilot.PostBeginPlay")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon_HavocPilot.Destroyed")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon_HavocPilot.Tick")); }
		}
	}
	@property final auto ref
	{
		TrEffect_MovableDecal m_BombMarkerDecal() { return *cast(TrEffect_MovableDecal*)(cast(size_t)cast(void*)this + 1804); }
		MaterialInstanceConstant m_BombMarkerMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1800); }
		MaterialInstanceConstant m_BombMarkerTemplate() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1796); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
}
