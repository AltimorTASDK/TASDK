module UnrealScript.Engine.ApexComponentBase;

import ScriptClasses;
import UnrealScript.Engine.MeshComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ApexAsset;

extern(C++) interface ApexComponentBase : MeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ApexComponentBase")); }
	@property final
	{
		auto ref
		{
			UObject.Color WireframeColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 512); }
			ApexAsset Asset() { return *cast(ApexAsset*)(cast(size_t)cast(void*)this + 508); }
			UObject.RenderCommandFence_Mirror ReleaseResourcesFence() { return *cast(UObject.RenderCommandFence_Mirror*)(cast(size_t)cast(void*)this + 504); }
			UObject.Pointer ComponentBaseResources() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 500); }
		}
		bool bAssetChanged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x1) != 0; }
		bool bAssetChanged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x1; } return val; }
	}
}
