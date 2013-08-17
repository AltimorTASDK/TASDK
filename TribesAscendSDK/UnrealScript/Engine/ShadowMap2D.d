module UnrealScript.Engine.ShadowMap2D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ShadowMapTexture2D;

extern(C++) interface ShadowMap2D : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ShadowMap2D")()); }
	private static __gshared ShadowMap2D mDefaultProperties;
	@property final static ShadowMap2D DefaultProperties() { mixin(MGDPC!(ShadowMap2D, "ShadowMap2D Engine.Default__ShadowMap2D")()); }
	@property final
	{
		auto ref
		{
			int InstanceIndex() { mixin(MGPC!(int, 104)()); }
			// WARNING: Property 'Component' has the same name as a defined type!
			UObject.Guid LightGuid() { mixin(MGPC!(UObject.Guid, 80)()); }
			UObject.Vector2D CoordinateBias() { mixin(MGPC!(UObject.Vector2D, 72)()); }
			UObject.Vector2D CoordinateScale() { mixin(MGPC!(UObject.Vector2D, 64)()); }
			// WARNING: Property 'Texture' has the same name as a defined type!
		}
		bool bIsShadowFactorTexture() { mixin(MGBPC!(96, 0x1)()); }
		bool bIsShadowFactorTexture(bool val) { mixin(MSBPC!(96, 0x1)()); }
	}
}
