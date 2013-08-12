module UnrealScript.UnrealEd.PropertyInputCombo;

import ScriptClasses;
import UnrealScript.UnrealEd.PropertyInputArrayItemBase;

extern(C++) interface PropertyInputCombo : PropertyInputArrayItemBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PropertyInputCombo")); }
}
