module UnrealScript.Engine.AnimNodeBlendList;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeBlendList : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimNodeBlendList")); }
	private static __gshared AnimNodeBlendList mDefaultProperties;
	@property final static AnimNodeBlendList DefaultProperties() { mixin(MGDPC("AnimNodeBlendList", "AnimNodeBlendList Engine.Default__AnimNodeBlendList")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetActiveChild;
		public @property static final ScriptFunction SetActiveChild() { mixin(MGF("mSetActiveChild", "Function Engine.AnimNodeBlendList.SetActiveChild")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(float) TargetWeight() { mixin(MGPC("ScriptArray!(float)", 244)); }
			int EditorActiveChildIndex() { mixin(MGPC("int", 272)); }
			float SliderPosition() { mixin(MGPC("float", 268)); }
			int ActiveChildIndex() { mixin(MGPC("int", 260)); }
			float BlendTimeToGo() { mixin(MGPC("float", 256)); }
		}
		bool bSkipBlendWhenNotRendered() { mixin(MGBPC(264, 0x4)); }
		bool bSkipBlendWhenNotRendered(bool val) { mixin(MSBPC(264, 0x4)); }
		bool bForceChildFullWeightWhenBecomingRelevant() { mixin(MGBPC(264, 0x2)); }
		bool bForceChildFullWeightWhenBecomingRelevant(bool val) { mixin(MSBPC(264, 0x2)); }
		bool bPlayActiveChild() { mixin(MGBPC(264, 0x1)); }
		bool bPlayActiveChild(bool val) { mixin(MSBPC(264, 0x1)); }
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
