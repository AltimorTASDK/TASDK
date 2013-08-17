module UnrealScript.Engine.PickupFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;

extern(C++) interface PickupFactory : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PickupFactory")); }
	private static __gshared PickupFactory mDefaultProperties;
	@property final static PickupFactory DefaultProperties() { mixin(MGDPC("PickupFactory", "PickupFactory Engine.Default__PickupFactory")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPreBeginPlay;
			ScriptFunction mInitializePickup;
			ScriptFunction mSetInitialState;
			ScriptFunction mShutDown;
			ScriptFunction mSetPickupMesh;
			ScriptFunction mReset;
			ScriptFunction mCheckForErrors;
			ScriptFunction mSetRespawn;
			ScriptFunction mStartSleeping;
			ScriptFunction mDetourWeight;
			ScriptFunction mSpawnCopyFor;
			ScriptFunction mReadyToPickup;
			ScriptFunction mGiveTo;
			ScriptFunction mPickedUpBy;
			ScriptFunction mRecheckValidTouch;
			ScriptFunction mGetRespawnTime;
			ScriptFunction mRespawnEffect;
			ScriptFunction mSetPickupHidden;
			ScriptFunction mSetPickupVisible;
			ScriptFunction mDestroyed;
			ScriptFunction mDelayRespawn;
		}
		public @property static final
		{
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function Engine.PickupFactory.ReplicatedEvent")); }
			ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function Engine.PickupFactory.PreBeginPlay")); }
			ScriptFunction InitializePickup() { mixin(MGF("mInitializePickup", "Function Engine.PickupFactory.InitializePickup")); }
			ScriptFunction SetInitialState() { mixin(MGF("mSetInitialState", "Function Engine.PickupFactory.SetInitialState")); }
			ScriptFunction ShutDown() { mixin(MGF("mShutDown", "Function Engine.PickupFactory.ShutDown")); }
			ScriptFunction SetPickupMesh() { mixin(MGF("mSetPickupMesh", "Function Engine.PickupFactory.SetPickupMesh")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function Engine.PickupFactory.Reset")); }
			ScriptFunction CheckForErrors() { mixin(MGF("mCheckForErrors", "Function Engine.PickupFactory.CheckForErrors")); }
			ScriptFunction SetRespawn() { mixin(MGF("mSetRespawn", "Function Engine.PickupFactory.SetRespawn")); }
			ScriptFunction StartSleeping() { mixin(MGF("mStartSleeping", "Function Engine.PickupFactory.StartSleeping")); }
			ScriptFunction DetourWeight() { mixin(MGF("mDetourWeight", "Function Engine.PickupFactory.DetourWeight")); }
			ScriptFunction SpawnCopyFor() { mixin(MGF("mSpawnCopyFor", "Function Engine.PickupFactory.SpawnCopyFor")); }
			ScriptFunction ReadyToPickup() { mixin(MGF("mReadyToPickup", "Function Engine.PickupFactory.ReadyToPickup")); }
			ScriptFunction GiveTo() { mixin(MGF("mGiveTo", "Function Engine.PickupFactory.GiveTo")); }
			ScriptFunction PickedUpBy() { mixin(MGF("mPickedUpBy", "Function Engine.PickupFactory.PickedUpBy")); }
			ScriptFunction RecheckValidTouch() { mixin(MGF("mRecheckValidTouch", "Function Engine.PickupFactory.RecheckValidTouch")); }
			ScriptFunction GetRespawnTime() { mixin(MGF("mGetRespawnTime", "Function Engine.PickupFactory.GetRespawnTime")); }
			ScriptFunction RespawnEffect() { mixin(MGF("mRespawnEffect", "Function Engine.PickupFactory.RespawnEffect")); }
			ScriptFunction SetPickupHidden() { mixin(MGF("mSetPickupHidden", "Function Engine.PickupFactory.SetPickupHidden")); }
			ScriptFunction SetPickupVisible() { mixin(MGF("mSetPickupVisible", "Function Engine.PickupFactory.SetPickupVisible")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function Engine.PickupFactory.Destroyed")); }
			ScriptFunction DelayRespawn() { mixin(MGF("mDelayRespawn", "Function Engine.PickupFactory.DelayRespawn")); }
		}
	}
	static struct Pickup
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State Engine.PickupFactory.Pickup")); }
	}
	static struct WaitingForMatch
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State Engine.PickupFactory.WaitingForMatch")); }
	}
	static struct Sleeping
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State Engine.PickupFactory.Sleeping")); }
	}
	static struct Disabled
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State Engine.PickupFactory.Disabled")); }
	}
	@property final
	{
		auto ref
		{
			PickupFactory OriginalFactory() { mixin(MGPC("PickupFactory", 716)); }
			PickupFactory ReplacementFactory() { mixin(MGPC("PickupFactory", 712)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PickupMesh'!
			float MaxDesireability() { mixin(MGPC("float", 704)); }
			float RespawnEffectTime() { mixin(MGPC("float", 700)); }
			ScriptClass InventoryType() { mixin(MGPC("ScriptClass", 696)); }
		}
		bool bRespawnPaused() { mixin(MGBPC(692, 0x10)); }
		bool bRespawnPaused(bool val) { mixin(MSBPC(692, 0x10)); }
		bool bIsSuperItem() { mixin(MGBPC(692, 0x8)); }
		bool bIsSuperItem(bool val) { mixin(MSBPC(692, 0x8)); }
		bool bPredictRespawns() { mixin(MGBPC(692, 0x4)); }
		bool bPredictRespawns(bool val) { mixin(MSBPC(692, 0x4)); }
		bool bPickupHidden() { mixin(MGBPC(692, 0x2)); }
		bool bPickupHidden(bool val) { mixin(MSBPC(692, 0x2)); }
		bool bOnlyReplicateHidden() { mixin(MGBPC(692, 0x1)); }
		bool bOnlyReplicateHidden(bool val) { mixin(MSBPC(692, 0x1)); }
	}
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void InitializePickup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializePickup, cast(void*)0, cast(void*)0);
	}
	void SetInitialState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInitialState, cast(void*)0, cast(void*)0);
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShutDown, cast(void*)0, cast(void*)0);
	}
	void SetPickupMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupMesh, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	bool CheckForErrors()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckForErrors, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetRespawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRespawn, cast(void*)0, cast(void*)0);
	}
	void StartSleeping()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartSleeping, cast(void*)0, cast(void*)0);
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
	void SpawnCopyFor(Pawn Recipient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnCopyFor, params.ptr, cast(void*)0);
	}
	bool ReadyToPickup(float MaxWait)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = MaxWait;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadyToPickup, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GiveTo(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveTo, params.ptr, cast(void*)0);
	}
	void PickedUpBy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickedUpBy, params.ptr, cast(void*)0);
	}
	void RecheckValidTouch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RecheckValidTouch, cast(void*)0, cast(void*)0);
	}
	float GetRespawnTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRespawnTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void RespawnEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RespawnEffect, cast(void*)0, cast(void*)0);
	}
	void SetPickupHidden()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupHidden, cast(void*)0, cast(void*)0);
	}
	void SetPickupVisible()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupVisible, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	bool DelayRespawn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.DelayRespawn, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
