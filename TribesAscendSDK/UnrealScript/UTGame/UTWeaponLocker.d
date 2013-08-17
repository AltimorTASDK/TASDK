module UnrealScript.UTGame.UTWeaponLocker;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UTGame.UTPickupFactory;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTWeaponLocker : UTPickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTWeaponLocker")); }
	private static __gshared UTWeaponLocker mDefaultProperties;
	@property final static UTWeaponLocker DefaultProperties() { mixin(MGDPC("UTWeaponLocker", "UTWeaponLocker UTGame.Default__UTWeaponLocker")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mBotDesireability;
			ScriptFunction mSetInitialState;
			ScriptFunction mShouldCamp;
			ScriptFunction mAddCustomer;
			ScriptFunction mHasCustomer;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mInitializeWeapons;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mReplaceWeapon;
			ScriptFunction mReset;
			ScriptFunction mGetHumanReadableName;
			ScriptFunction mDetourWeight;
			ScriptFunction mInitializePickup;
			ScriptFunction mShowActive;
			ScriptFunction mNotifyLocalPlayerDead;
			ScriptFunction mSetPlayerNearby;
			ScriptFunction mDestroyWeapons;
			ScriptFunction mShowHidden;
		}
		public @property static final
		{
			ScriptFunction BotDesireability() { mixin(MGF("mBotDesireability", "Function UTGame.UTWeaponLocker.BotDesireability")); }
			ScriptFunction SetInitialState() { mixin(MGF("mSetInitialState", "Function UTGame.UTWeaponLocker.SetInitialState")); }
			ScriptFunction ShouldCamp() { mixin(MGF("mShouldCamp", "Function UTGame.UTWeaponLocker.ShouldCamp")); }
			ScriptFunction AddCustomer() { mixin(MGF("mAddCustomer", "Function UTGame.UTWeaponLocker.AddCustomer")); }
			ScriptFunction HasCustomer() { mixin(MGF("mHasCustomer", "Function UTGame.UTWeaponLocker.HasCustomer")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function UTGame.UTWeaponLocker.PostBeginPlay")); }
			ScriptFunction InitializeWeapons() { mixin(MGF("mInitializeWeapons", "Function UTGame.UTWeaponLocker.InitializeWeapons")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function UTGame.UTWeaponLocker.ReplicatedEvent")); }
			ScriptFunction ReplaceWeapon() { mixin(MGF("mReplaceWeapon", "Function UTGame.UTWeaponLocker.ReplaceWeapon")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function UTGame.UTWeaponLocker.Reset")); }
			ScriptFunction GetHumanReadableName() { mixin(MGF("mGetHumanReadableName", "Function UTGame.UTWeaponLocker.GetHumanReadableName")); }
			ScriptFunction DetourWeight() { mixin(MGF("mDetourWeight", "Function UTGame.UTWeaponLocker.DetourWeight")); }
			ScriptFunction InitializePickup() { mixin(MGF("mInitializePickup", "Function UTGame.UTWeaponLocker.InitializePickup")); }
			ScriptFunction ShowActive() { mixin(MGF("mShowActive", "Function UTGame.UTWeaponLocker.ShowActive")); }
			ScriptFunction NotifyLocalPlayerDead() { mixin(MGF("mNotifyLocalPlayerDead", "Function UTGame.UTWeaponLocker.NotifyLocalPlayerDead")); }
			ScriptFunction SetPlayerNearby() { mixin(MGF("mSetPlayerNearby", "Function UTGame.UTWeaponLocker.SetPlayerNearby")); }
			ScriptFunction DestroyWeapons() { mixin(MGF("mDestroyWeapons", "Function UTGame.UTWeaponLocker.DestroyWeapons")); }
			ScriptFunction ShowHidden() { mixin(MGF("mShowHidden", "Function UTGame.UTWeaponLocker.ShowHidden")); }
		}
	}
	struct WeaponEntry
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.UTWeaponLocker.WeaponEntry")); }
		@property final auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PickupMesh'!
			ScriptClass WeaponClass() { mixin(MGPS("ScriptClass", 0)); }
		}
	}
	struct PawnToucher
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.UTWeaponLocker.PawnToucher")); }
		@property final auto ref
		{
			float NextTouchTime() { mixin(MGPS("float", 4)); }
			Pawn P() { mixin(MGPS("Pawn", 0)); }
		}
	}
	struct ReplacementWeaponEntry
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.UTWeaponLocker.ReplacementWeaponEntry")); }
		@property final
		{
			@property final auto ref ScriptClass WeaponClass() { mixin(MGPS("ScriptClass", 4)); }
			bool bReplaced() { mixin(MGBPS(0, 0x1)); }
			bool bReplaced(bool val) { mixin(MSBPS(0, 0x1)); }
		}
	}
	static struct LockerPickup
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTWeaponLocker.LockerPickup")); }
	}
	static struct Disabled
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTWeaponLocker.Disabled")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UTWeaponLocker.WeaponEntry) Weapons() { mixin(MGPC("ScriptArray!(UTWeaponLocker.WeaponEntry)", 944)); }
			ScriptArray!(Vector) LockerPositions() { mixin(MGPC("ScriptArray!(Vector)", 1004)); }
			ScriptArray!(UTWeaponLocker.PawnToucher) Customers() { mixin(MGPC("ScriptArray!(UTWeaponLocker.PawnToucher)", 1028)); }
			float NextProximityCheckTime() { mixin(MGPC("float", 1076)); }
			float ScaleRate() { mixin(MGPC("float", 1072)); }
			ParticleSystem WeaponSpawnEffectTemplate() { mixin(MGPC("ParticleSystem", 1068)); }
			ParticleSystem ActiveEffectTemplate() { mixin(MGPC("ParticleSystem", 1064)); }
			ParticleSystem InactiveEffectTemplate() { mixin(MGPC("ParticleSystem", 1060)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ProximityEffect'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'AmbientEffect'!
			float ProximityDistanceSquared() { mixin(MGPC("float", 1048)); }
			float CurrentWeaponScaleX() { mixin(MGPC("float", 1044)); }
			ScriptString LockerString() { mixin(MGPC("ScriptString", 1016)); }
			UTWeaponLocker.ReplacementWeaponEntry ReplacementWeapons() { mixin(MGPC("UTWeaponLocker.ReplacementWeaponEntry", 956)); }
		}
		bool bScalingUp() { mixin(MGBPC(1040, 0x4)); }
		bool bScalingUp(bool val) { mixin(MSBPC(1040, 0x4)); }
		bool bPlayerNearby() { mixin(MGBPC(1040, 0x2)); }
		bool bPlayerNearby(bool val) { mixin(MSBPC(1040, 0x2)); }
		bool bIsActive() { mixin(MGBPC(1040, 0x1)); }
		bool bIsActive(bool val) { mixin(MSBPC(1040, 0x1)); }
	}
final:
	float BotDesireability(Pawn Bot, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Bot;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotDesireability, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	void SetInitialState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInitialState, cast(void*)0, cast(void*)0);
	}
	bool ShouldCamp(UTBot B, float MaxWait)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(float*)&params[4] = MaxWait;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldCamp, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool AddCustomer(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCustomer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool HasCustomer(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasCustomer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void InitializeWeapons()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeWeapons, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void ReplaceWeapon(int Index, ScriptClass NewWeaponClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptClass*)&params[4] = NewWeaponClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplaceWeapon, params.ptr, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHumanReadableName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetourWeight, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	void InitializePickup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializePickup, cast(void*)0, cast(void*)0);
	}
	void ShowActive()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowActive, cast(void*)0, cast(void*)0);
	}
	void NotifyLocalPlayerDead(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyLocalPlayerDead, params.ptr, cast(void*)0);
	}
	void SetPlayerNearby(PlayerController PC, bool bNewPlayerNearby, bool bPlayEffects)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(bool*)&params[4] = bNewPlayerNearby;
		*cast(bool*)&params[8] = bPlayEffects;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlayerNearby, params.ptr, cast(void*)0);
	}
	void DestroyWeapons()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyWeapons, cast(void*)0, cast(void*)0);
	}
	void ShowHidden()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowHidden, cast(void*)0, cast(void*)0);
	}
}
