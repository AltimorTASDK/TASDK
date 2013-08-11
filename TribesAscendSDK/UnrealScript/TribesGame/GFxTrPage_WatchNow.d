module UnrealScript.TribesGame.GFxTrPage_WatchNow;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_WatchNow : GFxTrPage
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(int) FeaturedNums() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 420); }
		ScriptString strCmntyVideos() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 408); }
		ScriptString strTrainVideos() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 396); }
		ScriptString strHiRezVideos() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 384); }
		ScriptString strLiveStreams() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 372); }
		int NumCmntyVideos() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
		int NumTrainVideos() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
		int NumHiRezVideos() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
		int NumLiveStreams() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61499], cast(void*)0, cast(void*)0);
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61500], cast(void*)0, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61502], params.ptr, cast(void*)0);
	}
	void UpdateStreams()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61506], cast(void*)0, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61512], params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61514], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61529], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	bool IsFeatured(int Num)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Num;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61535], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
