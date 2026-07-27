import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [],
  templateUrl: './home.html',
  styleUrl: './home.css'
})
export class Home {
    message = 'Welcome to Angular Module 9 Hands-On';

  studentName = 'Krithika';
  batch = 'DN 5.0';

  constructor() {
  }
}