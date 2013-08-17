module UnrealScript.Engine.LensFlareComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LensFlare;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface LensFlareComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LensFlareComponent")()); }
	private static __gshared LensFlareComponent mDefaultProperties;
	@property final static LensFlareComponent DefaultProperties() { mixin(MGDPC!(LensFlareComponent, "LensFlareComponent Engine.Default__LensFlareComponent")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetTemplate;
			ScriptFunction mSetSourceColor;
			ScriptFunction mSetIsActive;
		}
		public @property static final
		{
			ScriptFunction SetTemplate() { mixin(MGF!("mSetTemplate", "Function Engine.LensFlareComponent.SetTemplate")()); }
			ScriptFunction SetSourceColor() { mixin(MGF!("mSetSourceColor", "Function Engine.LensFlareComponent.SetSourceColor")()); }
			ScriptFunction SetIsActive() { mixin(MGF!("mSetIsActive", "Function Engine.LensFlareComponent.SetIsActive")()); }
		}
	}
	struct LensFlareElementMaterials
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.LensFlareComponent.LensFlareElementMaterials")()); }
		@property final auto ref ScriptArray!(MaterialInterface) ElementMaterials() { mixin(MGPS!("ScriptArray!(MaterialInterface)", 0)()); }
	}
	struct LensFlareElementInstance
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.LensFlareComponent.LensFlareElementInstance")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(LensFlareComponent.LensFlareElementMaterials) Materials() { mixin(MGPC!("ScriptArray!(LensFlareComponent.LensFlareElementMaterials)", 540)()); }
			float NextTraceTime() { mixin(MGPC!("float", 556)()); }
			UObject.Pointer ReleaseResourcesFence() { mixin(MGPC!("UObject.Pointer", 552)()); }
			UObject.LinearColor SourceColor() { mixin(MGPC!("UObject.LinearColor", 524)()); }
			float Radius() { mixin(MGPC!("float", 520)()); }
			float ConeFudgeFactor() { mixin(MGPC!("float", 516)()); }
			float InnerCone() { mixin(MGPC!("float", 512)()); }
			float OuterCone() { mixin(MGPC!("float", 508)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviewRadius'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviewOuterCone'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviewInnerCone'!
			LensFlare Template() { mixin(MGPC!("LensFlare", 488)()); }
		}
		bool bVisibleForMobile() { mixin(MGBPC!(504, 0x40)()); }
		bool bVisibleForMobile(bool val) { mixin(MSBPC!(504, 0x40)()); }
		bool bUsesSceneColor() { mixin(MGBPC!(504, 0x20)()); }
		bool bUsesSceneColor(bool val) { mixin(MSBPC!(504, 0x20)()); }
		bool bHasUnlitDistortion() { mixin(MGBPC!(504, 0x10)()); }
		bool bHasUnlitDistortion(bool val) { mixin(MSBPC!(504, 0x10)()); }
		bool bHasUnlitTranslucency() { mixin(MGBPC!(504, 0x8)()); }
		bool bHasUnlitTranslucency(bool val) { mixin(MSBPC!(504, 0x8)()); }
		bool bHasTranslucency() { mixin(MGBPC!(504, 0x4)()); }
		bool bHasTranslucency(bool val) { mixin(MSBPC!(504, 0x4)()); }
		bool bIsActive() { mixin(MGBPC!(504, 0x2)()); }
		bool bIsActive(bool val) { mixin(MSBPC!(504, 0x2)()); }
		bool bAutoActivate() { mixin(MGBPC!(504, 0x1)()); }
		bool bAutoActivate(bool val) { mixin(MSBPC!(504, 0x1)()); }
	}
final:
	void SetTemplate(LensFlare NewTemplate, bool* bForceSet = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LensFlare*)params.ptr = NewTemplate;
		if (bForceSet !is null)
			*cast(bool*)&params[4] = *bForceSet;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTemplate, params.ptr, cast(void*)0);
	}
	void SetSourceColor(UObject.LinearColor InSourceColor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.LinearColor*)params.ptr = InSourceColor;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSourceColor, params.ptr, cast(void*)0);
	}
	void SetIsActive(bool bInIsActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInIsActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetIsActive, params.ptr, cast(void*)0);
	}
}
