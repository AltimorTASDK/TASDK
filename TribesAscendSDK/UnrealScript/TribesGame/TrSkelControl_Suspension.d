module UnrealScript.TribesGame.TrSkelControl_Suspension;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface TrSkelControl_Suspension : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkelControl_Suspension")); }
	private static __gshared TrSkelControl_Suspension mDefaultProperties;
	@property final static TrSkelControl_Suspension DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSkelControl_Suspension)("TrSkelControl_Suspension TribesGame.Default__TrSkelControl_Suspension")); }
	@property final
	{
		auto ref
		{
			int WheelIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 284); }
			float CurrentRot() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
			float MaxRotRate() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
			float MinRot() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			float MaxRot() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
			float RotScale() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
			float RotIgnore() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			float MinTrans() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			float MaxTrans() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			float TransOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float TransScale() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			float TransIgnore() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		}
		bool m_bApplyTranslation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
		bool m_bApplyTranslation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
		bool m_bApplyRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool m_bApplyRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	}
}
