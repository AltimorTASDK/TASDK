module UnrealScript.Engine.SeqEvent_Used;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Texture2D;

extern(C++) interface SeqEvent_Used : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_Used")); }
	private static __gshared SeqEvent_Used mDefaultProperties;
	@property final static SeqEvent_Used DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_Used)("SeqEvent_Used Engine.Default__SeqEvent_Used")); }
	@property final
	{
		auto ref
		{
			float InteractDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			ScriptArray!(ScriptClass) ClassProximityTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 280); }
			ScriptArray!(ScriptClass) IgnoredClassProximityTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 292); }
			Texture2D InteractIcon() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 276); }
			ScriptString InteractText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 264); }
		}
		bool bAimToInteract() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x1) != 0; }
		bool bAimToInteract(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x1; } return val; }
	}
}
