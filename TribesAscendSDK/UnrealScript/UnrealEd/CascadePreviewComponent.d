module UnrealScript.UnrealEd.CascadePreviewComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface CascadePreviewComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CascadePreviewComponent")); }
}
