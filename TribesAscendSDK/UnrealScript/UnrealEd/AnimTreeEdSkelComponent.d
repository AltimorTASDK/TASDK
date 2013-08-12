module UnrealScript.UnrealEd.AnimTreeEdSkelComponent;

import ScriptClasses;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface AnimTreeEdSkelComponent : SkeletalMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnimTreeEdSkelComponent")); }
	private static __gshared AnimTreeEdSkelComponent mDefaultProperties;
	@property final static AnimTreeEdSkelComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimTreeEdSkelComponent)("AnimTreeEdSkelComponent UnrealEd.Default__AnimTreeEdSkelComponent")); }
}
