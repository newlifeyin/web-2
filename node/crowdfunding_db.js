class DBPool {
	constructor() {
		this.mysql = require("mysql");
		this.config = {
			host: 'localhost', 
			port: 3306, 
			user: 'root', //Username for connecting to the database
			password: '132434311a', //Password for connecting to the database
			database: 'crowdFunding', //Database Name
			connectionLimit: 10, 
			multipleStatements: false, 
			waitForConnections: true, 
		};
		this.pool = this.mysql.createPool(this.config);
	}
	query(sql, params, callBack) {
		this.pool.getConnection((err, connection) => {
			if (err) {
				throw err;
			}
			connection.query(sql, params, (err, results, fields) => {
				connection.release();
				if (err) {
					throw err;
				}
				callBack && callBack({ results, fields });
			});
		});
	}

	queryAsync(sql, params) {
		const self = this;
		return new Promise((resolve, reject) => {
			this.pool.getConnection((err, connection) => {
				if (err) {
					reject(err);
					return;
				}
				connection.query(sql, params, (err, results, fields) => {
					connection.release();
					if (err) {
						reject(err);
						return;
					}
					resolve({
						results,
						fields,
					});
				});
			});
		});
	}
}

module.exports = new DBPool();