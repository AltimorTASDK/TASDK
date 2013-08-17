module UnrealScript.TribesGame.TrPlayerStart;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKTeamPlayerStart;
import UnrealScript.TribesGame.TrCaHCapturePoint;

extern(C++) interface TrPlayerStart : UDKTeamPlayerStart
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPlayerStart")); }
	private static __gshared TrPlayerStart mDefaultProperties;
	@property final static TrPlayerStart DefaultProperties() { mixin(MGDPC("TrPlayerStart", "TrPlayerStart TribesGame.Default__TrPlayerStart")); }
	@property final auto ref TrCaHCapturePoint CaHCapturePoint() { mixin(MGPC("TrCaHCapturePoint", 716)); }
}
