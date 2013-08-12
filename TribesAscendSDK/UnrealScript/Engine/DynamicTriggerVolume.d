module UnrealScript.Engine.DynamicTriggerVolume;

import ScriptClasses;
import UnrealScript.Engine.TriggerVolume;

extern(C++) interface DynamicTriggerVolume : TriggerVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DynamicTriggerVolume")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicTriggerVolume.PostBeginPlay")); }
	}
	@property final
	{
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 520) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 520) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 520) &= ~0x1; } return val; }
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
