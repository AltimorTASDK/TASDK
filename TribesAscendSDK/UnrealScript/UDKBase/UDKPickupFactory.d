module UnrealScript.UDKBase.UDKPickupFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PickupFactory;

extern(C++) interface UDKPickupFactory : PickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKPickupFactory")); }
	private static __gshared UDKPickupFactory mDefaultProperties;
	@property final static UDKPickupFactory DefaultProperties() { mixin(MGDPC("UDKPickupFactory", "UDKPickupFactory UDKBase.Default__UDKPickupFactory")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetPickupVisible;
			ScriptFunction mSetPickupHidden;
		}
		public @property static final
		{
			ScriptFunction SetPickupVisible() { mixin(MGF("mSetPickupVisible", "Function UDKBase.UDKPickupFactory.SetPickupVisible")); }
			ScriptFunction SetPickupHidden() { mixin(MGF("mSetPickupHidden", "Function UDKBase.UDKPickupFactory.SetPickupHidden")); }
		}
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SpinningParticleEffects'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Spinner'!
			ScriptName GlowEmissiveParam() { mixin(MGPC("ScriptName", 868)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Glow'!
			MaterialInstanceConstant MIC_VisibilitySecondMaterial() { mixin(MGPC("MaterialInstanceConstant", 860)); }
			MaterialInstanceConstant MIC_Visibility() { mixin(MGPC("MaterialInstanceConstant", 856)); }
			ScriptName VisibilityParamName() { mixin(MGPC("ScriptName", 848)); }
			Vector PivotTranslation() { mixin(MGPC("Vector", 836)); }
			float YawRotationRate() { mixin(MGPC("float", 832)); }
			float BobBaseOffset() { mixin(MGPC("float", 828)); }
			float BobSpeed() { mixin(MGPC("float", 824)); }
			float BobOffset() { mixin(MGPC("float", 820)); }
			float BobTimer() { mixin(MGPC("float", 816)); }
			ScriptName BaseMaterialParamName() { mixin(MGPC("ScriptName", 808)); }
			UObject.LinearColor BaseEmissive() { mixin(MGPC("UObject.LinearColor", 792)); }
			UObject.LinearColor BaseTargetEmissive() { mixin(MGPC("UObject.LinearColor", 776)); }
			float PulseThreshold() { mixin(MGPC("float", 772)); }
			float BasePulseTime() { mixin(MGPC("float", 768)); }
			float BasePulseRate() { mixin(MGPC("float", 764)); }
			UObject.LinearColor BaseDimEmissive() { mixin(MGPC("UObject.LinearColor", 748)); }
			UObject.LinearColor BaseBrightEmissive() { mixin(MGPC("UObject.LinearColor", 732)); }
			MaterialInstanceConstant BaseMaterialInstance() { mixin(MGPC("MaterialInstanceConstant", 728)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'BaseMesh'!
		}
		bool bDoVisibilityFadeIn() { mixin(MGBPC(720, 0x80)); }
		bool bDoVisibilityFadeIn(bool val) { mixin(MSBPC(720, 0x80)); }
		bool bUpdatingPickup() { mixin(MGBPC(720, 0x40)); }
		bool bUpdatingPickup(bool val) { mixin(MSBPC(720, 0x40)); }
		bool bRotatingPickup() { mixin(MGBPC(720, 0x20)); }
		bool bRotatingPickup(bool val) { mixin(MSBPC(720, 0x20)); }
		bool bRandomStart() { mixin(MGBPC(720, 0x10)); }
		bool bRandomStart(bool val) { mixin(MSBPC(720, 0x10)); }
		bool bFloatingPickup() { mixin(MGBPC(720, 0x8)); }
		bool bFloatingPickup(bool val) { mixin(MSBPC(720, 0x8)); }
		bool bIsDisabled() { mixin(MGBPC(720, 0x4)); }
		bool bIsDisabled(bool val) { mixin(MSBPC(720, 0x4)); }
		bool bPulseBase() { mixin(MGBPC(720, 0x2)); }
		bool bPulseBase(bool val) { mixin(MSBPC(720, 0x2)); }
		bool bIsRespawning() { mixin(MGBPC(720, 0x1)); }
		bool bIsRespawning(bool val) { mixin(MSBPC(720, 0x1)); }
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
