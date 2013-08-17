module UnrealScript.TribesGame.TrSkelControl_Suspension;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface TrSkelControl_Suspension : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSkelControl_Suspension")); }
	private static __gshared TrSkelControl_Suspension mDefaultProperties;
	@property final static TrSkelControl_Suspension DefaultProperties() { mixin(MGDPC("TrSkelControl_Suspension", "TrSkelControl_Suspension TribesGame.Default__TrSkelControl_Suspension")); }
	@property final
	{
		auto ref
		{
			int WheelIndex() { mixin(MGPC("int", 284)); }
			float CurrentRot() { mixin(MGPC("float", 280)); }
			float MaxRotRate() { mixin(MGPC("float", 276)); }
			float MinRot() { mixin(MGPC("float", 272)); }
			float MaxRot() { mixin(MGPC("float", 268)); }
			float RotScale() { mixin(MGPC("float", 264)); }
			float RotIgnore() { mixin(MGPC("float", 260)); }
			float MinTrans() { mixin(MGPC("float", 256)); }
			float MaxTrans() { mixin(MGPC("float", 252)); }
			float TransOffset() { mixin(MGPC("float", 248)); }
			float TransScale() { mixin(MGPC("float", 244)); }
			float TransIgnore() { mixin(MGPC("float", 240)); }
		}
		bool m_bApplyTranslation() { mixin(MGBPC(236, 0x2)); }
		bool m_bApplyTranslation(bool val) { mixin(MSBPC(236, 0x2)); }
		bool m_bApplyRotation() { mixin(MGBPC(236, 0x1)); }
		bool m_bApplyRotation(bool val) { mixin(MSBPC(236, 0x1)); }
	}
}
