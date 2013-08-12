module UnrealScript.UDKBase.UDKPickupFactory;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PickupFactory;

extern(C++) interface UDKPickupFactory : PickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKPickupFactory")); }
	private static __gshared UDKPickupFactory mDefaultProperties;
	@property final static UDKPickupFactory DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKPickupFactory)("UDKPickupFactory UDKBase.Default__UDKPickupFactory")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetPickupVisible;
			ScriptFunction mSetPickupHidden;
		}
		public @property static final
		{
			ScriptFunction SetPickupVisible() { return mSetPickupVisible ? mSetPickupVisible : (mSetPickupVisible = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKPickupFactory.SetPickupVisible")); }
			ScriptFunction SetPickupHidden() { return mSetPickupHidden ? mSetPickupHidden : (mSetPickupHidden = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKPickupFactory.SetPickupHidden")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptName GlowEmissiveParam() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 868); }
			MaterialInstanceConstant MIC_VisibilitySecondMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 860); }
			MaterialInstanceConstant MIC_Visibility() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 856); }
			ScriptName VisibilityParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 848); }
			Vector PivotTranslation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 836); }
			float YawRotationRate() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
			float BobBaseOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 828); }
			float BobSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
			float BobOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
			float BobTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 816); }
			ScriptName BaseMaterialParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 808); }
			UObject.LinearColor BaseEmissive() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 792); }
			UObject.LinearColor BaseTargetEmissive() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 776); }
			float PulseThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 772); }
			float BasePulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 768); }
			float BasePulseRate() { return *cast(float*)(cast(size_t)cast(void*)this + 764); }
			UObject.LinearColor BaseDimEmissive() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 748); }
			UObject.LinearColor BaseBrightEmissive() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 732); }
			MaterialInstanceConstant BaseMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 728); }
		}
		bool bDoVisibilityFadeIn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x80) != 0; }
		bool bDoVisibilityFadeIn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x80; } return val; }
		bool bUpdatingPickup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x40) != 0; }
		bool bUpdatingPickup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x40; } return val; }
		bool bRotatingPickup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x20) != 0; }
		bool bRotatingPickup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x20; } return val; }
		bool bRandomStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x10) != 0; }
		bool bRandomStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x10; } return val; }
		bool bFloatingPickup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x8) != 0; }
		bool bFloatingPickup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x8; } return val; }
		bool bIsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x4) != 0; }
		bool bIsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x4; } return val; }
		bool bPulseBase() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x2) != 0; }
		bool bPulseBase(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x2; } return val; }
		bool bIsRespawning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x1) != 0; }
		bool bIsRespawning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x1; } return val; }
	}
final:
	void SetPickupVisible()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupVisible, cast(void*)0, cast(void*)0);
	}
	void SetPickupHidden()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupHidden, cast(void*)0, cast(void*)0);
	}
}
