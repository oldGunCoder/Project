using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Library_Management_System.DBO
{
    abstract class ADataBaseOperations<T> : IDateBaseOperations<T>
    {
        public void Delete(T entity) {
            //code here for delete operation
        }

        public void Insert(T entity) { 
            //code here for insert operation
        }

        public List<T> Select(T entity) {
            //code here for select operation
            return entity;
        }

        public void Update(T entity) { 
            //code here for update operation
        }
    }
}
