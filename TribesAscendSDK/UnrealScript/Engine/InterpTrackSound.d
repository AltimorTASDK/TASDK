module UnrealScript.Engine.InterpTrackSound;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.InterpTrackVectorBase;

extern(C++) interface InterpTrackSound : InterpTrackVectorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackSound")()); }
	private static __gshared InterpTrackSound mDefaultProperties;
	@property final static InterpTrackSound DefaultProperties() { mixin(MGDPC!(InterpTrackSound, "InterpTrackSound Engine.Default__InterpTrackSound")()); }
	struct SoundTrackKey
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InterpTrackSound.SoundTrackKey")()); }
		@property final auto ref
		{
			SoundCue Sound() { mixin(MGPS!(SoundCue, 12)()); }
			float Pitch() { mixin(MGPS!(float, 8)()); }
			// WARNING: Property 'Volume' has the same name as a defined type!
			float Time() { mixin(MGPS!(float, 0)()); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(InterpTrackSound.SoundTrackKey) Sounds() { mixin(MGPC!(ScriptArray!(InterpTrackSound.SoundTrackKey), 148)()); }
		bool bTreatAsDialogue() { mixin(MGBPC!(160, 0x8)()); }
		bool bTreatAsDialogue(bool val) { mixin(MSBPC!(160, 0x8)()); }
		bool bSuppressSubtitles() { mixin(MGBPC!(160, 0x4)()); }
		bool bSuppressSubtitles(bool val) { mixin(MSBPC!(160, 0x4)()); }
		bool bContinueSoundOnMatineeEnd() { mixin(MGBPC!(160, 0x2)()); }
		bool bContinueSoundOnMatineeEnd(bool val) { mixin(MSBPC!(160, 0x2)()); }
		bool bPlayOnReverse() { mixin(MGBPC!(160, 0x1)()); }
		bool bPlayOnReverse(bool val) { mixin(MSBPC!(160, 0x1)()); }
	}
}
