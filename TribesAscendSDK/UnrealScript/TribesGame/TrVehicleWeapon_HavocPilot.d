module UnrealScript.TribesGame.TrVehicleWeapon_HavocPilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrEffect_MovableDecal;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrVehicleWeapon_BurstShot;

extern(C++) interface TrVehicleWeapon_HavocPilot : TrVehicleWeapon_BurstShot
{
	public @property final auto ref TrEffect_MovableDecal m_BombMarkerDecal() { return *cast(TrEffect_MovableDecal*)(cast(size_t)cast(void*)this + 1804); }
	public @property final auto ref MaterialInstanceConstant m_BombMarkerMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1800); }
	public @property final auto ref MaterialInstanceConstant m_BombMarkerTemplate() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1796); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115369], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115370], cast(void*)0, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115371], params.ptr, cast(void*)0);
	}
}
