module UnrealScript.TribesGame.TrDmgType_ArxBuster;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_ArxBuster : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ArxBuster")); }
	private static __gshared TrDmgType_ArxBuster mDefaultProperties;
	@property final static TrDmgType_ArxBuster DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_ArxBuster)("TrDmgType_ArxBuster TribesGame.Default__TrDmgType_ArxBuster")); }
}
