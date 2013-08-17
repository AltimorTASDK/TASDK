module UnrealScript.Engine.SpeedTree;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface SpeedTree : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SpeedTree")()); }
	private static __gshared SpeedTree mDefaultProperties;
	@property final static SpeedTree DefaultProperties() { mixin(MGDPC!(SpeedTree, "SpeedTree Engine.Default__SpeedTree")()); }
	@property final
	{
		auto ref
		{
			UObject.Guid LightingGuid() { mixin(MGPC!("UObject.Guid", 112)()); }
			Vector WindDirection() { mixin(MGPC!("Vector", 100)()); }
			float WindStrength() { mixin(MGPC!("float", 96)()); }
			MaterialInterface BillboardMaterial() { mixin(MGPC!("MaterialInterface", 92)()); }
			MaterialInterface LeafMeshMaterial() { mixin(MGPC!("MaterialInterface", 88)()); }
			MaterialInterface LeafCardMaterial() { mixin(MGPC!("MaterialInterface", 84)()); }
			MaterialInterface FrondMaterial() { mixin(MGPC!("MaterialInterface", 80)()); }
			MaterialInterface Branch2Material() { mixin(MGPC!("MaterialInterface", 76)()); }
			MaterialInterface Branch1Material() { mixin(MGPC!("MaterialInterface", 72)()); }
			float LeafStaticShadowOpacity() { mixin(MGPC!("float", 68)()); }
			UObject.Pointer SRH() { mixin(MGPC!("UObject.Pointer", 64)()); }
		}
		bool bLegacySpeedTree() { mixin(MGBPC!(60, 0x1)()); }
		bool bLegacySpeedTree(bool val) { mixin(MSBPC!(60, 0x1)()); }
	}
}
