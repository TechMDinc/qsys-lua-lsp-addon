---@meta


---
---Mixer objects allow access to Mixer components that have been named in the design.
---To create a mixer object, call Mixer.New( mixerName ). The mixer object uses a string
---specification to determine which inputs and outputs to apply changes to. The syntax
---supports either space or comma separated numbers, ranges of numbers or all (*). It
---supports negation of selection with the '!' operator.
---
---[Open in Browser](https://help.qsys.com/Index.htm#Control_Scripting/Using_Lua_in_Q-Sys/Mixer.htm?)
---
---@class Mixer
Mixer = {}


---@class MixerReference
local MixerReference = {}


---
---Create a new named Mixer reference.
---
---@param name string
---@return MixerReference
function Mixer.New(name) end



---
---Sets specified cross point gains with optional ramp time.
---
---@param ins string
---@param outs string
---@param gain number
---@param ramp? number
function MixerReference:SetCrossPointGain(ins, outs, gain, ramp) end


---
---Sets specified cross point mutes with boolean.
---
---@param ins string
---@param outs string
---@param mute boolean
function MixerReference:SetCrossPointMute(ins, outs, mute) end


---
---Sets specified cross point solos with boolean.
---
---@param ins string
---@param outs string
---@param solo boolean
function MixerReference:SetCrossPointSolo(ins, outs, solo) end


---
---Sets specified cross point delay with optional ramp time.
---
---@param ins string
---@param outs string
---@param delay number
---@param ramp? number
function MixerReference:SetCrossPointDelay(ins, outs, delay, ramp) end


---
---Sets specified input gain with optional ramp time.
---
---@param ins string
---@param gain number
---@param ramp? number
function MixerReference:SetInputGain(ins, gain, ramp) end


---
---Sets specified input mutes.
---
---@param ins string
---@param mute boolean
function MixerReference:SetInputMute(ins, mute) end


---
---Sets specified input solos.
---
---@param ins string
---@param solo boolean
function MixerReference:SetInputSolo(ins, solo) end


---
---Sets specified output gain with optional ramp time
---
---@param outs string
---@param gain number
---@param ramp? number
function MixerReference:SetOutputGain(outs, gain, ramp) end


---
---Sets specified output mutes.
---
---@param outs string
---@param mute boolean
function MixerReference:SetOutputMute(outs, mute) end


---
---Sets specified input cues enables.
---
---@param ins string
---@param cues string
---@param enable boolean
function MixerReference:SetInputCueEnable(ins, cues, enable) end


---
---Sets specified input AFL enables.
---
---@param ins string
---@param afls string
---@param enable boolean
function MixerReference:SetInputCueAfl(ins, afls, enable) end


---
---Sets specified cue gains with optional ramp time.
---
---@param cues string
---@param gain number
---@param ramp? number
function MixerReference:SetCueGain(cues, gain, ramp) end


---
---Sets specified cue mutes.
---
---@param cues string
---@param mute boolean
function MixerReference:SetCueMute(cues, mute) end


---@class CrossPoint
---@field Input string
---@field Output string
---@field Gain number
---@field Mute boolean
---@field Delay number
---@field Solo boolean


---
---Gets specified cross point values.
---
---@param ins string
---@param outs string
---@return CrossPoint[]
function MixerReference:GetMixerCrossPoint(ins, outs) end


return Mixer
