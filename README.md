# WilmaFin - Oracle APEX Financial Management System

![Oracle APEX](https://img.shields.io/badge/Oracle%20APEX-24.2.5+-red.svg)
![Oracle DB](https://img.shields.io/badge/Oracle%20Database-19c+-blue.svg)

## 📂 Repository Structure

wilmafin-apex-app/
├── f105/ # APEX application export files (SQL)
├── ddl/ # Database schema scripts
├── data/ # Set up data
└── README.md

## 🚀 Quick Setup

### Prerequisites

- Oracle Database 19c+
- Oracle APEX 24.2.5+

```bash
# Clone repository
git clone https://github.com/ChkBuk/wilmafin.git
cd wilmafin

-- Connect and run DDL
sql username/password@host:port/service

@ddl/wilma-ddl.sql
@data/wilma-setup-data.sql

-- Upload following data files.
data/am_configuration.xlsx into am_configuration table
data/loan_calculator.xlsx into loan_calculator table

# Via SQLcl
sql username/password@host:port/service @f105/install.sql

# Via APEX Builder (GUI):
1. Login to APEX Workspace
2. App Builder → Import
3. Create 105.zip file using f105 folder
4. Upload f105.zip via import application


## 📞 Support
✉️ **Email**: cbkulawardana@gmail.com
💬 **Slack**: `#wilmafin-dev`

---

<div align="center">

✨ **🚀 Happy Developing!** ✨
*The WilmaFin Team*

</div>
```
