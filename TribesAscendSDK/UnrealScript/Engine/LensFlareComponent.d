module UnrealScript.Engine.LensFlareComponent;

import ScriptClasses;
import UnrealScript.Engine.LensFlare;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface LensFlareComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LensFlareComponent")); }
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
			ScriptFunction SetTemplate() { return mSetTemplate ? mSetTemplate : (mSetTemplate = ScriptObject.Find!(ScriptFunction)("Function Engine.LensFlareComponent.SetTemplate")); }
			ScriptFunction SetSourceColor() { return mSetSourceColor ? mSetSourceColor : (mSetSourceColor = ScriptObject.Find!(ScriptFunction)("Function Engine.LensFlareComponent.SetSourceColor")); }
			ScriptFunction SetIsActive() { return mSetIsActive ? mSetIsActive : (mSetIsActive = ScriptObject.Find!(ScriptFunction)("Function Engine.LensFlareComponent.SetIsActive")); }
		}
	}
	struct LensFlareElementMaterials
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.LensFlareComponent.LensFlareElementMaterials")); }
		@property final auto ref ScriptArray!(MaterialInterface) ElementMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)&this + 0); }
	}
	struct LensFlareElementInstance
	{
		private ubyte __buffer__[0];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.LensFlareComponent.LensFlareElementInstance")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(LensFlareComponent.LensFlareElementMaterials) Materials() { return *cast(ScriptArray!(LensFlareComponent.LensFlareElementMaterials)*)(cast(size_t)cast(void*)this + 540); }
			float NextTraceTime() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
			UObject.Pointer ReleaseResourcesFence() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 552); }
			UObject.LinearColor SourceColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 524); }
			float Radius() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
			float ConeFudgeFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
			float InnerCone() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			float OuterCone() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			LensFlare Template() { return *cast(LensFlare*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bVisibleForMobile() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x40) != 0; }
		bool bVisibleForMobile(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x40; } return val; }
		bool bUsesSceneColor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x20) != 0; }
		bool bUsesSceneColor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x20; } return val; }
		bool bHasUnlitDistortion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x10) != 0; }
		bool bHasUnlitDistortion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x10; } return val; }
		bool bHasUnlitTranslucency() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x8) != 0; }
		bool bHasUnlitTranslucency(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x8; } return val; }
		bool bHasTranslucency() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x4) != 0; }
		bool bHasTranslucency(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x4; } return val; }
		bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x2) != 0; }
		bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x2; } return val; }
		bool bAutoActivate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
		bool bAutoActivate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
	}
final:
	void SetTemplate(LensFlare NewTemplate, bool bForceSet)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LensFlare*)params.ptr = NewTemplate;
		*cast(bool*)&params[4] = bForceSet;
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
