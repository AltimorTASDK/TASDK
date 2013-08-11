module UnrealScript.UTGame.UTSeqAct_DummyWeaponFire;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.UTGame.UTDummyPawn;
import UnrealScript.Engine.Actor;

extern(C++) interface UTSeqAct_DummyWeaponFire : SeqAct_Latent
{
	public @property final bool bSuppressSounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 284) & 0x1) != 0; }
	public @property final bool bSuppressSounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 284) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 284) &= ~0x1; } return val; }
	public @property final auto ref Actor Target() { return *cast(Actor*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref Rotator MaxSpread() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref Actor Origin() { return *cast(Actor*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref int ShotsFired() { return *cast(int*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref ubyte FireMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref ScriptClass WeaponClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref int ShotsToFire() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref UTDummyPawn DummyPawn() { return *cast(UTDummyPawn*)(cast(size_t)cast(void*)this + 248); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49086], cast(void*)0, cast(void*)0);
	}
	final void NotifyDummyFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49088], cast(void*)0, cast(void*)0);
	}
	final bool Update(float DeltaTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49089], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
