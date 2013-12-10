module UnrealScript.Engine.StaticMeshActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.StaticMeshActorBase;

extern(C++) interface StaticMeshActor : StaticMeshActorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.StaticMeshActor")); }
	private static __gshared StaticMeshActor mDefaultProperties;
	@property final static StaticMeshActor DefaultProperties() { mixin(MGDPC("StaticMeshActor", "StaticMeshActor Engine.Default__StaticMeshActor")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPreBeginPlay;
		public @property static final ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function Engine.StaticMeshActor.PreBeginPlay")); }
	}
	@property final
	{
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'StaticMeshComponent'!
		bool bDisableAutoBaseOnProcBuilding() { mixin(MGBPC(480, 0x1)); }
		bool bDisableAutoBaseOnProcBuilding(bool val) { mixin(MSBPC(480, 0x1)); }
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
}
