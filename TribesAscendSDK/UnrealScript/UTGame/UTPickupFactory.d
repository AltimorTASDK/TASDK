module UnrealScript.UTGame.UTPickupFactory;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.Projectile;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.UDKBase.UDKPickupFactory;
import UnrealScript.UTGame.UTBot;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTPickupFactory : UDKPickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTPickupFactory")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetResOut;
			ScriptFunction mDisablePickup;
			ScriptFunction mShutDown;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mShouldCamp;
			ScriptFunction mUpdateHUD;
			ScriptFunction mRespawnEffect;
			ScriptFunction mStopsProjectile;
			ScriptFunction mStartPulse;
			ScriptFunction mSetPickupMesh;
			ScriptFunction mGetPickupStatName;
			ScriptFunction mInitPickupMeshEffects;
			ScriptFunction mSetPickupVisible;
			ScriptFunction mSetPickupHidden;
			ScriptFunction mSetInitialState;
			ScriptFunction mPickedUpBy;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.PostBeginPlay")); }
			ScriptFunction SetResOut() { return mSetResOut ? mSetResOut : (mSetResOut = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.SetResOut")); }
			ScriptFunction DisablePickup() { return mDisablePickup ? mDisablePickup : (mDisablePickup = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.DisablePickup")); }
			ScriptFunction ShutDown() { return mShutDown ? mShutDown : (mShutDown = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.ShutDown")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.ReplicatedEvent")); }
			ScriptFunction ShouldCamp() { return mShouldCamp ? mShouldCamp : (mShouldCamp = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.ShouldCamp")); }
			ScriptFunction UpdateHUD() { return mUpdateHUD ? mUpdateHUD : (mUpdateHUD = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.UpdateHUD")); }
			ScriptFunction RespawnEffect() { return mRespawnEffect ? mRespawnEffect : (mRespawnEffect = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.RespawnEffect")); }
			ScriptFunction StopsProjectile() { return mStopsProjectile ? mStopsProjectile : (mStopsProjectile = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.StopsProjectile")); }
			ScriptFunction StartPulse() { return mStartPulse ? mStartPulse : (mStartPulse = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.StartPulse")); }
			ScriptFunction SetPickupMesh() { return mSetPickupMesh ? mSetPickupMesh : (mSetPickupMesh = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.SetPickupMesh")); }
			ScriptFunction GetPickupStatName() { return mGetPickupStatName ? mGetPickupStatName : (mGetPickupStatName = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.GetPickupStatName")); }
			ScriptFunction InitPickupMeshEffects() { return mInitPickupMeshEffects ? mInitPickupMeshEffects : (mInitPickupMeshEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.InitPickupMeshEffects")); }
			ScriptFunction SetPickupVisible() { return mSetPickupVisible ? mSetPickupVisible : (mSetPickupVisible = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.SetPickupVisible")); }
			ScriptFunction SetPickupHidden() { return mSetPickupHidden ? mSetPickupHidden : (mSetPickupHidden = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.SetPickupHidden")); }
			ScriptFunction SetInitialState() { return mSetInitialState ? mSetInitialState : (mSetInitialState = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.SetInitialState")); }
			ScriptFunction PickedUpBy() { return mPickedUpBy ? mPickedUpBy : (mPickedUpBy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPickupFactory.PickedUpBy")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SoundNodeWave) LocationSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 924); }
			ForceFeedbackWaveform PickUpWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 940); }
			float LastSeekNotificationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 936); }
			ScriptName PickupStatName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 912); }
			SoundCue RespawnSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 900); }
			Controller TeamOwner() { return *cast(Controller*)(cast(size_t)cast(void*)this + 884); }
		}
		bool bHasLocationSpeech() { return (*cast(uint*)(cast(size_t)cast(void*)this + 920) & 0x1) != 0; }
		bool bHasLocationSpeech(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 920) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 920) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetResOut()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetResOut, cast(void*)0, cast(void*)0);
	}
	void DisablePickup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisablePickup, cast(void*)0, cast(void*)0);
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShutDown, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
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
	static void UpdateHUD(UTHUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTHUD*)params.ptr = H;
		StaticClass.ProcessEvent(Functions.UpdateHUD, params.ptr, cast(void*)0);
	}
	void RespawnEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RespawnEffect, cast(void*)0, cast(void*)0);
	}
	bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopsProjectile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void StartPulse(UObject.LinearColor TargetEmissive)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.LinearColor*)params.ptr = TargetEmissive;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartPulse, params.ptr, cast(void*)0);
	}
	void SetPickupMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupMesh, cast(void*)0, cast(void*)0);
	}
	ScriptName GetPickupStatName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPickupStatName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	void InitPickupMeshEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitPickupMeshEffects, cast(void*)0, cast(void*)0);
	}
	void SetPickupVisible()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupVisible, cast(void*)0, cast(void*)0);
	}
	void SetPickupHidden()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupHidden, cast(void*)0, cast(void*)0);
	}
	void SetInitialState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInitialState, cast(void*)0, cast(void*)0);
	}
	void PickedUpBy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickedUpBy, params.ptr, cast(void*)0);
	}
}
