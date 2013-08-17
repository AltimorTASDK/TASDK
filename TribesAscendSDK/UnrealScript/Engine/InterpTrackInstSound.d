module UnrealScript.Engine.InterpTrackInstSound;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstSound : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstSound")()); }
	private static __gshared InterpTrackInstSound mDefaultProperties;
	@property final static InterpTrackInstSound DefaultProperties() { mixin(MGDPC!(InterpTrackInstSound, "InterpTrackInstSound Engine.Default__InterpTrackInstSound")()); }
	@property final auto ref
	{
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PlayAudioComp'!
		float LastUpdatePosition() { mixin(MGPC!(float, 60)()); }
	}
}
