﻿package idv.cjcat.zedbox.events {
	import flash.events.Event;
	import idv.cjcat.zedbox.actions.Action;
	
	/**
	 * Event dispatched by actions.
	 */
	public class ActionEvent extends Event {
		
		/**
		 * This event is dispatched when an action's priority value is changed.
		 */
		public static const PRIORITY_CHANGE:String = "zedBoxActoinPriorityChange";
		
		private var _action:Action;
		public function ActionEvent(type:String, action:Action) {
			super(type);
			_action = action;
		}
		
		/**
		 * The associated action.
		 */
		public function get action():Action { return _action; }
	}
}