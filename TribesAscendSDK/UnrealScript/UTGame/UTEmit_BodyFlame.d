module UnrealScript.UTGame.UTEmit_BodyFlame;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTEmit_HitEffect;

extern(C++) interface UTEmit_BodyFlame : UTEmit_HitEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTEmit_BodyFlame")); }
	private static __gshared UTEmit_BodyFlame mDefaultProperties;
	@property final static UTEmit_BodyFlame DefaultProperties() { mixin(MGDPC("UTEmit_BodyFlame", "UTEmit_BodyFlame UTGame.Default__UTEmit_BodyFlame")); }
}
