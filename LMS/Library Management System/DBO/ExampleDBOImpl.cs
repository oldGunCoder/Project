using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Library_Management_System.DBO
{
    //We will use this template. Replace Example with the entity you need (Book, Loan...)
    //we are extending the ADataBaseOperations(The <T> is now <Example>)
    class ExampleDBOImpl<Example> : ADataBaseOperations<Example> where Example:new()
    {
        public void DeleteExample(Example example) {
            //Logic for deleting example
            //Here I am using the Delete method from ADataBaseOperations.cs
            Delete(example);
        }

        public void AddExample(Example example) {
            //call the insert
            Insert(example);
        }

        public void EditExample(Example example) {
            //call the Update method
            Update(example);
        }

        public List<Example> ListExample() {
            //Get list<Example>
            Example example = new Example();
            return Select(example);
        }

    }
}
