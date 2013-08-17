module UnrealScript.Engine.DynamicTriggerVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.TriggerVolume;

extern(C++) interface DynamicTriggerVolume : TriggerVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DynamicTriggerVolume")()); }
	private static __gshared DynamicTriggerVolume mDefaultProperties;
	@property final static DynamicTriggerVolume DefaultProperties() { mixin(MGDPC!(DynamicTriggerVolume, "DynamicTriggerVolume Engine.Default__DynamicTriggerVolume")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.DynamicTriggerVolume.PostBeginPlay")()); }
	}
	@property final
	{
		bool bEnabled() { mixin(MGBPC!(520, 0x1)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(520, 0x1)()); }
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
