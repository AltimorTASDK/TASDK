module UnrealScript.UTGame.UTSeqAct_DummyWeaponFire;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.UTGame.UTDummyPawn;
import UnrealScript.Engine.Actor;

extern(C++) interface UTSeqAct_DummyWeaponFire : SeqAct_Latent
{
public extern(D):
	@property final
	{
		auto ref
		{
			Actor Target() { return *cast(Actor*)(cast(size_t)cast(void*)this + 268); }
			Rotator MaxSpread() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 272); }
			Actor Origin() { return *cast(Actor*)(cast(size_t)cast(void*)this + 264); }
			int ShotsFired() { return *cast(int*)(cast(size_t)cast(void*)this + 288); }
			ubyte FireMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 260); }
			ScriptClass WeaponClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 256); }
			int ShotsToFire() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
			UTDummyPawn DummyPawn() { return *cast(UTDummyPawn*)(cast(size_t)cast(void*)this + 248); }
		}
		bool bSuppressSounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 284) & 0x1) != 0; }
		bool bSuppressSounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 284) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 284) &= ~0x1; } return val; }
	}
final:
	void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49086], cast(void*)0, cast(void*)0);
	}
	void NotifyDummyFire()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49088], cast(void*)0, cast(void*)0);
	}
	bool Update(float DeltaTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49089], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
