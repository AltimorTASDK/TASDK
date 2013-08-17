module UnrealScript.UDKBase.UDKSkelControl_MassBoneScaling;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface UDKSkelControl_MassBoneScaling : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_MassBoneScaling")()); }
	private static __gshared UDKSkelControl_MassBoneScaling mDefaultProperties;
	@property final static UDKSkelControl_MassBoneScaling DefaultProperties() { mixin(MGDPC!(UDKSkelControl_MassBoneScaling, "UDKSkelControl_MassBoneScaling UDKBase.Default__UDKSkelControl_MassBoneScaling")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetBoneScale;
			ScriptFunction mGetBoneScale;
		}
		public @property static final
		{
			ScriptFunction SetBoneScale() { mixin(MGF!("mSetBoneScale", "Function UDKBase.UDKSkelControl_MassBoneScaling.SetBoneScale")()); }
			ScriptFunction GetBoneScale() { mixin(MGF!("mGetBoneScale", "Function UDKBase.UDKSkelControl_MassBoneScaling.GetBoneScale")()); }
		}
	}
	@property final auto ref ScriptArray!(float) BoneScales() { mixin(MGPC!(ScriptArray!(float), 188)()); }
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
