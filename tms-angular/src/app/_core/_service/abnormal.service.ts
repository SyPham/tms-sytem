import { Injectable } from '@angular/core';
import { PaginatedResult } from '../_model/pagination';
import { BehaviorSubject, Observable } from 'rxjs';
import { map } from 'rxjs/operators';

import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { environment } from '../../../environments/environment';
import { Oc } from '../_model/oc';
const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type': 'application/json',
    Authorization: 'Bearer ' + localStorage.getItem('token')
  })
};
@Injectable({
  providedIn: 'root'
})
export class AbnormalService {
  baseUrl = environment.apiUrl;
  constructor(private http: HttpClient) {}
  getOCs(): Observable<Array<Oc>> {
    return this.http.get<Oc[]>(this.baseUrl + 'Ocs/GetListTree').pipe(
      map(response => {
        // console.log('getOcs: ', response);
        return response;
      })
    );
  }
  follow(ID) {
    return this.http.get(`${this.baseUrl}Tasks/Follow/${ID}`).pipe(
      map(response => {
        // console.log('Follow: ', response);
        return response;
      })
    );
  }
  getTasks(ocid) {
    return this.http.get(`${this.baseUrl}Tasks/Abnormal/${ocid}`).pipe(
      map(response => {
        // console.log('GetListTreeAbnormal: ', response);
        return response;
      })
    );
  }

  getBeAssigned() {
    return this.http.get(`${this.baseUrl}Tasks/GetListUser/0`).pipe(
      map(response => {
        // console.log('getBeAssigned: ', response);
        return response;
      })
    );
  }
  abnormalChild(taskCode) {
    return this.http.get(`${this.baseUrl}Tasks/RoutineChild/${taskCode}`);
  }
  getWho() {
    return this.http.get(`${this.baseUrl}Tasks/GetListUser/0`).pipe(
      map(response => {
        // console.log('getWho: ', response);
        return response;
      })
    );
  }
}
