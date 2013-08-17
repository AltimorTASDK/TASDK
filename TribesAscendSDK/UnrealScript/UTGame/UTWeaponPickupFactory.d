module UnrealScript.UTGame.UTWeaponPickupFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTWeaponLocker;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UTGame.UTPickupFactory;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTWeaponPickupFactory : UTPickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTWeaponPickupFactory")()); }
	private static __gshared UTWeaponPickupFactory mDefaultProperties;
	@property final static UTWeaponPickupFactory DefaultProperties() { mixin(MGDPC!(UTWeaponPickupFactory, "UTWeaponPickupFactory UTGame.Default__UTWeaponPickupFactory")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAllowPickup;
			ScriptFunction mInitializePickup;
			ScriptFunction mSetPickupVisible;
			ScriptFunction mSetPickupHidden;
			ScriptFunction mSetPickupMesh;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mCheckForErrors;
			ScriptFunction mSetWeaponStay;
			ScriptFunction mStartSleeping;
			ScriptFunction mAddCustomer;
			ScriptFunction mHasCustomer;
			ScriptFunction mPickedUpBy;
			ScriptFunction mSpawnCopyFor;
			ScriptFunction mShowActive;
			ScriptFunction mShowHidden;
			ScriptFunction mNotifyLocalPlayerDead;
		}
		public @property static final
		{
			ScriptFunction AllowPickup() { mixin(MGF!("mAllowPickup", "Function UTGame.UTWeaponPickupFactory.AllowPickup")()); }
			ScriptFunction InitializePickup() { mixin(MGF!("mInitializePickup", "Function UTGame.UTWeaponPickupFactory.InitializePickup")()); }
			ScriptFunction SetPickupVisible() { mixin(MGF!("mSetPickupVisible", "Function UTGame.UTWeaponPickupFactory.SetPickupVisible")()); }
			ScriptFunction SetPickupHidden() { mixin(MGF!("mSetPickupHidden", "Function UTGame.UTWeaponPickupFactory.SetPickupHidden")()); }
			ScriptFunction SetPickupMesh() { mixin(MGF!("mSetPickupMesh", "Function UTGame.UTWeaponPickupFactory.SetPickupMesh")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function UTGame.UTWeaponPickupFactory.ReplicatedEvent")()); }
			ScriptFunction CheckForErrors() { mixin(MGF!("mCheckForErrors", "Function UTGame.UTWeaponPickupFactory.CheckForErrors")()); }
			ScriptFunction SetWeaponStay() { mixin(MGF!("mSetWeaponStay", "Function UTGame.UTWeaponPickupFactory.SetWeaponStay")()); }
			ScriptFunction StartSleeping() { mixin(MGF!("mStartSleeping", "Function UTGame.UTWeaponPickupFactory.StartSleeping")()); }
			ScriptFunction AddCustomer() { mixin(MGF!("mAddCustomer", "Function UTGame.UTWeaponPickupFactory.AddCustomer")()); }
			ScriptFunction HasCustomer() { mixin(MGF!("mHasCustomer", "Function UTGame.UTWeaponPickupFactory.HasCustomer")()); }
			ScriptFunction PickedUpBy() { mixin(MGF!("mPickedUpBy", "Function UTGame.UTWeaponPickupFactory.PickedUpBy")()); }
			ScriptFunction SpawnCopyFor() { mixin(MGF!("mSpawnCopyFor", "Function UTGame.UTWeaponPickupFactory.SpawnCopyFor")()); }
			ScriptFunction ShowActive() { mixin(MGF!("mShowActive", "Function UTGame.UTWeaponPickupFactory.ShowActive")()); }
			ScriptFunction ShowHidden() { mixin(MGF!("mShowHidden", "Function UTGame.UTWeaponPickupFactory.ShowHidden")()); }
			ScriptFunction NotifyLocalPlayerDead() { mixin(MGF!("mNotifyLocalPlayerDead", "Function UTGame.UTWeaponPickupFactory.NotifyLocalPlayerDead")()); }
		}
	}
	static struct Pickup
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTWeaponPickupFactory.Pickup")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UTWeaponLocker.PawnToucher) Customers() { mixin(MGPC!("ScriptArray!(UTWeaponLocker.PawnToucher)", 960)()); }
			float WeaponPickupScaling() { mixin(MGPC!("float", 956)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'BaseGlow'!
			ScriptClass WeaponPickupClass() { mixin(MGPC!("ScriptClass", 944)()); }
		}
		bool bIsActive() { mixin(MGBPC!(948, 0x2)()); }
		bool bIsActive(bool val) { mixin(MSBPC!(948, 0x2)()); }
		bool bWeaponStay() { mixin(MGBPC!(948, 0x1)()); }
		bool bWeaponStay(bool val) { mixin(MSBPC!(948, 0x1)()); }
	}
final:
	bool AllowPickup(UTBot Bot)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = Bot;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowPickup, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void InitializePickup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializePickup, cast(void*)0, cast(void*)0);
	}
	void SetPickupVisible()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupVisible, cast(void*)0, cast(void*)0);
	}
	void SetPickupHidden()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupHidden, cast(void*)0, cast(void*)0);
	}
	void SetPickupMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupMesh, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	bool CheckForErrors()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckForErrors, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetWeaponStay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetWeaponStay, cast(void*)0, cast(void*)0);
	}
	void StartSleeping()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartSleeping, cast(void*)0, cast(void*)0);
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
	void PickedUpBy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickedUpBy, params.ptr, cast(void*)0);
	}
	void SpawnCopyFor(Pawn Recipient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnCopyFor, params.ptr, cast(void*)0);
	}
	void ShowActive()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowActive, cast(void*)0, cast(void*)0);
	}
	void ShowHidden()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowHidden, cast(void*)0, cast(void*)0);
	}
	void NotifyLocalPlayerDead(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyLocalPlayerDead, params.ptr, cast(void*)0);
	}
}
