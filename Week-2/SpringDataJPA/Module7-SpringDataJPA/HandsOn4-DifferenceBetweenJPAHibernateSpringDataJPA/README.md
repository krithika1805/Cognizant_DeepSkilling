Hands-on 4: Difference between JPA, Hibernate and Spring Data JPA

Java Persistence API (JPA)

JPA stands for Java Persistence API.
It is a Java specification (JSR 338) for managing relational data in Java applications.
JPA defines standards for Object Relational Mapping (ORM).
JPA itself does not provide any implementation.
It only defines interfaces and annotations.
An implementation provider such as Hibernate is required to use JPA.

Example Annotations

@Entity
@Table(name="employee")
public class Employee {

    @Id
    private int id;

    private String name;
}

Hibernate

Hibernate is an ORM framework.
It is one of the most popular implementations of JPA.
Hibernate converts Java objects into database tables and vice versa.
It provides additional features beyond JPA.
Developers need to manually handle Session and Transaction objects.

Hibernate Code Example

public Integer addEmployee(Employee employee){

    Session session = factory.openSession();
    Transaction tx = null;
    Integer employeeID = null;

    try {
        tx = session.beginTransaction();
        employeeID = (Integer) session.save(employee);
        tx.commit();
    }
    catch(HibernateException e){
        if(tx != null)
            tx.rollback();
        e.printStackTrace();
    }
    finally{
        session.close();
    }

    return employeeID;
}

Spring Data JPA

Spring Data JPA is a Spring Framework module.
It is built on top of JPA.
It does not provide its own ORM implementation.
It usually uses Hibernate as the JPA provider.
It reduces boilerplate code.
Repository interfaces are automatically implemented by Spring.
Transaction management is simplified.

Repository Example

public interface EmployeeRepository
        extends JpaRepository<Employee, Integer> {

}
Service Example
@Autowired
private EmployeeRepository employeeRepository;

@Transactional
public void addEmployee(Employee employee) {
    employeeRepository.save(employee);
}

Comparison Table

| Feature                | JPA                    | Hibernate                   | Spring Data JPA         |
| ---------------------- | ---------------------- | --------------------------- | ----------------------- |
| Type                   | Specification          | ORM Framework               | Abstraction Layer       |
| Implementation         | No                     | Yes                         | No                      |
| ORM Support            | Defines standards      | Provides ORM implementation | Uses JPA implementation |
| Transaction Management | Not directly           | Manual                      | Simplified              |
| Boilerplate Code       | More                   | Moderate                    | Very Less               |
| Repository Support     | No                     | No                          | Yes                     |
| Database Operations    | Through implementation | Session API                 | JpaRepository           |
| Ease of Development    | Medium                 | Medium                      | Easy                    |


Conclusion

JPA is a specification that defines persistence standards.
Hibernate is an implementation of JPA that performs ORM operations.
Spring Data JPA is an abstraction layer over JPA that reduces boilerplate code and simplifies database operations using repositories.


Module 7 – Hands-on 4: Difference between JPA, Hibernate and Spring Data JPA — Completed.