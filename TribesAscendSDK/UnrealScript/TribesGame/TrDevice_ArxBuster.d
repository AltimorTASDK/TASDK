module UnrealScript.TribesGame.TrDevice_ArxBuster;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_ArxBuster : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ArxBuster")); }
	private static __gshared TrDevice_ArxBuster mDefaultProperties;
	@property final static TrDevice_ArxBuster DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_ArxBuster)("TrDevice_ArxBuster TribesGame.Default__TrDevice_ArxBuster")); }
}
