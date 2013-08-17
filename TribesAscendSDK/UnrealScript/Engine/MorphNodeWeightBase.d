module UnrealScript.Engine.MorphNodeWeightBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MorphNodeBase;

extern(C++) interface MorphNodeWeightBase : MorphNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MorphNodeWeightBase")()); }
	private static __gshared MorphNodeWeightBase mDefaultProperties;
	@property final static MorphNodeWeightBase DefaultProperties() { mixin(MGDPC!(MorphNodeWeightBase, "MorphNodeWeightBase Engine.Default__MorphNodeWeightBase")()); }
	struct MorphNodeConn
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.MorphNodeWeightBase.MorphNodeConn")()); }
		@property final auto ref
		{
			ScriptArray!(MorphNodeBase) ChildNodes() { mixin(MGPS!("ScriptArray!(MorphNodeBase)", 0)()); }
			int DrawY() { mixin(MGPS!("int", 20)()); }
			ScriptName ConnName() { mixin(MGPS!("ScriptName", 12)()); }
		}
	}
	@property final auto ref ScriptArray!(MorphNodeWeightBase.MorphNodeConn) NodeConns() { mixin(MGPC!("ScriptArray!(MorphNodeWeightBase.MorphNodeConn)", 108)()); }
}
