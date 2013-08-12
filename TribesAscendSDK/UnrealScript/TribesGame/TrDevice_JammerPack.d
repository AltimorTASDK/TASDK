module UnrealScript.TribesGame.TrDevice_JammerPack;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_JammerPack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_JammerPack")); }
	private static __gshared TrDevice_JammerPack mDefaultProperties;
	@property final static TrDevice_JammerPack DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_JammerPack)("TrDevice_JammerPack TribesGame.Default__TrDevice_JammerPack")); }
}
