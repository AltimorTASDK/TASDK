module UnrealScript.Engine.SkelControlHandlebars;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface SkelControlHandlebars : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkelControlHandlebars")()); }
	private static __gshared SkelControlHandlebars mDefaultProperties;
	@property final static SkelControlHandlebars DefaultProperties() { mixin(MGDPC!(SkelControlHandlebars, "SkelControlHandlebars Engine.Default__SkelControlHandlebars")()); }
	@property final
	{
		auto ref
		{
			int SteerWheelBoneIndex() { mixin(MGPC!("int", 252)()); }
			ScriptName WheelBoneName() { mixin(MGPC!("ScriptName", 240)()); }
			UObject.EAxis HandlebarRotateAxis() { mixin(MGPC!("UObject.EAxis", 237)()); }
			UObject.EAxis WheelRollAxis() { mixin(MGPC!("UObject.EAxis", 236)()); }
		}
		bool bInvertRotation() { mixin(MGBPC!(248, 0x1)()); }
		bool bInvertRotation(bool val) { mixin(MSBPC!(248, 0x1)()); }
	}
}
