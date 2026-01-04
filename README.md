# Clothes Store E-Commerce Flutter App

A modern and elegant Flutter e-commerce application for a clothes and fashion store. This project showcases a complete mobile shopping experience with clean design, smooth animations, and intuitive user interface for browsing and purchasing fashion items, electronics, and accessories.

## ✨ Features

### User Authentication
- **Login Screen** - Secure login with username and password
- **Sign Up Screen** - Create new account with user details
- **Password Visibility Toggle** - Show/hide password functionality
- **Authentication State Management** - Cubit-based state management

### Product Discovery
- **Discover Screen** - Browse products with category filters
- **Search Functionality** - Search for products across all categories
- **Category Filters** - Filter by:
  - All Products
  - Electronics
  - Jewelery
  - Men's Clothing
  - Women's Clothing
- **Filter Options** - Advanced filtering button for refined search
- **Product Grid** - Beautiful grid layout with product images and prices
- **Product Details** - Detailed product page with:
  - High-quality product images
  - Product name and description
  - Star ratings and review count
  - Price display
  - Add to cart functionality

### Shopping Cart
- **Cart Management** - Add/remove items with quantity control
- **Price Breakdown** - Display of:
  - Sub-total
  - VAT calculation
  - Shipping fee
  - Total amount
- **Checkout** - Proceed to checkout functionality
- **Delete Items** - Remove items from cart

### User Account
- **Account Dashboard** - Manage account settings with:
  - My Orders
  - My Details
  - Address Book
  - FAQs
  - Help Center
- **Logout** - Secure logout with confirmation dialog
- **Profile Management** - Update user information

### Additional Features
- **Loading Screen** - Animated loading indicator
- **Success Messages** - Toast notifications (e.g., "Sign Up Successfully")
- **Smooth Navigation** - Bottom navigation bar with 3 tabs (Home, Cart, Account)
- **Responsive Design** - Adapts to different screen sizes

## Result

### 📱 Screenshots

<table>
  <tr>
    <td><img src="https://github.com/MostafaEdrees11/Clothes_Store_Flutter_App/blob/main/result/screenshots/Splash.jpeg" width="250"/></td>
    <td><img src="https://github.com/MostafaEdrees11/Clothes_Store_Flutter_App/blob/main/result/screenshots/Loading.jpeg" width="250"/></td>
  </tr>
  <tr>
    <td align="center">Splash Screen</td>
    <td align="center">Loading Screen</td>
  </tr>
  <tr>
    <td><img src="https://github.com/MostafaEdrees11/Clothes_Store_Flutter_App/blob/main/result/screenshots/Login.jpeg" width="250"/></td>
    <td><img src="https://github.com/MostafaEdrees11/Clothes_Store_Flutter_App/blob/main/result/screenshots/SignUp.jpeg" width="250"/></td>
  </tr>
  <tr>
    <td align="center">Login</td>
    <td align="center">Sign Up</td>
  </tr>
  <tr>
    <td><img src="https://github.com/MostafaEdrees11/Clothes_Store_Flutter_App/blob/main/result/screenshots/Home.jpeg" width="250"/></td>
    <td><img src="https://github.com/MostafaEdrees11/Clothes_Store_Flutter_App/blob/main/result/screenshots/Details.jpeg" width="250"/></td>
  </tr>
  <tr>
    <td align="center">Discover Products</td>
    <td align="center">Product Details</td>
  </tr>
  <tr>
    <td><img src="https://github.com/MostafaEdrees11/Clothes_Store_Flutter_App/blob/main/result/screenshots/Cart.jpeg" width="250"/></td>
    <td><img src="https://github.com/MostafaEdrees11/Clothes_Store_Flutter_App/blob/main/result/screenshots/Profile.jpeg" width="250"/></td>
  </tr>
  <tr>
    <td align="center">Shopping Cart</td>
    <td align="center">Account</td>
  </tr>
  <tr>
    <td><img src="https://github.com/MostafaEdrees11/Clothes_Store_Flutter_App/blob/main/result/screenshots/LogoutPop.jpeg" width="250"/></td>
  </tr>
  <tr>
    <td align="center">Logout</td>
  </tr>
</table>

### Video


## 🎨 Design Features

- **Color Scheme**: Blue (#4A90E2) and White with coral accents
- **Modern UI**: Clean and minimalist design with card-based layouts
- **Custom Animations**: Smooth transitions and loading animations
- **Typography**: Clear hierarchy with readable fonts
- **Custom Widgets**: Reusable components throughout the app
- **Bottom Navigation**: Easy access to main sections

## 🛠️ Technologies Used

- **Flutter** - UI framework
- **Dart** - Programming language
- **Cubit** - State management (flutter_bloc)
- **Material Design** - Design system

## 📂 Project Structure

```
lib/
├── core/
│   ├── auth/
│   │   ├── login/
│   │   │   ├── auth_cubit.dart
│   │   │   └── auth_state.dart
│   │   └── signup/
│   │       ├── auth_cubit.dart
│   │       └── auth_state.dart
│   ├── cart/
│   ├── category/
│   ├── home/
│   ├── home_nav/
│   ├── logout/
│   ├── product_details/
│   ├── profile/
│   ├── Splash/
│   └── widgets/
│       ├── cart_item.dart
│       ├── counter.dart
│       ├── custom_password_field.dart
│       └── discover_item.dart
├── models/
│   ├── product_model.dart
│   └── user_model.dart
└── main.dart
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Android Studio / VS Code with Flutter extensions
- Android Emulator or iOS Simulator

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/MostafaEdrees11/Clothes_Store_Flutter_App.git
   ```

2. **Navigate to project directory**
   ```bash
   cd Clothes_Store_Flutter_App
   ```

3. **Install dependencies**
   ```bash
   flutter pub get
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

## 📱 Screens Overview

| Screen | Description |
|--------|-------------|
| **Welcome Screen** | Onboarding with app introduction and illustration |
| **Loading Screen** | Animated splash screen with app logo |
| **Login** | User authentication with username/password |
| **Sign Up** | New user registration |
| **Discover** | Product browsing with categories and search |
| **Product Details** | Detailed product information with reviews |
| **Cart** | Shopping cart with price breakdown |
| **Account** | User profile and settings management |

## 🎯 Key Highlights

- ✅ **State Management**: Clean architecture with Cubit pattern
- ✅ **Modular Design**: Feature-based folder structure
- ✅ **Reusable Widgets**: Custom components for consistency
- ✅ **Smooth Animations**: Engaging user experience
- ✅ **Responsive Layout**: Works on various screen sizes
- ✅ **Clean Code**: Well-organized and maintainable codebase

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 👤 Author

**Mostafa Edrees**

- GitHub: [@MostafaEdrees11](https://github.com/MostafaEdrees11)

## ⭐ Show your support

Give a ⭐️ if you like this project!

## 📝 Notes

- This is a Flutter UI implementation project
- State management implemented using Cubit (flutter_bloc)
- Clean architecture with feature-based structure
- No backend integration in this version

---

**Made with ❤️ using Flutter**