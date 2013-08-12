module UnrealScript.Engine.PickupFactory;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;

extern(C++) interface PickupFactory : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PickupFactory")); }
	private static __gshared PickupFactory mDefaultProperties;
	@property final static PickupFactory DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PickupFactory)("PickupFactory Engine.Default__PickupFactory")); }
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
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.ReplicatedEvent")); }
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.PreBeginPlay")); }
			ScriptFunction InitializePickup() { return mInitializePickup ? mInitializePickup : (mInitializePickup = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.InitializePickup")); }
			ScriptFunction SetInitialState() { return mSetInitialState ? mSetInitialState : (mSetInitialState = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.SetInitialState")); }
			ScriptFunction ShutDown() { return mShutDown ? mShutDown : (mShutDown = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.ShutDown")); }
			ScriptFunction SetPickupMesh() { return mSetPickupMesh ? mSetPickupMesh : (mSetPickupMesh = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.SetPickupMesh")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.Reset")); }
			ScriptFunction CheckForErrors() { return mCheckForErrors ? mCheckForErrors : (mCheckForErrors = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.CheckForErrors")); }
			ScriptFunction SetRespawn() { return mSetRespawn ? mSetRespawn : (mSetRespawn = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.SetRespawn")); }
			ScriptFunction StartSleeping() { return mStartSleeping ? mStartSleeping : (mStartSleeping = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.StartSleeping")); }
			ScriptFunction DetourWeight() { return mDetourWeight ? mDetourWeight : (mDetourWeight = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.DetourWeight")); }
			ScriptFunction SpawnCopyFor() { return mSpawnCopyFor ? mSpawnCopyFor : (mSpawnCopyFor = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.SpawnCopyFor")); }
			ScriptFunction ReadyToPickup() { return mReadyToPickup ? mReadyToPickup : (mReadyToPickup = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.ReadyToPickup")); }
			ScriptFunction GiveTo() { return mGiveTo ? mGiveTo : (mGiveTo = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.GiveTo")); }
			ScriptFunction PickedUpBy() { return mPickedUpBy ? mPickedUpBy : (mPickedUpBy = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.PickedUpBy")); }
			ScriptFunction RecheckValidTouch() { return mRecheckValidTouch ? mRecheckValidTouch : (mRecheckValidTouch = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.RecheckValidTouch")); }
			ScriptFunction GetRespawnTime() { return mGetRespawnTime ? mGetRespawnTime : (mGetRespawnTime = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.GetRespawnTime")); }
			ScriptFunction RespawnEffect() { return mRespawnEffect ? mRespawnEffect : (mRespawnEffect = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.RespawnEffect")); }
			ScriptFunction SetPickupHidden() { return mSetPickupHidden ? mSetPickupHidden : (mSetPickupHidden = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.SetPickupHidden")); }
			ScriptFunction SetPickupVisible() { return mSetPickupVisible ? mSetPickupVisible : (mSetPickupVisible = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.SetPickupVisible")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.Destroyed")); }
			ScriptFunction DelayRespawn() { return mDelayRespawn ? mDelayRespawn : (mDelayRespawn = ScriptObject.Find!(ScriptFunction)("Function Engine.PickupFactory.DelayRespawn")); }
		}
	}
	@property final
	{
		auto ref
		{
			PickupFactory OriginalFactory() { return *cast(PickupFactory*)(cast(size_t)cast(void*)this + 716); }
			PickupFactory ReplacementFactory() { return *cast(PickupFactory*)(cast(size_t)cast(void*)this + 712); }
			float MaxDesireability() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
			float RespawnEffectTime() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
			ScriptClass InventoryType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 696); }
		}
		bool bRespawnPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x10) != 0; }
		bool bRespawnPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x10; } return val; }
		bool bIsSuperItem() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x8) != 0; }
		bool bIsSuperItem(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x8; } return val; }
		bool bPredictRespawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x4) != 0; }
		bool bPredictRespawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x4; } return val; }
		bool bPickupHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x2) != 0; }
		bool bPickupHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x2; } return val; }
		bool bOnlyReplicateHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x1) != 0; }
		bool bOnlyReplicateHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x1; } return val; }
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
