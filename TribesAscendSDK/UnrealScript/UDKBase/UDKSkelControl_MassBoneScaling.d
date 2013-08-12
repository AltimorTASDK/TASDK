module UnrealScript.UDKBase.UDKSkelControl_MassBoneScaling;

import ScriptClasses;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface UDKSkelControl_MassBoneScaling : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKSkelControl_MassBoneScaling")); }
	private static __gshared UDKSkelControl_MassBoneScaling mDefaultProperties;
	@property final static UDKSkelControl_MassBoneScaling DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKSkelControl_MassBoneScaling)("UDKSkelControl_MassBoneScaling UDKBase.Default__UDKSkelControl_MassBoneScaling")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetBoneScale;
			ScriptFunction mGetBoneScale;
		}
		public @property static final
		{
			ScriptFunction SetBoneScale() { return mSetBoneScale ? mSetBoneScale : (mSetBoneScale = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKSkelControl_MassBoneScaling.SetBoneScale")); }
			ScriptFunction GetBoneScale() { return mGetBoneScale ? mGetBoneScale : (mGetBoneScale = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKSkelControl_MassBoneScaling.GetBoneScale")); }
		}
	}
	@property final auto ref ScriptArray!(float) BoneScales() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 188); }
final:
	void SetBoneScale(ScriptName BoneName, float Scale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(float*)&params[8] = Scale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBoneScale, params.ptr, cast(void*)0);
	}
	float GetBoneScale(ScriptName BoneName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoneScale, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
}
