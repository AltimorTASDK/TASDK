module UnrealScript.Engine.DynamicPhysicsVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PhysicsVolume;

extern(C++) interface DynamicPhysicsVolume : PhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DynamicPhysicsVolume")); }
	private static __gshared DynamicPhysicsVolume mDefaultProperties;
	@property final static DynamicPhysicsVolume DefaultProperties() { mixin(MGDPC("DynamicPhysicsVolume", "DynamicPhysicsVolume Engine.Default__DynamicPhysicsVolume")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.DynamicPhysicsVolume.PostBeginPlay")); }
	}
	@property final
	{
		bool bEnabled() { mixin(MGBPC(584, 0x1)); }
		bool bEnabled(bool val) { mixin(MSBPC(584, 0x1)); }
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
