module UnrealScript.UTGame.UTWeaponLocker;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTWeaponLocker")); }
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
			ScriptFunction BotDesireability() { return mBotDesireability ? mBotDesireability : (mBotDesireability = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.BotDesireability")); }
			ScriptFunction SetInitialState() { return mSetInitialState ? mSetInitialState : (mSetInitialState = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.SetInitialState")); }
			ScriptFunction ShouldCamp() { return mShouldCamp ? mShouldCamp : (mShouldCamp = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.ShouldCamp")); }
			ScriptFunction AddCustomer() { return mAddCustomer ? mAddCustomer : (mAddCustomer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.AddCustomer")); }
			ScriptFunction HasCustomer() { return mHasCustomer ? mHasCustomer : (mHasCustomer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.HasCustomer")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.PostBeginPlay")); }
			ScriptFunction InitializeWeapons() { return mInitializeWeapons ? mInitializeWeapons : (mInitializeWeapons = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.InitializeWeapons")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.ReplicatedEvent")); }
			ScriptFunction ReplaceWeapon() { return mReplaceWeapon ? mReplaceWeapon : (mReplaceWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.ReplaceWeapon")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.Reset")); }
			ScriptFunction GetHumanReadableName() { return mGetHumanReadableName ? mGetHumanReadableName : (mGetHumanReadableName = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.GetHumanReadableName")); }
			ScriptFunction DetourWeight() { return mDetourWeight ? mDetourWeight : (mDetourWeight = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.DetourWeight")); }
			ScriptFunction InitializePickup() { return mInitializePickup ? mInitializePickup : (mInitializePickup = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.InitializePickup")); }
			ScriptFunction ShowActive() { return mShowActive ? mShowActive : (mShowActive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.ShowActive")); }
			ScriptFunction NotifyLocalPlayerDead() { return mNotifyLocalPlayerDead ? mNotifyLocalPlayerDead : (mNotifyLocalPlayerDead = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.NotifyLocalPlayerDead")); }
			ScriptFunction SetPlayerNearby() { return mSetPlayerNearby ? mSetPlayerNearby : (mSetPlayerNearby = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.SetPlayerNearby")); }
			ScriptFunction DestroyWeapons() { return mDestroyWeapons ? mDestroyWeapons : (mDestroyWeapons = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.DestroyWeapons")); }
			ScriptFunction ShowHidden() { return mShowHidden ? mShowHidden : (mShowHidden = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWeaponLocker.ShowHidden")); }
		}
	}
	struct WeaponEntry
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTWeaponLocker.WeaponEntry")); }
		@property final auto ref ScriptClass WeaponClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
	}
	struct PawnToucher
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTWeaponLocker.PawnToucher")); }
		@property final auto ref
		{
			float NextTouchTime() { return *cast(float*)(cast(size_t)&this + 4); }
			Pawn P() { return *cast(Pawn*)(cast(size_t)&this + 0); }
		}
	}
	struct ReplacementWeaponEntry
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTWeaponLocker.ReplacementWeaponEntry")); }
		@property final
		{
			@property final auto ref ScriptClass WeaponClass() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
			bool bReplaced() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bReplaced(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UTWeaponLocker.WeaponEntry) Weapons() { return *cast(ScriptArray!(UTWeaponLocker.WeaponEntry)*)(cast(size_t)cast(void*)this + 944); }
			ScriptArray!(Vector) LockerPositions() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 1004); }
			ScriptArray!(UTWeaponLocker.PawnToucher) Customers() { return *cast(ScriptArray!(UTWeaponLocker.PawnToucher)*)(cast(size_t)cast(void*)this + 1028); }
			float NextProximityCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1076); }
			float ScaleRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1072); }
			ParticleSystem WeaponSpawnEffectTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1068); }
			ParticleSystem ActiveEffectTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1064); }
			ParticleSystem InactiveEffectTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 1060); }
			float ProximityDistanceSquared() { return *cast(float*)(cast(size_t)cast(void*)this + 1048); }
			float CurrentWeaponScaleX() { return *cast(float*)(cast(size_t)cast(void*)this + 1044); }
			ScriptString LockerString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1016); }
			UTWeaponLocker.ReplacementWeaponEntry ReplacementWeapons() { return *cast(UTWeaponLocker.ReplacementWeaponEntry*)(cast(size_t)cast(void*)this + 956); }
		}
		bool bScalingUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1040) & 0x4) != 0; }
		bool bScalingUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1040) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1040) &= ~0x4; } return val; }
		bool bPlayerNearby() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1040) & 0x2) != 0; }
		bool bPlayerNearby(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1040) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1040) &= ~0x2; } return val; }
		bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1040) & 0x1) != 0; }
		bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1040) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1040) &= ~0x1; } return val; }
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
