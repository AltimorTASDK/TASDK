module UnrealScript.Engine.ApexAsset;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ApexAsset : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) ApexComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 72); }
		ScriptArray!(ApexAsset) NamedReferences() { return *cast(ScriptArray!(ApexAsset)*)(cast(size_t)cast(void*)this + 84); }
		ScriptString SourceFilePath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
		ScriptString OriginalApexName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
	}
}
