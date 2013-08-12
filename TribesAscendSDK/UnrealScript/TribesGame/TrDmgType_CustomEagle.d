module UnrealScript.TribesGame.TrDmgType_CustomEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_CustomEagle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_CustomEagle")); }
	private static __gshared TrDmgType_CustomEagle mDefaultProperties;
	@property final static TrDmgType_CustomEagle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_CustomEagle)("TrDmgType_CustomEagle TribesGame.Default__TrDmgType_CustomEagle")); }
}
