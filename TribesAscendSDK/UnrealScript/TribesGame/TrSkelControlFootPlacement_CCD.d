module UnrealScript.TribesGame.TrSkelControlFootPlacement_CCD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControl_CCD_IK;

extern(C++) interface TrSkelControlFootPlacement_CCD : SkelControl_CCD_IK
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSkelControlFootPlacement_CCD")()); }
	private static __gshared TrSkelControlFootPlacement_CCD mDefaultProperties;
	@property final static TrSkelControlFootPlacement_CCD DefaultProperties() { mixin(MGDPC!(TrSkelControlFootPlacement_CCD, "TrSkelControlFootPlacement_CCD TribesGame.Default__TrSkelControlFootPlacement_CCD")()); }
	@property final
	{
		auto ref
		{
			float FootAdjustHeightLastTick() { mixin(MGPC!(float, 320)()); }
			float OffContactFootAdjustInterpSpeed() { mixin(MGPC!(float, 316)()); }
			float OnContactFootAdjustInterpSpeed() { mixin(MGPC!(float, 312)()); }
			Vector FootUpDirLastTick() { mixin(MGPC!(Vector, 300)()); }
			float FootOrientInterpSpeed() { mixin(MGPC!(float, 296)()); }
			float MaxFootOrientAdjust() { mixin(MGPC!(float, 292)()); }
			float MaxDownAdjustment() { mixin(MGPC!(float, 288)()); }
			float MaxUpAdjustment() { mixin(MGPC!(float, 284)()); }
			Rotator FootRotOffset() { mixin(MGPC!(Rotator, 268)()); }
			UObject.EAxis FootUpAxis() { mixin(MGPC!(UObject.EAxis, 264)()); }
			float FootOffset() { mixin(MGPC!(float, 260)()); }
		}
		bool bFootOnGroundLastTick() { mixin(MGBPC!(280, 0x8)()); }
		bool bFootOnGroundLastTick(bool val) { mixin(MSBPC!(280, 0x8)()); }
		bool bOnlyEnableForUpAdjustment() { mixin(MGBPC!(280, 0x4)()); }
		bool bOnlyEnableForUpAdjustment(bool val) { mixin(MSBPC!(280, 0x4)()); }
		bool bOrientFootToGround() { mixin(MGBPC!(280, 0x2)()); }
		bool bOrientFootToGround(bool val) { mixin(MSBPC!(280, 0x2)()); }
		bool bInvertFootUpAxis() { mixin(MGBPC!(280, 0x1)()); }
		bool bInvertFootUpAxis(bool val) { mixin(MSBPC!(280, 0x1)()); }
	}
}
