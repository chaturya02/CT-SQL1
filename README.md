# CT-SQL
# 📘 AdventureWorks Database Installation Guide

This guide will help you download and install the **AdventureWorks** sample database in **Microsoft SQL Server** using a `.bak` file.

---

## ✅ Prerequisites

- Microsoft SQL Server (2016 or later) installed
- SQL Server Management Studio (SSMS) installed
- AdventureWorks `.bak` file (e.g., `AdventureWorks2022.bak`)

---

## 📥 Step 1: Download AdventureWorks `.bak` File

You can download the AdventureWorks `.bak` file from the official Microsoft sample page or use one provided to you locally.

> ℹ️ For a step-by-step graphical guide, follow this tutorial:  
> 🔗 [GeeksforGeeks Guide to Installing AdventureWorks Database](https://www.geeksforgeeks.org/installation-guide/how-to-download-and-install-adventureworks-database-in-sql/?utm_source=chatgpt.com)

---

## 📂 Step 2: Move the `.bak` File to Backup Folder

Place the `.bak` file in your SQL Server backup folder.

Example path:
C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\Backup\

> 📌 The folder name may vary depending on your SQL Server version (`MSSQL15`, `MSSQL16`, etc.)

---

## 🔄 Step 3: Restore the Database in SSMS

1. Open **SQL Server Management Studio (SSMS)** and connect to your server instance.
2. Right-click on **Databases** → click **Restore Database...**
3. Select:
   - **Source**: Device
   - Click **[...]** and **Add**
   - Choose the `.bak` file (e.g., `AdventureWorks2022.bak`)
4. Provide a name for the **Destination database**
5. Click **OK** to start the restoration

---

## ✅ Step 4: Verify Installation

- The new database will appear under the **Databases** section in SSMS.
- Expand the database to see tables like:
  - `Person.Person`
  - `Sales.Customer`
  - `HumanResources.Employee`
  - `Production.Product`

---

Refer to:
- 📖 [Official Microsoft Docs – AdventureWorks](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure)
- 📘 [GeeksforGeeks AdventureWorks Install Guide](https://www.geeksforgeeks.org/installation-guide/how-to-download-and-install-adventureworks-database-in-sql/?utm_source=chatgpt.com)
