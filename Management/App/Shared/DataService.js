﻿import axios from 'axios';

axios.defaults.headers.common['X-CSRF-TOKEN'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

const baseUrl = 'http://localhost:4810/Api';

export default {
    Login(loginName, password, secretNo) {
        return axios.post(baseUrl + '/security/login', { loginName, password, secretNo });
    },
    Logout() {
        return axios.post(baseUrl + '/security/logout');
    },    
    CheckLoginStatus() {
        return axios.post('/security/checkloginstatus');
    },  



    //Remove All APIs
    GetPackges(pageNo, pageSize, searchType, id) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Packeges/GetPackges?pageNo=${pageNo}&pagesize=${pageSize}&searchType=${searchType}&id=${id}`);
    },

    GetCustomers() {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Packeges/GetCustomers`);
    },

    GetCodes() {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Packeges/GetCodes`);
    },

    getCustomersPhone() {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Customer/getCustomersPhone`);
    },

    AddCustomor(customersInfo) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/Admin/Customer/Add`, customersInfo);//change path
    },

    AddOldCustomor(customersInfo) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/Admin/Customer/AddOldCustomor`, customersInfo);//change path
    },

    GetCustomersInfo(pageNo, pageSize,id) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Customer/GetCustomers?pageNo=${pageNo}&pagesize=${pageSize}&id=${id}`);
    },

    AddCustomorPackage(serviceInfo) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/Admin/Customer/AddPackage`, serviceInfo);//change path
    },

    AddOldPackage(serviceInfo) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/Admin/Customer/AddOldPackage`, serviceInfo);//change path
    },

    EditCustomorInfo(customersInfo) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/Admin/Customer/EditCustomorInfo`, customersInfo);//change path
    },

    getPakegeByState(pageNo, pageSize, custmorId, state) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Customer/getPakegeByState?pageNo=${pageNo}&pagesize=${pageSize}&custmorId=${custmorId}&state=${state}`);
    },

    GetHistoryPackges(pageNo, pageSize, custmorId, selectedHCodPack, SearchTypeSelected) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Customer/GetHistoryPackges?pageNo=${pageNo}&pagesize=${pageSize}&custmorId=${custmorId}&selectedHCodPack=${selectedHCodPack}&SearchType=${SearchTypeSelected}`);
    },

    stopServeice(id, stopResone) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/Admin/Customer/stopServeice?id=${id}&disc=${stopResone}`);//change path
    },

    backServeice(id) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/Admin/Customer/backServeice?id=${id}`);//change path
    },

    rechargeService(id,ReloadserviceInfo) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/Admin/Customer/rechargeService?id=${id}`, ReloadserviceInfo);//change path
    },

    deleteCustmor(id) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/Admin/Customer/deleteCustmor?id=${id}`);//change path
    },

    //user
    getUser(pageNo, pageSize) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/User/getUser?pageNo=${pageNo}&pagesize=${pageSize}`);
    },

    AddUser(User) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + '/Admin/User/AddUser', User);
    },

    EditUser(User) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + '/Admin/User/EditUser', User);
    },

    DeactivateUser(UserId) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/admin/User/${UserId}/Deactivate`);
    },

    ActivateUser(UserId) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/admin/User/${UserId}/Activate`);
    },

    delteUser(UserId) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/admin/User/${UserId}/delteUser`);
    },

    UploadImage(obj) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + '/Admin/User/UploadImage', obj);
    },

    EditUsersProfile(User) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');

        return axios.post(baseUrl + '/Admin/User/EditUsersProfile', User);
    },

    ChangePassword(userPassword) {
        return axios.post(`/Security/ChangePassword`, userPassword);
    },

    getPakegesInfo() {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Packeges/getPakegesInfo`);
    },

    getHistoryCodesPackges(id) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Customer/getHistoryCodesPackges?id=${id}`); 
    },

    getHistoryPackge(pageNo, pageSize, id, SearchType) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Customer/getHistoryPackge?pageNo=${pageNo}&pagesize=${pageSize}&id=${id}&SearchType=${SearchType}`);
    },

    PackagesCheck() {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Packeges/PackagesCheck`);
    },

    getUnkownPackage(pageNo, pageSize) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Packeges/getUnkownPackage?pageNo=${pageNo}&pagesize=${pageSize}`);
    },

    deleteUnkownPackge(id) {
        debugger
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/admin/Packeges/${id}/deleteUnkownPackge`);
    },

    //uknpwn count
    getCount() {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Packeges/getCount`);
    },

    getFiles() {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Packeges/getFiles`);
    },

    getfileContent(pageNo, pageSize, Selectedfile) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Packeges/getfileContent?pageNo=${pageNo}&pagesize=${pageSize}&id=${Selectedfile}`);
    },

    getVarbile() {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.get(baseUrl + `/Admin/Packeges/getVarbile`);
    },

    EditPaht(form) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + '/Admin/Packeges/EditPaht', form);
    },

    Editgrade(grad) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/admin/Packeges/${grad}/Editgrade`);
    },

    Editextensions(extensions) {
        axios.defaults.headers.common['Authorization'] = 'Bearer ' + document.querySelector('meta[name="api-token"]').getAttribute('content');
        return axios.post(baseUrl + `/admin/Packeges/${extensions}/Editextensions`);
    },


}