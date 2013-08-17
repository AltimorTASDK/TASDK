module UnrealScript.Engine.SkelControlFootPlacement;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlLimb;
import UnrealScript.Core.UObject;

extern(C++) interface SkelControlFootPlacement : SkelControlLimb
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkelControlFootPlacement")()); }
	private static __gshared SkelControlFootPlacement mDefaultProperties;
	@property final static SkelControlFootPlacement DefaultProperties() { mixin(MGDPC!(SkelControlFootPlacement, "SkelControlFootPlacement Engine.Default__SkelControlFootPlacement")()); }
	@property final
	{
		auto ref
		{
			float MaxFootOrientAdjust() { mixin(MGPC!("float", 284)()); }
			float MaxDownAdjustment() { mixin(MGPC!("float", 280)()); }
			float MaxUpAdjustment() { mixin(MGPC!("float", 276)()); }
			Rotator FootRotOffset() { mixin(MGPC!("Rotator", 260)()); }
			UObject.EAxis FootUpAxis() { mixin(MGPC!("UObject.EAxis", 256)()); }
			float FootOffset() { mixin(MGPC!("float", 252)()); }
		}
		bool bOnlyEnableForUpAdjustment() { mixin(MGBPC!(272, 0x4)()); }
		bool bOnlyEnableForUpAdjustment(bool val) { mixin(MSBPC!(272, 0x4)()); }
		bool bOrientFootToGround() { mixin(MGBPC!(272, 0x2)()); }
		bool bOrientFootToGround(bool val) { mixin(MSBPC!(272, 0x2)()); }
		bool bInvertFootUpAxis() { mixin(MGBPC!(272, 0x1)()); }
		bool bInvertFootUpAxis(bool val) { mixin(MSBPC!(272, 0x1)()); }
	}
}
