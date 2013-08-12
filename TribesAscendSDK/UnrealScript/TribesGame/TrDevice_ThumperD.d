module UnrealScript.TribesGame.TrDevice_ThumperD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_ThumperD : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ThumperD")); }
	private static __gshared TrDevice_ThumperD mDefaultProperties;
	@property final static TrDevice_ThumperD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_ThumperD)("TrDevice_ThumperD TribesGame.Default__TrDevice_ThumperD")); }
}
