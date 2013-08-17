module UnrealScript.Engine.DMC_Prototype;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2GraphBase;

extern(C++) interface DMC_Prototype : K2GraphBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DMC_Prototype")()); }
	private static __gshared DMC_Prototype mDefaultProperties;
	@property final static DMC_Prototype DefaultProperties() { mixin(MGDPC!(DMC_Prototype, "DMC_Prototype Engine.Default__DMC_Prototype")()); }
	struct DMCNewVar
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.DMC_Prototype.DMCNewVar")()); }
		@property final auto ref
		{
			ScriptName VarType() { mixin(MGPS!(ScriptName, 8)()); }
			ScriptName VarName() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(DMC_Prototype.DMCNewVar) NewVars() { mixin(MGPC!(ScriptArray!(DMC_Prototype.DMCNewVar), 104)()); }
		ScriptString DefaultPropText() { mixin(MGPC!(ScriptString, 92)()); }
		ScriptString FunctionCode() { mixin(MGPC!(ScriptString, 80)()); }
		ScriptClass GeneratedClass() { mixin(MGPC!(ScriptClass, 76)()); }
		ScriptClass ParentClass() { mixin(MGPC!(ScriptClass, 72)()); }
	}
}
