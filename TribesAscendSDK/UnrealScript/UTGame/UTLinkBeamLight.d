module UnrealScript.UTGame.UTLinkBeamLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface UTLinkBeamLight : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTLinkBeamLight")); }
	private static __gshared UTLinkBeamLight mDefaultProperties;
	@property final static UTLinkBeamLight DefaultProperties() { mixin(MGDPC("UTLinkBeamLight", "UTLinkBeamLight UTGame.Default__UTLinkBeamLight")); }
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'BeamLight'!
}
