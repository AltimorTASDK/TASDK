module UnrealScript.TribesGame.TrDevice_ArxShotgun;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Shotgun;

extern(C++) interface TrDevice_ArxShotgun : TrDevice_Shotgun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ArxShotgun")); }
	private static __gshared TrDevice_ArxShotgun mDefaultProperties;
	@property final static TrDevice_ArxShotgun DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_ArxShotgun)("TrDevice_ArxShotgun TribesGame.Default__TrDevice_ArxShotgun")); }
}
