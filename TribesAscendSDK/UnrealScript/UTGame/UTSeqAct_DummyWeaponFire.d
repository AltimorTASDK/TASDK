module UnrealScript.UTGame.UTSeqAct_DummyWeaponFire;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.UTGame.UTDummyPawn;
import UnrealScript.Engine.Actor;

extern(C++) interface UTSeqAct_DummyWeaponFire : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_DummyWeaponFire")); }
	private static __gshared UTSeqAct_DummyWeaponFire mDefaultProperties;
	@property final static UTSeqAct_DummyWeaponFire DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqAct_DummyWeaponFire)("UTSeqAct_DummyWeaponFire UTGame.Default__UTSeqAct_DummyWeaponFire")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mActivated;
			ScriptFunction mNotifyDummyFire;
			ScriptFunction mUpdate;
		}
		public @property static final
		{
			ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqAct_DummyWeaponFire.Activated")); }
			ScriptFunction NotifyDummyFire() { return mNotifyDummyFire ? mNotifyDummyFire : (mNotifyDummyFire = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqAct_DummyWeaponFire.NotifyDummyFire")); }
			ScriptFunction Update() { return mUpdate ? mUpdate : (mUpdate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqAct_DummyWeaponFire.Update")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
	void NotifyDummyFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyDummyFire, cast(void*)0, cast(void*)0);
	}
	bool Update(float DeltaTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Update, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
