module UnrealScript.Engine.ApexComponentBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MeshComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ApexAsset;

extern(C++) interface ApexComponentBase : MeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ApexComponentBase")()); }
	private static __gshared ApexComponentBase mDefaultProperties;
	@property final static ApexComponentBase DefaultProperties() { mixin(MGDPC!(ApexComponentBase, "ApexComponentBase Engine.Default__ApexComponentBase")()); }
	@property final
	{
		auto ref
		{
			UObject.Color WireframeColor() { mixin(MGPC!(UObject.Color, 512)()); }
			ApexAsset Asset() { mixin(MGPC!(ApexAsset, 508)()); }
			UObject.RenderCommandFence_Mirror ReleaseResourcesFence() { mixin(MGPC!(UObject.RenderCommandFence_Mirror, 504)()); }
			UObject.Pointer ComponentBaseResources() { mixin(MGPC!(UObject.Pointer, 500)()); }
		}
		bool bAssetChanged() { mixin(MGBPC!(516, 0x1)()); }
		bool bAssetChanged(bool val) { mixin(MSBPC!(516, 0x1)()); }
	}
}
