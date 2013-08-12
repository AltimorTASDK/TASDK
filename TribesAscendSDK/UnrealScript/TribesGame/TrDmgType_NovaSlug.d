module UnrealScript.TribesGame.TrDmgType_NovaSlug;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_NovaSlug : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_NovaSlug")); }
	private static __gshared TrDmgType_NovaSlug mDefaultProperties;
	@property final static TrDmgType_NovaSlug DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_NovaSlug)("TrDmgType_NovaSlug TribesGame.Default__TrDmgType_NovaSlug")); }
}
