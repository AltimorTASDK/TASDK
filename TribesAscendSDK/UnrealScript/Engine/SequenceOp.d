module UnrealScript.Engine.SequenceOp;

import ScriptClasses;
import UnrealScript.Engine.SequenceObject;
import UnrealScript.Core.Property;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.SequenceVariable;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpData;

extern(C++) interface SequenceOp : SequenceObject
{
	struct SeqOpInputLink
	{
		public @property final bool bHasImpulse() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bHasImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bHasImpulse[4];
		public @property final auto ref int OverrideDelta() { return *cast(int*)(cast(size_t)&this + 44); }
		private ubyte __OverrideDelta[4];
		public @property final bool bClampedMin() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x4) != 0; }
		public @property final bool bClampedMin(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x4; } return val; }
		private ubyte __bClampedMin[4];
		public @property final bool bClampedMax() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x2) != 0; }
		public @property final bool bClampedMax(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x2; } return val; }
		private ubyte __bClampedMax[4];
		public @property final bool bMoving() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x1) != 0; }
		public @property final bool bMoving(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x1; } return val; }
		private ubyte __bMoving[4];
		public @property final auto ref float ActivateDelay() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __ActivateDelay[4];
		public @property final bool bHidden() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
		public @property final bool bHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		private ubyte __bHidden[4];
		public @property final auto ref int DrawY() { return *cast(int*)(cast(size_t)&this + 28); }
		private ubyte __DrawY[4];
		public @property final auto ref SequenceOp LinkedOp() { return *cast(SequenceOp*)(cast(size_t)&this + 24); }
		private ubyte __LinkedOp[4];
		public @property final bool bDisabledPIE() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x2) != 0; }
		public @property final bool bDisabledPIE(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x2; } return val; }
		private ubyte __bDisabledPIE[4];
		public @property final bool bDisabled() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
		public @property final bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		private ubyte __bDisabled[4];
		public @property final auto ref int QueuedActivations() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __QueuedActivations[4];
		public @property final auto ref ScriptString LinkDesc() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __LinkDesc[12];
	}
	struct SeqOpOutputLink
	{
		public @property final auto ref ScriptArray!(SequenceOp.SeqOpOutputInputLink) Links() { return *cast(ScriptArray!(SequenceOp.SeqOpOutputInputLink)*)(cast(size_t)&this + 0); }
		private ubyte __Links[12];
		public @property final auto ref int OverrideDelta() { return *cast(int*)(cast(size_t)&this + 44); }
		private ubyte __OverrideDelta[4];
		public @property final bool bClampedMin() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x8) != 0; }
		public @property final bool bClampedMin(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x8; } return val; }
		private ubyte __bClampedMin[4];
		public @property final bool bClampedMax() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x4) != 0; }
		public @property final bool bClampedMax(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x4; } return val; }
		private ubyte __bClampedMax[4];
		public @property final bool bMoving() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x2) != 0; }
		public @property final bool bMoving(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x2; } return val; }
		private ubyte __bMoving[4];
		public @property final bool bHidden() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x1) != 0; }
		public @property final bool bHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x1; } return val; }
		private ubyte __bHidden[4];
		public @property final auto ref int DrawY() { return *cast(int*)(cast(size_t)&this + 36); }
		private ubyte __DrawY[4];
		public @property final auto ref float ActivateDelay() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __ActivateDelay[4];
		public @property final auto ref SequenceOp LinkedOp() { return *cast(SequenceOp*)(cast(size_t)&this + 28); }
		private ubyte __LinkedOp[4];
		public @property final bool bDisabledPIE() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x4) != 0; }
		public @property final bool bDisabledPIE(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x4; } return val; }
		private ubyte __bDisabledPIE[4];
		public @property final bool bDisabled() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
		public @property final bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
		private ubyte __bDisabled[4];
		public @property final bool bHasImpulse() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool bHasImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __bHasImpulse[4];
		public @property final auto ref ScriptString LinkDesc() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __LinkDesc[12];
	}
	struct SeqVarLink
	{
		public @property final auto ref ScriptArray!(SequenceVariable) LinkedVariables() { return *cast(ScriptArray!(SequenceVariable)*)(cast(size_t)&this + 4); }
		private ubyte __LinkedVariables[12];
		public @property final auto ref int OverrideDelta() { return *cast(int*)(cast(size_t)&this + 68); }
		private ubyte __OverrideDelta[4];
		public @property final bool bClampedMin() { return (*cast(uint*)(cast(size_t)&this + 64) & 0x8) != 0; }
		public @property final bool bClampedMin(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 64) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 64) &= ~0x8; } return val; }
		private ubyte __bClampedMin[4];
		public @property final bool bClampedMax() { return (*cast(uint*)(cast(size_t)&this + 64) & 0x4) != 0; }
		public @property final bool bClampedMax(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 64) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 64) &= ~0x4; } return val; }
		private ubyte __bClampedMax[4];
		public @property final bool bMoving() { return (*cast(uint*)(cast(size_t)&this + 64) & 0x2) != 0; }
		public @property final bool bMoving(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 64) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 64) &= ~0x2; } return val; }
		private ubyte __bMoving[4];
		public @property final bool bAllowAnyType() { return (*cast(uint*)(cast(size_t)&this + 64) & 0x1) != 0; }
		public @property final bool bAllowAnyType(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 64) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 64) &= ~0x1; } return val; }
		private ubyte __bAllowAnyType[4];
		public @property final auto ref Property CachedProperty() { return *cast(Property*)(cast(size_t)&this + 60); }
		private ubyte __CachedProperty[4];
		public @property final auto ref int DrawX() { return *cast(int*)(cast(size_t)&this + 56); }
		private ubyte __DrawX[4];
		public @property final auto ref int MaxVars() { return *cast(int*)(cast(size_t)&this + 52); }
		private ubyte __MaxVars[4];
		public @property final auto ref int MinVars() { return *cast(int*)(cast(size_t)&this + 48); }
		private ubyte __MinVars[4];
		public @property final bool bHidden() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x8) != 0; }
		public @property final bool bHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x8; } return val; }
		private ubyte __bHidden[4];
		public @property final bool bModifiesLinkedObject() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x4) != 0; }
		public @property final bool bModifiesLinkedObject(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x4; } return val; }
		private ubyte __bModifiesLinkedObject[4];
		public @property final bool bSequenceNeverReadsOnlyWritesToThisVar() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x2) != 0; }
		public @property final bool bSequenceNeverReadsOnlyWritesToThisVar(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x2; } return val; }
		private ubyte __bSequenceNeverReadsOnlyWritesToThisVar[4];
		public @property final bool bWriteable() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
		public @property final bool bWriteable(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
		private ubyte __bWriteable[4];
		public @property final auto ref ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)&this + 36); }
		private ubyte __PropertyName[8];
		public @property final auto ref ScriptName LinkVar() { return *cast(ScriptName*)(cast(size_t)&this + 28); }
		private ubyte __LinkVar[8];
		public @property final auto ref ScriptString LinkDesc() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
		private ubyte __LinkDesc[12];
		public @property final auto ref ScriptClass ExpectedType() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		private ubyte __ExpectedType[4];
	}
	struct SeqEventLink
	{
		public @property final auto ref ScriptArray!(SequenceEvent) LinkedEvents() { return *cast(ScriptArray!(SequenceEvent)*)(cast(size_t)&this + 4); }
		private ubyte __LinkedEvents[12];
		public @property final auto ref int OverrideDelta() { return *cast(int*)(cast(size_t)&this + 36); }
		private ubyte __OverrideDelta[4];
		public @property final bool bClampedMin() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x8) != 0; }
		public @property final bool bClampedMin(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x8; } return val; }
		private ubyte __bClampedMin[4];
		public @property final bool bClampedMax() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x4) != 0; }
		public @property final bool bClampedMax(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x4; } return val; }
		private ubyte __bClampedMax[4];
		public @property final bool bMoving() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x2) != 0; }
		public @property final bool bMoving(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x2; } return val; }
		private ubyte __bMoving[4];
		public @property final bool bHidden() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
		public @property final bool bHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		private ubyte __bHidden[4];
		public @property final auto ref int DrawX() { return *cast(int*)(cast(size_t)&this + 28); }
		private ubyte __DrawX[4];
		public @property final auto ref ScriptString LinkDesc() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
		private ubyte __LinkDesc[12];
		public @property final auto ref ScriptClass ExpectedType() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		private ubyte __ExpectedType[4];
	}
	struct SeqOpOutputInputLink
	{
		public @property final auto ref int InputLinkIdx() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __InputLinkIdx[4];
		public @property final auto ref SequenceOp LinkedOp() { return *cast(SequenceOp*)(cast(size_t)&this + 0); }
		private ubyte __LinkedOp[4];
	}
	public @property final auto ref ScriptArray!(SequenceOp.SeqOpInputLink) InputLinks() { return *cast(ScriptArray!(SequenceOp.SeqOpInputLink)*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptArray!(SequenceOp.SeqOpOutputLink) OutputLinks() { return *cast(ScriptArray!(SequenceOp.SeqOpOutputLink)*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptArray!(SequenceOp.SeqVarLink) VariableLinks() { return *cast(ScriptArray!(SequenceOp.SeqVarLink)*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref ScriptArray!(SequenceOp.SeqEventLink) EventLinks() { return *cast(ScriptArray!(SequenceOp.SeqEventLink)*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref int SearchTag() { return *cast(int*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref int ActivateCount() { return *cast(int*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref ubyte GamepadID() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref int PlayerIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 192); }
	public @property final bool bPendingOutputConnectorRecalc() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x100) != 0; }
	public @property final bool bPendingOutputConnectorRecalc(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x100; } return val; }
	public @property final bool bPendingInputConnectorRecalc() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x80) != 0; }
	public @property final bool bPendingInputConnectorRecalc(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x80; } return val; }
	public @property final bool bPendingVarConnectorRecalc() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x40) != 0; }
	public @property final bool bPendingVarConnectorRecalc(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x40; } return val; }
	public @property final bool bHaveMovingOutputConnector() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x20) != 0; }
	public @property final bool bHaveMovingOutputConnector(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x20; } return val; }
	public @property final bool bHaveMovingInputConnector() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x10) != 0; }
	public @property final bool bHaveMovingInputConnector(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x10; } return val; }
	public @property final bool bHaveMovingVarConnector() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x8) != 0; }
	public @property final bool bHaveMovingVarConnector(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x8; } return val; }
	public @property final bool bAutoActivateOutputLinks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x4) != 0; }
	public @property final bool bAutoActivateOutputLinks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x4; } return val; }
	public @property final bool bLatentExecution() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x2) != 0; }
	public @property final bool bLatentExecution(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x2; } return val; }
	public @property final bool bActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
	public @property final bool bActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	final void GetObjectVars(ScriptArray!(UObject)* objVars, ScriptString inDesc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(UObject)*)params.ptr = *objVars;
		*cast(ScriptString*)&params[12] = inDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4369], params.ptr, cast(void*)0);
		*objVars = *cast(ScriptArray!(UObject)*)params.ptr;
	}
	final bool HasLinkedOps(bool bConsiderInputLinks)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bConsiderInputLinks;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6801], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void GetLinkedObjects(ScriptArray!(SequenceObject)* out_Objects, ScriptClass ObjectType, bool bRecurse)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(SequenceObject)*)params.ptr = *out_Objects;
		*cast(ScriptClass*)&params[12] = ObjectType;
		*cast(bool*)&params[16] = bRecurse;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6804], params.ptr, cast(void*)0);
		*out_Objects = *cast(ScriptArray!(SequenceObject)*)params.ptr;
	}
	final void GetInterpDataVars(ScriptArray!(InterpData)* outIData, ScriptString inDesc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(InterpData)*)params.ptr = *outIData;
		*cast(ScriptString*)&params[12] = inDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6812], params.ptr, cast(void*)0);
		*outIData = *cast(ScriptArray!(InterpData)*)params.ptr;
	}
	final void GetBoolVars(ScriptArray!(ubyte)* boolVars, ScriptString inDesc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = *boolVars;
		*cast(ScriptString*)&params[12] = inDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6816], params.ptr, cast(void*)0);
		*boolVars = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
	final void LinkedVariables(ScriptClass VarClass, SequenceVariable* OutVariable, ScriptString inDesc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = VarClass;
		*cast(SequenceVariable*)&params[4] = *OutVariable;
		*cast(ScriptString*)&params[8] = inDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6820], params.ptr, cast(void*)0);
		*OutVariable = *cast(SequenceVariable*)&params[4];
	}
	final bool ActivateOutputLink(int OutputIdx)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OutputIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6824], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool ActivateNamedOutputLink(ScriptString LinkDesc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LinkDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6827], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6830], cast(void*)0, cast(void*)0);
	}
	final void Deactivated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6831], cast(void*)0, cast(void*)0);
	}
	final void VersionUpdated(int OldVersion, int NewVersion)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OldVersion;
		*cast(int*)&params[4] = NewVersion;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6832], params.ptr, cast(void*)0);
	}
	final void PopulateLinkedVariableValues()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6835], cast(void*)0, cast(void*)0);
	}
	final void PublishLinkedVariableValues()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6836], cast(void*)0, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6837], cast(void*)0, cast(void*)0);
	}
	final Pawn GetPawn(Actor TheActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = TheActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6838], params.ptr, cast(void*)0);
		return *cast(Pawn*)&params[4];
	}
	final Controller GetController(Actor TheActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = TheActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6843], params.ptr, cast(void*)0);
		return *cast(Controller*)&params[4];
	}
	final void ForceActivateInput(int InputIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = InputIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6848], params.ptr, cast(void*)0);
	}
	final void ForceActivateOutput(int OutputIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = OutputIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6850], params.ptr, cast(void*)0);
	}
}
