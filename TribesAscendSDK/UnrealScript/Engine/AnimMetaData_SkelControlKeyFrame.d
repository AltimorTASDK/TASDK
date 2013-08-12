module UnrealScript.Engine.AnimMetaData_SkelControlKeyFrame;

import ScriptClasses;
import UnrealScript.Engine.AnimSequence;
import UnrealScript.Engine.AnimMetaData_SkelControl;

extern(C++) interface AnimMetaData_SkelControlKeyFrame : AnimMetaData_SkelControl
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimMetaData_SkelControlKeyFrame")); }
	private static __gshared AnimMetaData_SkelControlKeyFrame mDefaultProperties;
	@property final static AnimMetaData_SkelControlKeyFrame DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimMetaData_SkelControlKeyFrame)("AnimMetaData_SkelControlKeyFrame Engine.Default__AnimMetaData_SkelControlKeyFrame")); }
	@property final auto ref ScriptArray!(AnimSequence.TimeModifier) KeyFrames() { return *cast(ScriptArray!(AnimSequence.TimeModifier)*)(cast(size_t)cast(void*)this + 84); }
}
