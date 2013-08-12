module UnrealScript.UnrealEd.GeomModifier;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface GeomModifier : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GeomModifier")); }
	private static __gshared GeomModifier mDefaultProperties;
	@property final static GeomModifier DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GeomModifier)("GeomModifier UnrealEd.Default__GeomModifier")); }
}
