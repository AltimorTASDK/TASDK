module UnrealScript.Engine.Interface_Speaker;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UInterface;

extern(C++) interface Interface_Speaker : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Interface_Speaker")()); }
	private static __gshared Interface_Speaker mDefaultProperties;
	@property final static Interface_Speaker DefaultProperties() { mixin(MGDPC!(Interface_Speaker, "Interface_Speaker Engine.Default__Interface_Speaker")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpeak;
		public @property static final ScriptFunction Speak() { mixin(MGF!("mSpeak", "Function Engine.Interface_Speaker.Speak")()); }
	}
	final void Speak(SoundCue Cue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Cue;
		(cast(ScriptObject)this).ProcessEvent(Functions.Speak, params.ptr, cast(void*)0);
	}
}
