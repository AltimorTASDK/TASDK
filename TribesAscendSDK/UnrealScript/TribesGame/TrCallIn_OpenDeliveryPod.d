module UnrealScript.TribesGame.TrCallIn_OpenDeliveryPod;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInstanceTimeVarying;

extern(C++) interface TrCallIn_OpenDeliveryPod : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCallIn_OpenDeliveryPod")()); }
	private static __gshared TrCallIn_OpenDeliveryPod mDefaultProperties;
	@property final static TrCallIn_OpenDeliveryPod DefaultProperties() { mixin(MGDPC!(TrCallIn_OpenDeliveryPod, "TrCallIn_OpenDeliveryPod TribesGame.Default__TrCallIn_OpenDeliveryPod")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mRemovePod;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrCallIn_OpenDeliveryPod.PostBeginPlay")()); }
			ScriptFunction RemovePod() { mixin(MGF!("mRemovePod", "Function TribesGame.TrCallIn_OpenDeliveryPod.RemovePod")()); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_Mesh'!
		MaterialInstanceTimeVarying PodFadeMaterial() { mixin(MGPC!(MaterialInstanceTimeVarying, 484)()); }
		float TimeToFade() { mixin(MGPC!(float, 480)()); }
		float TimeToDelete() { mixin(MGPC!(float, 476)()); }
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
