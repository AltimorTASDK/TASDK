module UnrealScript.TribesGame.TrProj_SAP20;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_SAP20 : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_SAP20")); }
	private static __gshared TrProj_SAP20 mDefaultProperties;
	@property final static TrProj_SAP20 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_SAP20)("TrProj_SAP20 TribesGame.Default__TrProj_SAP20")); }
}
