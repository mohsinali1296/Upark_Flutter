import 'package:flutter/material.dart';
import 'dialogue.dart';

class DialogueHelper{
  static openAccessDialogue(context)=> showDialog(context: context,builder: (context)=>LocationAccessDailogue());
  static openRoleDialogueBox(context)=> showDialog(context: context,builder: (context)=>RoleDialogueBox());
  static openForgetPasswordDialogueBox(context)=> showDialog(context: context,builder: (context)=>ForgetPasswordDialogueBox());
  static openChangePasswordDialogueBox(context)=> showDialog(context: context,builder: (context)=>ChangePasswordDialogue());
  static openOKDialogueBox(context)=> showDialog(context: context,builder: (context)=>OkDialogue());
  static openOKDialogueBox2(context)=> showDialog(context: context,builder: (context)=>OkDialogue2());
  static openOKDialogueBox3(context)=> showDialog(context: context,builder: (context)=>OkDialogue3());
}