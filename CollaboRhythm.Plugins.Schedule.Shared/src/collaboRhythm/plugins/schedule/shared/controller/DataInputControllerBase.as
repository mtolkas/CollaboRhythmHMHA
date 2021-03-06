package collaboRhythm.plugins.schedule.shared.controller
{
	import collaboRhythm.plugins.schedule.shared.model.DataInputModelAndController;
	import collaboRhythm.plugins.schedule.shared.model.IScheduleModel;
	import collaboRhythm.shared.model.healthRecord.document.ScheduleItemOccurrence;

	import flash.net.URLVariables;

	import spark.components.ViewNavigator;

	public class DataInputControllerBase
    {
		protected var _viewNavigator:ViewNavigator;

        public function DataInputControllerBase(scheduleItemOccurrence:ScheduleItemOccurrence,
												urlVariables:URLVariables,
												scheduleModel:IScheduleModel,
												viewNavigator:ViewNavigator)
        {
			_viewNavigator = viewNavigator;
		}

		public function handleVariables():void
		{
			//abstract; subclasses should override
		}

		public function updateVariables(urlVariables:URLVariables):void
		{
			//abstract; subclasses should override
		}

		public function get dataInputViewClass():Class
		{
			//abstract; subclasses should override
			return null;
		}

		public function get isUnscheduleReporting():Boolean
		{
			//abstract; subclasses should override
			return false;
		}
	}
}
