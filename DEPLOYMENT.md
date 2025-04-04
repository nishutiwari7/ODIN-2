# Deployment Instructions

## Railway Backend Deployment

1. Push your code to a Git repository (GitHub, GitLab, etc.)
2. Create a new project in Railway
3. Connect your repository
4. Set the following environment variables in Railway:
   - `SECRET_KEY`: Your Django secret key
   - `DEBUG`: Set to 'False' for production
   - `ALLOWED_HOSTS`: Add your Railway app domain, e.g., `.railway.app,your-custom-domain.com`
   - `DATABASE_URL`: This will be automatically set by Railway if you add a PostgreSQL database
   - `RAZORPAY_KEY_ID`: Your Razorpay key ID
   - `RAZORPAY_KEY_SECRET`: Your Razorpay key secret
   - Other Razorpay settings as needed

5. Add a PostgreSQL database to your project in Railway
6. Deploy your application

## Vercel Frontend Deployment

1. Push your frontend code to a Git repository
2. Create a new project in Vercel
3. Connect your repository
4. Set the following environment variables in Vercel:
   - `VITE_API_URL`: The URL of your Railway backend (e.g., `https://your-app.railway.app`)
   - Any other environment variables your frontend needs
5. Deploy your application

## Troubleshooting

If you encounter any issues during deployment:

1. Check the build logs for errors
2. Make sure all required environment variables are set
3. Verify that your database is properly configured
4. Check that your frontend is correctly pointing to your backend API
5. If you need to use packages that require compilation (like `psycopg2`), use pre-compiled versions (like `psycopg2-binary`) instead

For more information, refer to the Railway and Vercel documentation.