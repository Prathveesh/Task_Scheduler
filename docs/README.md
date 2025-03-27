# **Basic Task Scheduler (RTOS Concept in Software)**  

## 📌 **Introduction**  
This project simulates a **basic RTOS task scheduler** using C++ multithreading. It implements a **Round-Robin scheduling algorithm**, where tasks execute for a fixed time slice before switching.  

## 📝 **Problem Statement**  
RTOS-based scheduling requires an embedded platform, which is unavailable. This project aims to mimic RTOS-like task scheduling using **C++ threads and synchronization mechanisms**.  

## 🚀 **Features**  
✅ Simulates an RTOS-like **task scheduler**  
✅ Uses **Round-Robin Scheduling**  
✅ Implements **context switching** using `std::thread`  
✅ **Mutex synchronization** for shared resources  
✅ **Scalable**: Can add multiple tasks with different time slices  

## 🔧 **Folder Structure**  
```
BasicTaskScheduler/
│── include/              # Header files
│   ├── task.h            # Task function declarations
│   ├── scheduler.h       # Scheduler class declaration
│
│── src/                  # Source files
│   ├── main.cpp          # Entry point
│   ├── task.cpp          # Task implementations
│   ├── scheduler.cpp     # Scheduler logic
│
│── build/                # Compiled binaries (output directory)
│── Makefile              # Build automation file
│── README.md             # Project documentation
```

## ⚙️ **How It Works**  
1️⃣ **Tasks are added to the scheduler** with a **specific time slice**.  
2️⃣ The **scheduler executes each task** in a cyclic manner.  
3️⃣ **After the time slice expires**, the **next task starts executing**.  
4️⃣ This process repeats indefinitely, **simulating context switching**.  

## 💻 **How to Build & Run**  

### **1️⃣ Build the Project**  
```sh
make
```

### **2️⃣ Run the Scheduler**  
```sh
./build/main
```

## 🔍 **Example Output**  
```
Executing Task 1 for 100ms
[Task 1] Running iteration 1
Executing Task 2 for 200ms
[Task 2] Running iteration 1
Executing Task 1 for 100ms
[Task 1] Running iteration 2
Executing Task 2 for 200ms
[Task 2] Running iteration 2
...
```

## 🛠 **Future Improvements**  
🔹 Implement **priority-based scheduling**  
🔹 Add **task preemption** (switch tasks before they complete)  
🔹 Extend for **real-time applications**  

---
