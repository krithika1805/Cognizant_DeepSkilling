import { Component } from '@angular/core';
import { Header } from './components/header/header';
import { Home } from './pages/home/home';
import { CourseList } from './pages/course-list/course-list';
import { StudentProfile } from './pages/student-profile/student-profile';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [Header, Home, CourseList, StudentProfile],
  templateUrl: './app.html',
  styleUrl: './app.css'
})
export class AppComponent {
  title = 'Student Course Portal';
}