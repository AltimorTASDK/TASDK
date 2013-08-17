module UnrealScript.UTGame.UTPickupFactory;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTPickupFactory")); }
	private static __gshared UTPickupFactory mDefaultProperties;
	@property final static UTPickupFactory DefaultProperties() { mixin(MGDPC("UTPickupFactory", "UTPickupFactory UTGame.Default__UTPickupFactory")); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function UTGame.UTPickupFactory.PostBeginPlay")); }
			ScriptFunction SetResOut() { mixin(MGF("mSetResOut", "Function UTGame.UTPickupFactory.SetResOut")); }
			ScriptFunction DisablePickup() { mixin(MGF("mDisablePickup", "Function UTGame.UTPickupFactory.DisablePickup")); }
			ScriptFunction ShutDown() { mixin(MGF("mShutDown", "Function UTGame.UTPickupFactory.ShutDown")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function UTGame.UTPickupFactory.ReplicatedEvent")); }
			ScriptFunction ShouldCamp() { mixin(MGF("mShouldCamp", "Function UTGame.UTPickupFactory.ShouldCamp")); }
			ScriptFunction UpdateHUD() { mixin(MGF("mUpdateHUD", "Function UTGame.UTPickupFactory.UpdateHUD")); }
			ScriptFunction RespawnEffect() { mixin(MGF("mRespawnEffect", "Function UTGame.UTPickupFactory.RespawnEffect")); }
			ScriptFunction StopsProjectile() { mixin(MGF("mStopsProjectile", "Function UTGame.UTPickupFactory.StopsProjectile")); }
			ScriptFunction StartPulse() { mixin(MGF("mStartPulse", "Function UTGame.UTPickupFactory.StartPulse")); }
			ScriptFunction SetPickupMesh() { mixin(MGF("mSetPickupMesh", "Function UTGame.UTPickupFactory.SetPickupMesh")); }
			ScriptFunction GetPickupStatName() { mixin(MGF("mGetPickupStatName", "Function UTGame.UTPickupFactory.GetPickupStatName")); }
			ScriptFunction InitPickupMeshEffects() { mixin(MGF("mInitPickupMeshEffects", "Function UTGame.UTPickupFactory.InitPickupMeshEffects")); }
			ScriptFunction SetPickupVisible() { mixin(MGF("mSetPickupVisible", "Function UTGame.UTPickupFactory.SetPickupVisible")); }
			ScriptFunction SetPickupHidden() { mixin(MGF("mSetPickupHidden", "Function UTGame.UTPickupFactory.SetPickupHidden")); }
			ScriptFunction SetInitialState() { mixin(MGF("mSetInitialState", "Function UTGame.UTPickupFactory.SetInitialState")); }
			ScriptFunction PickedUpBy() { mixin(MGF("mPickedUpBy", "Function UTGame.UTPickupFactory.PickedUpBy")); }
		}
	}
	static struct Pickup
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTPickupFactory.Pickup")); }
	}
	static struct Sleeping
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTPickupFactory.Sleeping")); }
	}
	static struct Disabled
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTPickupFactory.Disabled")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SoundNodeWave) LocationSpeech() { mixin(MGPC("ScriptArray!(SoundNodeWave)", 924)); }
			ForceFeedbackWaveform PickUpWaveForm() { mixin(MGPC("ForceFeedbackWaveform", 940)); }
			float LastSeekNotificationTime() { mixin(MGPC("float", 936)); }
			ScriptName PickupStatName() { mixin(MGPC("ScriptName", 912)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LightEnvironment'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PickupReadySound'!
			SoundCue RespawnSound() { mixin(MGPC("SoundCue", 900)); }
			Controller TeamOwner() { mixin(MGPC("Controller", 884)); }
		}
		bool bHasLocationSpeech() { mixin(MGBPC(920, 0x1)); }
		bool bHasLocationSpeech(bool val) { mixin(MSBPC(920, 0x1)); }
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
