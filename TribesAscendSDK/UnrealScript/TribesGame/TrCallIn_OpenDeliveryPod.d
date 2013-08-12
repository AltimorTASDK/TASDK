module UnrealScript.TribesGame.TrCallIn_OpenDeliveryPod;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInstanceTimeVarying;

extern(C++) interface TrCallIn_OpenDeliveryPod : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCallIn_OpenDeliveryPod")); }
	private static __gshared TrCallIn_OpenDeliveryPod mDefaultProperties;
	@property final static TrCallIn_OpenDeliveryPod DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrCallIn_OpenDeliveryPod)("TrCallIn_OpenDeliveryPod TribesGame.Default__TrCallIn_OpenDeliveryPod")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mRemovePod;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_OpenDeliveryPod.PostBeginPlay")); }
			ScriptFunction RemovePod() { return mRemovePod ? mRemovePod : (mRemovePod = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_OpenDeliveryPod.RemovePod")); }
		}
	}
	@property final auto ref
	{
		MaterialInstanceTimeVarying PodFadeMaterial() { return *cast(MaterialInstanceTimeVarying*)(cast(size_t)cast(void*)this + 484); }
		float TimeToFade() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
		float TimeToDelete() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void RemovePod()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RemovePod, cast(void*)0, cast(void*)0);
	}
}
