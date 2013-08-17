module UnrealScript.Engine.PrimitiveComponentFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface PrimitiveComponentFactory : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PrimitiveComponentFactory")()); }
	private static __gshared PrimitiveComponentFactory mDefaultProperties;
	@property final static PrimitiveComponentFactory DefaultProperties() { mixin(MGDPC!(PrimitiveComponentFactory, "PrimitiveComponentFactory Engine.Default__PrimitiveComponentFactory")()); }
	@property final
	{
		bool CastShadow() { mixin(MGBPC!(60, 0x80)()); }
		bool CastShadow(bool val) { mixin(MSBPC!(60, 0x80)()); }
		bool HiddenEditor() { mixin(MGBPC!(60, 0x40)()); }
		bool HiddenEditor(bool val) { mixin(MSBPC!(60, 0x40)()); }
		bool HiddenGame() { mixin(MGBPC!(60, 0x20)()); }
		bool HiddenGame(bool val) { mixin(MSBPC!(60, 0x20)()); }
		bool BlockRigidBody() { mixin(MGBPC!(60, 0x10)()); }
		bool BlockRigidBody(bool val) { mixin(MSBPC!(60, 0x10)()); }
		bool BlockNonZeroExtent() { mixin(MGBPC!(60, 0x8)()); }
		bool BlockNonZeroExtent(bool val) { mixin(MSBPC!(60, 0x8)()); }
		bool BlockZeroExtent() { mixin(MGBPC!(60, 0x4)()); }
		bool BlockZeroExtent(bool val) { mixin(MSBPC!(60, 0x4)()); }
		bool BlockActors() { mixin(MGBPC!(60, 0x2)()); }
		bool BlockActors(bool val) { mixin(MSBPC!(60, 0x2)()); }
		bool CollideActors() { mixin(MGBPC!(60, 0x1)()); }
		bool CollideActors(bool val) { mixin(MSBPC!(60, 0x1)()); }
	}
}
