import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import interactionPlugin from '@fullcalendar/interaction';
import jaLocale from '@fullcalendar/core/locales/ja';
import './main.css';

document.addEventListener('turbolinks:load', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new Calendar(calendarEl, {
    plugins: [ dayGridPlugin, interactionPlugin ],
    locale: jaLocale,
    timeZone: 'UTC',
    dateClick: function(info){
      window.location.href = '/calender_events/new?y=' + info.date.getFullYear() + '&m=' + info.date.getMonth() + '&d=' + info.date.getDate();
    },
    eventClick: function(info){
      window.location.href = '/calender_events/' + info.event._def.publicId
    },

    events: 'calender_events.json'
  });
  calendar.render();
  
});

