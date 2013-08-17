module UnrealScript.UTGame.UTSeqAct_DummyWeaponFire;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.UTGame.UTDummyPawn;
import UnrealScript.Engine.Actor;

extern(C++) interface UTSeqAct_DummyWeaponFire : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSeqAct_DummyWeaponFire")); }
	private static __gshared UTSeqAct_DummyWeaponFire mDefaultProperties;
	@property final static UTSeqAct_DummyWeaponFire DefaultProperties() { mixin(MGDPC("UTSeqAct_DummyWeaponFire", "UTSeqAct_DummyWeaponFire UTGame.Default__UTSeqAct_DummyWeaponFire")); }
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
			ScriptFunction Activated() { mixin(MGF("mActivated", "Function UTGame.UTSeqAct_DummyWeaponFire.Activated")); }
			ScriptFunction NotifyDummyFire() { mixin(MGF("mNotifyDummyFire", "Function UTGame.UTSeqAct_DummyWeaponFire.NotifyDummyFire")); }
			ScriptFunction Update() { mixin(MGF("mUpdate", "Function UTGame.UTSeqAct_DummyWeaponFire.Update")); }
		}
	}
	@property final
	{
		auto ref
		{
			Actor Target() { mixin(MGPC("Actor", 268)); }
			Rotator MaxSpread() { mixin(MGPC("Rotator", 272)); }
			Actor Origin() { mixin(MGPC("Actor", 264)); }
			int ShotsFired() { mixin(MGPC("int", 288)); }
			ubyte FireMode() { mixin(MGPC("ubyte", 260)); }
			ScriptClass WeaponClass() { mixin(MGPC("ScriptClass", 256)); }
			int ShotsToFire() { mixin(MGPC("int", 252)); }
			UTDummyPawn DummyPawn() { mixin(MGPC("UTDummyPawn", 248)); }
		}
		bool bSuppressSounds() { mixin(MGBPC(284, 0x1)); }
		bool bSuppressSounds(bool val) { mixin(MSBPC(284, 0x1)); }
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
