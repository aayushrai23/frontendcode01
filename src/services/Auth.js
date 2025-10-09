class Auth {
  constructor() {
    this.token = null;
  }

  retriveToken = () => {
    return localStorage.getItem('Token');
  };

  storeToken = (t) => {
    localStorage.setItem('Token', t);
  };

  deleteToken = () => {
    localStorage.removeItem('Token');
  };
}

// ✅ Fix: assign instance to variable before exporting
const authInstance = new Auth();
export default authInstance;
