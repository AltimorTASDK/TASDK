module UnrealScript.UTGame.UTWeaponPickupFactory;

import ScriptClasses;
import UnrealScript.UTGame.UTWeaponLocker;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UTGame.UTPickupFactory;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTWeaponPickupFactory : UTPickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTWeaponPickupFactory")); }
	private static __gshared UTWeaponPickupFactory mDefaultProperties;
	@property final static UTWeaponPickupFactory DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTWeaponPickupFactory)("UTWeaponPickupFactory UTGame.Default__UTWeaponPickupFactory")); }
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
			ScriptFunction AllowPickup() { return mAllowPickup ? mAllowPickup : (mAllowPickup = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.AllowPickup")); }
			ScriptFunction InitializePickup() { return mInitializePickup ? mInitializePickup : (mInitializePickup = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.InitializePickup")); }
			ScriptFunction SetPickupVisible() { return mSetPickupVisible ? mSetPickupVisible : (mSetPickupVisible = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.SetPickupVisible")); }
			ScriptFunction SetPickupHidden() { return mSetPickupHidden ? mSetPickupHidden : (mSetPickupHidden = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.SetPickupHidden")); }
			ScriptFunction SetPickupMesh() { return mSetPickupMesh ? mSetPickupMesh : (mSetPickupMesh = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.SetPickupMesh")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.ReplicatedEvent")); }
			ScriptFunction CheckForErrors() { return mCheckForErrors ? mCheckForErrors : (mCheckForErrors = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.CheckForErrors")); }
			ScriptFunction SetWeaponStay() { return mSetWeaponStay ? mSetWeaponStay : (mSetWeaponStay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.SetWeaponStay")); }
			ScriptFunction StartSleeping() { return mStartSleeping ? mStartSleeping : (mStartSleeping = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.StartSleeping")); }
			ScriptFunction AddCustomer() { return mAddCustomer ? mAddCustomer : (mAddCustomer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.AddCustomer")); }
			ScriptFunction HasCustomer() { return mHasCustomer ? mHasCustomer : (mHasCustomer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.HasCustomer")); }
			ScriptFunction PickedUpBy() { return mPickedUpBy ? mPickedUpBy : (mPickedUpBy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.PickedUpBy")); }
			ScriptFunction SpawnCopyFor() { return mSpawnCopyFor ? mSpawnCopyFor : (mSpawnCopyFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.SpawnCopyFor")); }
			ScriptFunction ShowActive() { return mShowActive ? mShowActive : (mShowActive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.ShowActive")); }
			ScriptFunction ShowHidden() { return mShowHidden ? mShowHidden : (mShowHidden = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.ShowHidden")); }
			ScriptFunction NotifyLocalPlayerDead() { return mNotifyLocalPlayerDead ? mNotifyLocalPlayerDead : (mNotifyLocalPlayerDead = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponPickupFactory.NotifyLocalPlayerDead")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UTWeaponLocker.PawnToucher) Customers() { return *cast(ScriptArray!(UTWeaponLocker.PawnToucher)*)(cast(size_t)cast(void*)this + 960); }
			float WeaponPickupScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 956); }
			ScriptClass WeaponPickupClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 944); }
		}
		bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 948) & 0x2) != 0; }
		bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 948) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 948) &= ~0x2; } return val; }
		bool bWeaponStay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 948) & 0x1) != 0; }
		bool bWeaponStay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 948) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 948) &= ~0x1; } return val; }
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
