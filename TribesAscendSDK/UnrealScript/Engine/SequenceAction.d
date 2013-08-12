module UnrealScript.Engine.SequenceAction;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceOp;

extern(C++) interface SequenceAction : SequenceOp
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SequenceAction")); }
	private static __gshared SequenceAction mDefaultProperties;
	@property final static SequenceAction DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SequenceAction)("SequenceAction Engine.Default__SequenceAction")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject) Targets() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 220); }
			ScriptName HandlerName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 208); }
		}
		bool bCallHandler() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x1) != 0; }
		bool bCallHandler(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x1; } return val; }
	}
}
