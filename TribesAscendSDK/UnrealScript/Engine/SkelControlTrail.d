module UnrealScript.Engine.SkelControlTrail;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlTrail : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkelControlTrail")()); }
	private static __gshared SkelControlTrail mDefaultProperties;
	@property final static SkelControlTrail DefaultProperties() { mixin(MGDPC!(SkelControlTrail, "SkelControlTrail Engine.Default__SkelControlTrail")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(Vector) TrailBoneLocations() { mixin(MGPC!("ScriptArray!(Vector)", 224)()); }
			UObject.Matrix OldLocalToWorld() { mixin(MGPC!("UObject.Matrix", 240)()); }
			float ThisTimstep() { mixin(MGPC!("float", 220)()); }
			Vector FakeVelocity() { mixin(MGPC!("Vector", 208)()); }
			float StretchLimit() { mixin(MGPC!("float", 204)()); }
			float TrailRelaxation() { mixin(MGPC!("float", 200)()); }
			UObject.EAxis ChainBoneAxis() { mixin(MGPC!("UObject.EAxis", 192)()); }
			int ChainLength() { mixin(MGPC!("int", 188)()); }
		}
		bool bHadValidStrength() { mixin(MGBPC!(196, 0x8)()); }
		bool bHadValidStrength(bool val) { mixin(MSBPC!(196, 0x8)()); }
		bool bActorSpaceFakeVel() { mixin(MGBPC!(196, 0x4)()); }
		bool bActorSpaceFakeVel(bool val) { mixin(MSBPC!(196, 0x4)()); }
		bool bLimitStretch() { mixin(MGBPC!(196, 0x2)()); }
		bool bLimitStretch(bool val) { mixin(MSBPC!(196, 0x2)()); }
		bool bInvertChainBoneAxis() { mixin(MGBPC!(196, 0x1)()); }
		bool bInvertChainBoneAxis(bool val) { mixin(MSBPC!(196, 0x1)()); }
	}
}
