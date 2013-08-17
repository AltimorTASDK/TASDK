module UnrealScript.Engine.UISoundTheme;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface UISoundTheme : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UISoundTheme")); }
	private static __gshared UISoundTheme mDefaultProperties;
	@property final static UISoundTheme DefaultProperties() { mixin(MGDPC("UISoundTheme", "UISoundTheme Engine.Default__UISoundTheme")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mProcessSoundEvent;
		public @property static final ScriptFunction ProcessSoundEvent() { mixin(MGF("mProcessSoundEvent", "Function Engine.UISoundTheme.ProcessSoundEvent")); }
	}
	struct SoundEventMapping
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.UISoundTheme.SoundEventMapping")); }
		@property final auto ref
		{
			SoundCue SoundToPlay() { mixin(MGPS("SoundCue", 8)); }
			ScriptName SoundEventName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final auto ref ScriptArray!(UISoundTheme.SoundEventMapping) SoundEventBindings() { mixin(MGPC("ScriptArray!(UISoundTheme.SoundEventMapping)", 60)); }
	final void ProcessSoundEvent(ScriptName SoundEventName, PlayerController* SoundOwner = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SoundEventName;
		if (SoundOwner !is null)
			*cast(PlayerController*)&params[8] = *SoundOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessSoundEvent, params.ptr, cast(void*)0);
	}
}
