const inquirer = require('inquirer')
const connection = require('./config/connection')
const chalk = require('chalk')
const figlet = require('figlet');


// Database Connect and Starter Title
connection.connect((error) => {
    if (error) throw error;
    console.log(chalk.greenBright.bold(`====================================================================================`));
    console.log(``);
    console.log(chalk.magentaBright.bold(figlet.textSync('Employee Tracker')));
    console.log(``);
    console.log(`                                                     ` + chalk.magentaBright.bold('Created By: Cameron Whritenour'));
    console.log(``);
    console.log(chalk.greenBright.bold(`====================================================================================`));
    main();
});

const main = () => {
    // Prompts user for what they want from database.
    inquirer.prompt([
        {
            type: 'list',
            name: 'choice',
            message: 'What would you like to do?',
            choices: ['View All Employees', 'Add Employee', 'View All Roles', 'Add Role', 'View All Departments', 'Add Department', 'Quit']
        }
    ])
    .then((answer) => {
            const {choice} = answer
            if (choice === 'View All Employees') {
                viewAllEmployees();
            }
            if (choice === "Add Employee") {
                addEmployee();
            }
            if (choice === "View All Roles") {
                viewAllRoles();
            }
            if (choice === "Add Role") {
                addRole();
            }
            if (choice === "View All Departments") {
                viewAllDepartments();
            }
            if (choice === "Add Department") {
                addDepartment();
            }
        });
};

const viewAllEmployees = () => {
    const sql = `SELECT employees.employee_id`
    connection.query(sql, (err, res) => {
        if (err) throw err;
    console.log(chalk.green.bold(`====================================================================================`));
    console.log(`                              ` + chalk.magentaBright.bold(`Current Employees:`));
    console.log(chalk.green.bold(`====================================================================================`));
    console.table(res);
    console.log(chalk.green.bold(`====================================================================================`));
    main();
    });
};


const addEmployee = () => {

}

const viewAllRoles = () => {

}

const addRole = () => {

}

const viewAllDepartments = () => {

}

const addDepartment = () => {

}