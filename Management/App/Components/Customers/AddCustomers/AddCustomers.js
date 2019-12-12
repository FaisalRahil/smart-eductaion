﻿export default {
    name: 'AddCustomers',    
    created() {

        
    },
   
    data() {
        return {
            customersInfo: {
                name: '',
                phone: '',
                date: '',
                email: '',
                companyName: '',
                companyAddress: '',
                serviceName: '',
                code: '',
                amount: '',
                countMassage: '',
                from: '',
                to: '',
                discriptions: '',
                
            },
        };
    },
    methods: {

        submitForm(formName) {
            this.$refs[formName].validate((valid) => {
                if (valid) {
                    this.addCustomor();
                } else {
                    console.log('error submit!!');
                    return false;
                }
            });


        },

        addCustomor() {

            this.$http.AddCustomor(this.customersInfo)
                .then(response => {
                    this.$parent.state = 0;
                    this.$message({
                        type: 'info',
                        message: response.data
                    });
                    this.$blockUI.Stop();
                    this.$parent.state = 0;
                })
                .catch((err) => {
                    this.$blockUI.Stop();
                    this.$message({
                        type: 'error',
                        message: err.response.data
                    });
                });



            
        },

        cansel() {
            this.$parent.getCustomers();
            this.$parent.state = 0;
            
        },



        resetForm(formName) {
            this.$refs[formName].resetFields();
        },
    }    
}
