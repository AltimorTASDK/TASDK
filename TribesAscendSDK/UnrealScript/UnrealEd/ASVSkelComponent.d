module UnrealScript.UnrealEd.ASVSkelComponent;

import ScriptClasses;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface ASVSkelComponent : SkeletalMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ASVSkelComponent")); }
	private static __gshared ASVSkelComponent mDefaultProperties;
	@property final static ASVSkelComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ASVSkelComponent)("ASVSkelComponent UnrealEd.Default__ASVSkelComponent")); }
}
