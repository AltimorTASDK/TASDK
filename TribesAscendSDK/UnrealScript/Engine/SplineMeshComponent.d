module UnrealScript.Engine.SplineMeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.StaticMeshComponent;

extern(C++) interface SplineMeshComponent : StaticMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SplineMeshComponent")()); }
	private static __gshared SplineMeshComponent mDefaultProperties;
	@property final static SplineMeshComponent DefaultProperties() { mixin(MGDPC!(SplineMeshComponent, "SplineMeshComponent Engine.Default__SplineMeshComponent")()); }
	struct SplineMeshParams
	{
		private ubyte __buffer__[88];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SplineMeshComponent.SplineMeshParams")()); }
		@property final auto ref
		{
			UObject.Vector2D EndOffset() { mixin(MGPS!("UObject.Vector2D", 80)()); }
			float EndRoll() { mixin(MGPS!("float", 76)()); }
			UObject.Vector2D EndScale() { mixin(MGPS!("UObject.Vector2D", 68)()); }
			Vector EndTangent() { mixin(MGPS!("Vector", 56)()); }
			Vector EndPos() { mixin(MGPS!("Vector", 44)()); }
			UObject.Vector2D StartOffset() { mixin(MGPS!("UObject.Vector2D", 36)()); }
			float StartRoll() { mixin(MGPS!("float", 32)()); }
			UObject.Vector2D StartScale() { mixin(MGPS!("UObject.Vector2D", 24)()); }
			Vector StartTangent() { mixin(MGPS!("Vector", 12)()); }
			Vector StartPos() { mixin(MGPS!("Vector", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector SplineXDir() { mixin(MGPC!("Vector", 696)()); }
			SplineMeshComponent.SplineMeshParams SplineParams() { mixin(MGPC!("SplineMeshComponent.SplineMeshParams", 608)()); }
		}
		bool bSmoothInterpRollScale() { mixin(MGBPC!(708, 0x1)()); }
		bool bSmoothInterpRollScale(bool val) { mixin(MSBPC!(708, 0x1)()); }
	}
}
