module UnrealScript.Engine.AnimMetaData_SkelControlKeyFrame;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimSequence;
import UnrealScript.Engine.AnimMetaData_SkelControl;

extern(C++) interface AnimMetaData_SkelControlKeyFrame : AnimMetaData_SkelControl
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimMetaData_SkelControlKeyFrame")); }
	private static __gshared AnimMetaData_SkelControlKeyFrame mDefaultProperties;
	@property final static AnimMetaData_SkelControlKeyFrame DefaultProperties() { mixin(MGDPC("AnimMetaData_SkelControlKeyFrame", "AnimMetaData_SkelControlKeyFrame Engine.Default__AnimMetaData_SkelControlKeyFrame")); }
	@property final auto ref ScriptArray!(AnimSequence.TimeModifier) KeyFrames() { mixin(MGPC("ScriptArray!(AnimSequence.TimeModifier)", 84)); }
}
