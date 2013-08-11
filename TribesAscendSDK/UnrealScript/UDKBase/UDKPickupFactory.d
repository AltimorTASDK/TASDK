module UnrealScript.UDKBase.UDKPickupFactory;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PickupFactory;

extern(C++) interface UDKPickupFactory : PickupFactory
{
	public @property final auto ref ScriptName GlowEmissiveParam() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 868); }
	public @property final auto ref MaterialInstanceConstant MIC_VisibilitySecondMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 860); }
	public @property final auto ref MaterialInstanceConstant MIC_Visibility() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 856); }
	public @property final auto ref ScriptName VisibilityParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 848); }
	public @property final auto ref Vector PivotTranslation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 836); }
	public @property final auto ref float YawRotationRate() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
	public @property final auto ref float BobBaseOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 828); }
	public @property final auto ref float BobSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
	public @property final auto ref float BobOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
	public @property final auto ref float BobTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 816); }
	public @property final auto ref ScriptName BaseMaterialParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 808); }
	public @property final auto ref UObject.LinearColor BaseEmissive() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 792); }
	public @property final auto ref UObject.LinearColor BaseTargetEmissive() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 776); }
	public @property final auto ref float PulseThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 772); }
	public @property final auto ref float BasePulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 768); }
	public @property final auto ref float BasePulseRate() { return *cast(float*)(cast(size_t)cast(void*)this + 764); }
	public @property final auto ref UObject.LinearColor BaseDimEmissive() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 748); }
	public @property final auto ref UObject.LinearColor BaseBrightEmissive() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 732); }
	public @property final auto ref MaterialInstanceConstant BaseMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 728); }
	public @property final bool bDoVisibilityFadeIn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x80) != 0; }
	public @property final bool bDoVisibilityFadeIn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x80; } return val; }
	public @property final bool bUpdatingPickup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x40) != 0; }
	public @property final bool bUpdatingPickup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x40; } return val; }
	public @property final bool bRotatingPickup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x20) != 0; }
	public @property final bool bRotatingPickup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x20; } return val; }
	public @property final bool bRandomStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x10) != 0; }
	public @property final bool bRandomStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x10; } return val; }
	public @property final bool bFloatingPickup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x8) != 0; }
	public @property final bool bFloatingPickup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x8; } return val; }
	public @property final bool bIsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x4) != 0; }
	public @property final bool bIsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x4; } return val; }
	public @property final bool bPulseBase() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x2) != 0; }
	public @property final bool bPulseBase(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x2; } return val; }
	public @property final bool bIsRespawning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 720) & 0x1) != 0; }
	public @property final bool bIsRespawning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 720) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 720) &= ~0x1; } return val; }
	final void SetPickupVisible()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35231], cast(void*)0, cast(void*)0);
	}
	final void SetPickupHidden()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35232], cast(void*)0, cast(void*)0);
	}
}
