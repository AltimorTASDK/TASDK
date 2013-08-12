module UnrealScript.TribesGame.TrPlayerStart;

import ScriptClasses;
import UnrealScript.UDKBase.UDKTeamPlayerStart;
import UnrealScript.TribesGame.TrCaHCapturePoint;

extern(C++) interface TrPlayerStart : UDKTeamPlayerStart
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerStart")); }
	private static __gshared TrPlayerStart mDefaultProperties;
	@property final static TrPlayerStart DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPlayerStart)("TrPlayerStart TribesGame.Default__TrPlayerStart")); }
	@property final auto ref TrCaHCapturePoint CaHCapturePoint() { return *cast(TrCaHCapturePoint*)(cast(size_t)cast(void*)this + 716); }
}
