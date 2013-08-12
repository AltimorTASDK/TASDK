module UnrealScript.Engine.SeqVar_Group;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqVar_Object;

extern(C++) interface SeqVar_Group : SeqVar_Object
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_Group")); }
	private static __gshared SeqVar_Group mDefaultProperties;
	@property final static SeqVar_Group DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqVar_Group)("SeqVar_Group Engine.Default__SeqVar_Group")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject) Actors() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 188); }
			ScriptName GroupName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 176); }
		}
		bool bCachedList() { return (*cast(uint*)(cast(size_t)cast(void*)this + 184) & 0x1) != 0; }
		bool bCachedList(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 184) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 184) &= ~0x1; } return val; }
	}
}
