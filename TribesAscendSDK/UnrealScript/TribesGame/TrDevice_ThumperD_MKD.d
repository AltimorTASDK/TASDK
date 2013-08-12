module UnrealScript.TribesGame.TrDevice_ThumperD_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ThumperD;

extern(C++) interface TrDevice_ThumperD_MKD : TrDevice_ThumperD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ThumperD_MKD")); }
}
