module UnrealScript.TribesGame.TrDmgType_SAP20;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_SAP20 : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_SAP20")); }
	private static __gshared TrDmgType_SAP20 mDefaultProperties;
	@property final static TrDmgType_SAP20 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_SAP20)("TrDmgType_SAP20 TribesGame.Default__TrDmgType_SAP20")); }
}
