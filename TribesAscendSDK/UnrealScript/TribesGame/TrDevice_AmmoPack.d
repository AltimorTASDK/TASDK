module UnrealScript.TribesGame.TrDevice_AmmoPack;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Pack;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_AmmoPack : TrDevice_Pack
{
public extern(D):
	@property final auto ref
	{
		int m_nAmmoPackMultBelt() { return *cast(int*)(cast(size_t)cast(void*)this + 2176); }
		int m_nAmmoPackMultSecondary() { return *cast(int*)(cast(size_t)cast(void*)this + 2172); }
		int m_nAmmoPackMultPrimary() { return *cast(int*)(cast(size_t)cast(void*)this + 2168); }
	}
final:
	void AddAmmoBuff(TrDevice Dev, float Mult)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrDevice*)params.ptr = Dev;
		*cast(float*)&params[4] = Mult;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80717], params.ptr, cast(void*)0);
	}
	void ApplyAmmoBuff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80720], cast(void*)0, cast(void*)0);
	}
}
