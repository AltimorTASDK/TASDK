module UnrealScript.Engine.UISoundTheme;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface UISoundTheme : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UISoundTheme")); }
	private static __gshared UISoundTheme mDefaultProperties;
	@property final static UISoundTheme DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UISoundTheme)("UISoundTheme Engine.Default__UISoundTheme")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mProcessSoundEvent;
		public @property static final ScriptFunction ProcessSoundEvent() { return mProcessSoundEvent ? mProcessSoundEvent : (mProcessSoundEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.UISoundTheme.ProcessSoundEvent")); }
	}
	struct SoundEventMapping
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.UISoundTheme.SoundEventMapping")); }
		@property final auto ref
		{
			SoundCue SoundToPlay() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
			ScriptName SoundEventName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(UISoundTheme.SoundEventMapping) SoundEventBindings() { return *cast(ScriptArray!(UISoundTheme.SoundEventMapping)*)(cast(size_t)cast(void*)this + 60); }
	final void ProcessSoundEvent(ScriptName SoundEventName, PlayerController SoundOwner)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SoundEventName;
		*cast(PlayerController*)&params[8] = SoundOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessSoundEvent, params.ptr, cast(void*)0);
	}
}
