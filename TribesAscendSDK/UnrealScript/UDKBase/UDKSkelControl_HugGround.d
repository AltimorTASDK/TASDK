module UnrealScript.UDKBase.UDKSkelControl_HugGround;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_HugGround : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKSkelControl_HugGround")); }
	private static __gshared UDKSkelControl_HugGround mDefaultProperties;
	@property final static UDKSkelControl_HugGround DefaultProperties() { mixin(MGDPC("UDKSkelControl_HugGround", "UDKSkelControl_HugGround UDKBase.Default__UDKSkelControl_HugGround")); }
	@property final
	{
		auto ref
		{
			float LastUpdateTime() { mixin(MGPC("float", 268)); }
			float MaxTranslationPerSec() { mixin(MGPC("float", 264)); }
			float ZDistFromParentBone() { mixin(MGPC("float", 260)); }
			float XYDistFromParentBone() { mixin(MGPC("float", 256)); }
			ScriptName ParentBone() { mixin(MGPC("ScriptName", 244)); }
			float MaxDist() { mixin(MGPC("float", 240)); }
			float DesiredGroundDist() { mixin(MGPC("float", 236)); }
		}
		bool bOppositeFromParent() { mixin(MGBPC(252, 0x1)); }
		bool bOppositeFromParent(bool val) { mixin(MSBPC(252, 0x1)); }
	}
}
