import axios from 'axios';

export function RegisterForm(){
    const handleSubmit = async (e) => {
        e.preventdefault();
        const res = await axios.post('/api/register',{
            firstname:'tonto',

        }
        )
        console.log(res);
    };
    return (
        <div>
            <body>
            <h1>Register</h1>
        <form onSubmit={handleSubmit}>
        <label for="first">First name:</label>
        <input type="text" id="first" name="firstname" />
        <label for="last">Last name:</label>
        <input type="text" id="last" name="lastname" />
        <label for="email">Email</label>
        <input type="email" id="email" name="email" />
        <label for="password">Password</label>
        <input type="password" id="password" name="password" />
        <label for="datebirth">Birthdate</label>
        <input type="date" id="birthdate" name="birthdate" />
        <button type="submit">Submit</button>
        <label htmlFor="Facebook">Facebook</label>
        <br />
        <label htmlFor="Google">Google</label>
        </form>
        </body>
        </div>
    )
}