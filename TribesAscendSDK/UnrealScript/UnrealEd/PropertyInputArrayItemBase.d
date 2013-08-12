module UnrealScript.UnrealEd.PropertyInputArrayItemBase;

import ScriptClasses;
import UnrealScript.UnrealEd.PropertyInputProxy;

extern(C++) interface PropertyInputArrayItemBase : PropertyInputProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PropertyInputArrayItemBase")); }
	private static __gshared PropertyInputArrayItemBase mDefaultProperties;
	@property final static PropertyInputArrayItemBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PropertyInputArrayItemBase)("PropertyInputArrayItemBase UnrealEd.Default__PropertyInputArrayItemBase")); }
}
