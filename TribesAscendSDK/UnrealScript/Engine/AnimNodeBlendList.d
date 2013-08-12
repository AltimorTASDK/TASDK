module UnrealScript.Engine.AnimNodeBlendList;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeBlendList : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodeBlendList")); }
	private static __gshared AnimNodeBlendList mDefaultProperties;
	@property final static AnimNodeBlendList DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNodeBlendList)("AnimNodeBlendList Engine.Default__AnimNodeBlendList")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetActiveChild;
		public @property static final ScriptFunction SetActiveChild() { return mSetActiveChild ? mSetActiveChild : (mSetActiveChild = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeBlendList.SetActiveChild")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(float) TargetWeight() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 244); }
			int EditorActiveChildIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 272); }
			float SliderPosition() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
			int ActiveChildIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 260); }
			float BlendTimeToGo() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
		}
		bool bSkipBlendWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x4) != 0; }
		bool bSkipBlendWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x4; } return val; }
		bool bForceChildFullWeightWhenBecomingRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x2) != 0; }
		bool bForceChildFullWeightWhenBecomingRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x2; } return val; }
		bool bPlayActiveChild() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x1) != 0; }
		bool bPlayActiveChild(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x1; } return val; }
	}
	final void SetActiveChild(int ChildIndex, float BlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ChildIndex;
		*cast(float*)&params[4] = BlendTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActiveChild, params.ptr, cast(void*)0);
	}
}
