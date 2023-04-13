﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

// 
// Microsoft.VSDesigner generó automáticamente este código fuente, versión=4.0.30319.42000.
// 
#pragma warning disable 1591

namespace App_DeliveryNow.Reference_DeliveryNow {
    using System.Diagnostics;
    using System;
    using System.Xml.Serialization;
    using System.ComponentModel;
    using System.Web.Services.Protocols;
    using System.Web.Services;
    using System.Data;
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Web.Services.WebServiceBindingAttribute(Name="WS_AppSoap", Namespace="http://tempuri.org/")]
    public partial class WS_App : System.Web.Services.Protocols.SoapHttpClientProtocol {
        
        private System.Threading.SendOrPostCallback send_errorOperationCompleted;
        
        private System.Threading.SendOrPostCallback send_register_sucessOperationCompleted;
        
        private System.Threading.SendOrPostCallback send_login_successOperationCompleted;
        
        private System.Threading.SendOrPostCallback hash_passwordOperationCompleted;
        
        private System.Threading.SendOrPostCallback verify_hashOperationCompleted;
        
        private System.Threading.SendOrPostCallback is_logged_inOperationCompleted;
        
        private System.Threading.SendOrPostCallback insert_dataOperationCompleted;
        
        private System.Threading.SendOrPostCallback login_verifyOperationCompleted;
        
        private bool useDefaultCredentialsSetExplicitly;
        
        /// <remarks/>
        public WS_App() {
            this.Url = global::App_DeliveryNow.Properties.Settings.Default.App_DeliveryNow_Reference_DeliveryNow_WS_App;
            if ((this.IsLocalFileSystemWebService(this.Url) == true)) {
                this.UseDefaultCredentials = true;
                this.useDefaultCredentialsSetExplicitly = false;
            }
            else {
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        public new string Url {
            get {
                return base.Url;
            }
            set {
                if ((((this.IsLocalFileSystemWebService(base.Url) == true) 
                            && (this.useDefaultCredentialsSetExplicitly == false)) 
                            && (this.IsLocalFileSystemWebService(value) == false))) {
                    base.UseDefaultCredentials = false;
                }
                base.Url = value;
            }
        }
        
        public new bool UseDefaultCredentials {
            get {
                return base.UseDefaultCredentials;
            }
            set {
                base.UseDefaultCredentials = value;
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        /// <remarks/>
        public event send_errorCompletedEventHandler send_errorCompleted;
        
        /// <remarks/>
        public event send_register_sucessCompletedEventHandler send_register_sucessCompleted;
        
        /// <remarks/>
        public event send_login_successCompletedEventHandler send_login_successCompleted;
        
        /// <remarks/>
        public event hash_passwordCompletedEventHandler hash_passwordCompleted;
        
        /// <remarks/>
        public event verify_hashCompletedEventHandler verify_hashCompleted;
        
        /// <remarks/>
        public event is_logged_inCompletedEventHandler is_logged_inCompleted;
        
        /// <remarks/>
        public event insert_dataCompletedEventHandler insert_dataCompleted;
        
        /// <remarks/>
        public event login_verifyCompletedEventHandler login_verifyCompleted;
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/send_error", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string send_error() {
            object[] results = this.Invoke("send_error", new object[0]);
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void send_errorAsync() {
            this.send_errorAsync(null);
        }
        
        /// <remarks/>
        public void send_errorAsync(object userState) {
            if ((this.send_errorOperationCompleted == null)) {
                this.send_errorOperationCompleted = new System.Threading.SendOrPostCallback(this.Onsend_errorOperationCompleted);
            }
            this.InvokeAsync("send_error", new object[0], this.send_errorOperationCompleted, userState);
        }
        
        private void Onsend_errorOperationCompleted(object arg) {
            if ((this.send_errorCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.send_errorCompleted(this, new send_errorCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/send_register_sucess", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string send_register_sucess() {
            object[] results = this.Invoke("send_register_sucess", new object[0]);
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void send_register_sucessAsync() {
            this.send_register_sucessAsync(null);
        }
        
        /// <remarks/>
        public void send_register_sucessAsync(object userState) {
            if ((this.send_register_sucessOperationCompleted == null)) {
                this.send_register_sucessOperationCompleted = new System.Threading.SendOrPostCallback(this.Onsend_register_sucessOperationCompleted);
            }
            this.InvokeAsync("send_register_sucess", new object[0], this.send_register_sucessOperationCompleted, userState);
        }
        
        private void Onsend_register_sucessOperationCompleted(object arg) {
            if ((this.send_register_sucessCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.send_register_sucessCompleted(this, new send_register_sucessCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/send_login_success", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string send_login_success() {
            object[] results = this.Invoke("send_login_success", new object[0]);
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void send_login_successAsync() {
            this.send_login_successAsync(null);
        }
        
        /// <remarks/>
        public void send_login_successAsync(object userState) {
            if ((this.send_login_successOperationCompleted == null)) {
                this.send_login_successOperationCompleted = new System.Threading.SendOrPostCallback(this.Onsend_login_successOperationCompleted);
            }
            this.InvokeAsync("send_login_success", new object[0], this.send_login_successOperationCompleted, userState);
        }
        
        private void Onsend_login_successOperationCompleted(object arg) {
            if ((this.send_login_successCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.send_login_successCompleted(this, new send_login_successCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/hash_password", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string hash_password(string password, [System.Xml.Serialization.XmlElementAttribute(DataType="base64Binary")] out byte[] seed) {
            object[] results = this.Invoke("hash_password", new object[] {
                        password});
            seed = ((byte[])(results[1]));
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void hash_passwordAsync(string password) {
            this.hash_passwordAsync(password, null);
        }
        
        /// <remarks/>
        public void hash_passwordAsync(string password, object userState) {
            if ((this.hash_passwordOperationCompleted == null)) {
                this.hash_passwordOperationCompleted = new System.Threading.SendOrPostCallback(this.Onhash_passwordOperationCompleted);
            }
            this.InvokeAsync("hash_password", new object[] {
                        password}, this.hash_passwordOperationCompleted, userState);
        }
        
        private void Onhash_passwordOperationCompleted(object arg) {
            if ((this.hash_passwordCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.hash_passwordCompleted(this, new hash_passwordCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/verify_hash", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public bool verify_hash(string password, string hashDB) {
            object[] results = this.Invoke("verify_hash", new object[] {
                        password,
                        hashDB});
            return ((bool)(results[0]));
        }
        
        /// <remarks/>
        public void verify_hashAsync(string password, string hashDB) {
            this.verify_hashAsync(password, hashDB, null);
        }
        
        /// <remarks/>
        public void verify_hashAsync(string password, string hashDB, object userState) {
            if ((this.verify_hashOperationCompleted == null)) {
                this.verify_hashOperationCompleted = new System.Threading.SendOrPostCallback(this.Onverify_hashOperationCompleted);
            }
            this.InvokeAsync("verify_hash", new object[] {
                        password,
                        hashDB}, this.verify_hashOperationCompleted, userState);
        }
        
        private void Onverify_hashOperationCompleted(object arg) {
            if ((this.verify_hashCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.verify_hashCompleted(this, new verify_hashCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/is_logged_in", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public bool is_logged_in(string username) {
            object[] results = this.Invoke("is_logged_in", new object[] {
                        username});
            return ((bool)(results[0]));
        }
        
        /// <remarks/>
        public void is_logged_inAsync(string username) {
            this.is_logged_inAsync(username, null);
        }
        
        /// <remarks/>
        public void is_logged_inAsync(string username, object userState) {
            if ((this.is_logged_inOperationCompleted == null)) {
                this.is_logged_inOperationCompleted = new System.Threading.SendOrPostCallback(this.Onis_logged_inOperationCompleted);
            }
            this.InvokeAsync("is_logged_in", new object[] {
                        username}, this.is_logged_inOperationCompleted, userState);
        }
        
        private void Onis_logged_inOperationCompleted(object arg) {
            if ((this.is_logged_inCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.is_logged_inCompleted(this, new is_logged_inCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/insert_data", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public System.Data.DataSet insert_data(string username, string name, string lastname, string password, [System.Xml.Serialization.XmlElementAttribute(DataType="base64Binary")] byte[] seed, string phoneNumber, string address, string pay_method) {
            object[] results = this.Invoke("insert_data", new object[] {
                        username,
                        name,
                        lastname,
                        password,
                        seed,
                        phoneNumber,
                        address,
                        pay_method});
            return ((System.Data.DataSet)(results[0]));
        }
        
        /// <remarks/>
        public void insert_dataAsync(string username, string name, string lastname, string password, byte[] seed, string phoneNumber, string address, string pay_method) {
            this.insert_dataAsync(username, name, lastname, password, seed, phoneNumber, address, pay_method, null);
        }
        
        /// <remarks/>
        public void insert_dataAsync(string username, string name, string lastname, string password, byte[] seed, string phoneNumber, string address, string pay_method, object userState) {
            if ((this.insert_dataOperationCompleted == null)) {
                this.insert_dataOperationCompleted = new System.Threading.SendOrPostCallback(this.Oninsert_dataOperationCompleted);
            }
            this.InvokeAsync("insert_data", new object[] {
                        username,
                        name,
                        lastname,
                        password,
                        seed,
                        phoneNumber,
                        address,
                        pay_method}, this.insert_dataOperationCompleted, userState);
        }
        
        private void Oninsert_dataOperationCompleted(object arg) {
            if ((this.insert_dataCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.insert_dataCompleted(this, new insert_dataCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/login_verify", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public int login_verify(string username, string password) {
            object[] results = this.Invoke("login_verify", new object[] {
                        username,
                        password});
            return ((int)(results[0]));
        }
        
        /// <remarks/>
        public void login_verifyAsync(string username, string password) {
            this.login_verifyAsync(username, password, null);
        }
        
        /// <remarks/>
        public void login_verifyAsync(string username, string password, object userState) {
            if ((this.login_verifyOperationCompleted == null)) {
                this.login_verifyOperationCompleted = new System.Threading.SendOrPostCallback(this.Onlogin_verifyOperationCompleted);
            }
            this.InvokeAsync("login_verify", new object[] {
                        username,
                        password}, this.login_verifyOperationCompleted, userState);
        }
        
        private void Onlogin_verifyOperationCompleted(object arg) {
            if ((this.login_verifyCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.login_verifyCompleted(this, new login_verifyCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        public new void CancelAsync(object userState) {
            base.CancelAsync(userState);
        }
        
        private bool IsLocalFileSystemWebService(string url) {
            if (((url == null) 
                        || (url == string.Empty))) {
                return false;
            }
            System.Uri wsUri = new System.Uri(url);
            if (((wsUri.Port >= 1024) 
                        && (string.Compare(wsUri.Host, "localHost", System.StringComparison.OrdinalIgnoreCase) == 0))) {
                return true;
            }
            return false;
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    public delegate void send_errorCompletedEventHandler(object sender, send_errorCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class send_errorCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal send_errorCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    public delegate void send_register_sucessCompletedEventHandler(object sender, send_register_sucessCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class send_register_sucessCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal send_register_sucessCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    public delegate void send_login_successCompletedEventHandler(object sender, send_login_successCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class send_login_successCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal send_login_successCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    public delegate void hash_passwordCompletedEventHandler(object sender, hash_passwordCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class hash_passwordCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal hash_passwordCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
        
        /// <remarks/>
        public byte[] seed {
            get {
                this.RaiseExceptionIfNecessary();
                return ((byte[])(this.results[1]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    public delegate void verify_hashCompletedEventHandler(object sender, verify_hashCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class verify_hashCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal verify_hashCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public bool Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((bool)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    public delegate void is_logged_inCompletedEventHandler(object sender, is_logged_inCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class is_logged_inCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal is_logged_inCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public bool Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((bool)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    public delegate void insert_dataCompletedEventHandler(object sender, insert_dataCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class insert_dataCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal insert_dataCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public System.Data.DataSet Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((System.Data.DataSet)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    public delegate void login_verifyCompletedEventHandler(object sender, login_verifyCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.8.9032.0")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class login_verifyCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal login_verifyCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public int Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((int)(this.results[0]));
            }
        }
    }
}

#pragma warning restore 1591