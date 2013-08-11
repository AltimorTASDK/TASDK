module UnrealScript.Engine.PBRuleNodeBase;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface PBRuleNodeBase : UObject
{
	struct PBRuleLink
	{
		public @property final auto ref int DrawY() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __DrawY[4];
		public @property final auto ref ScriptName LinkName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __LinkName[8];
		public @property final auto ref PBRuleNodeBase NextRule() { return *cast(PBRuleNodeBase*)(cast(size_t)&this + 0); }
		private ubyte __NextRule[4];
	}
	public @property final auto ref ScriptArray!(PBRuleNodeBase.PBRuleLink) NextRules() { return *cast(ScriptArray!(PBRuleNodeBase.PBRuleLink)*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref int DrawHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref int DrawWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref int InDrawY() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref int RulePosY() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref int RulePosX() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptString Comment() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
}
