using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Library_Management_System.DBO
{
    interface IDateBaseOperations<T>
    {
        //Entity: Book, Loan, User, Setting

        //For adding entity
        void Insert(T entity);

        //For editing entity
        void Update(T entity);

        //For removing entity
        void Delete(T entity);

        //For geting entity list
        List<T> Select(T entity);
    }
}
