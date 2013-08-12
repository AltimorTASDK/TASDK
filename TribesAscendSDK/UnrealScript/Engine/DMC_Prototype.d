module UnrealScript.Engine.DMC_Prototype;

import ScriptClasses;
import UnrealScript.Engine.K2GraphBase;

extern(C++) interface DMC_Prototype : K2GraphBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DMC_Prototype")); }
	private static __gshared DMC_Prototype mDefaultProperties;
	@property final static DMC_Prototype DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DMC_Prototype)("DMC_Prototype Engine.Default__DMC_Prototype")); }
	struct DMCNewVar
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.DMC_Prototype.DMCNewVar")); }
		@property final auto ref
		{
			ScriptName VarType() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
			ScriptName VarName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(DMC_Prototype.DMCNewVar) NewVars() { return *cast(ScriptArray!(DMC_Prototype.DMCNewVar)*)(cast(size_t)cast(void*)this + 104); }
		ScriptString DefaultPropText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 92); }
		ScriptString FunctionCode() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 80); }
		ScriptClass GeneratedClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 76); }
		ScriptClass ParentClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 72); }
	}
}
