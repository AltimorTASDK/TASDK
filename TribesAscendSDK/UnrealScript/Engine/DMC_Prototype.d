module UnrealScript.Engine.DMC_Prototype;

import ScriptClasses;
import UnrealScript.Engine.K2GraphBase;

extern(C++) interface DMC_Prototype : K2GraphBase
{
	struct DMCNewVar
	{
		public @property final auto ref ScriptName VarType() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __VarType[8];
		public @property final auto ref ScriptName VarName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __VarName[8];
	}
	public @property final auto ref ScriptArray!(DMC_Prototype.DMCNewVar) NewVars() { return *cast(ScriptArray!(DMC_Prototype.DMCNewVar)*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref ScriptString DefaultPropText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref ScriptString FunctionCode() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ScriptClass GeneratedClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ScriptClass ParentClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 72); }
}
