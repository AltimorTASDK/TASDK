module UnrealScript.TribesGame.TrCallIn_SupportInventory;

import ScriptClasses;
import UnrealScript.TribesGame.TrCallIn_Support;

extern(C++) interface TrCallIn_SupportInventory : TrCallIn_Support
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCallIn_SupportInventory")); }
	private static __gshared TrCallIn_SupportInventory mDefaultProperties;
	@property final static TrCallIn_SupportInventory DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrCallIn_SupportInventory)("TrCallIn_SupportInventory TribesGame.Default__TrCallIn_SupportInventory")); }
}
