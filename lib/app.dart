// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// // Providers
// import 'providers/auth_provider.dart';
// import 'providers/company_provider.dart';
// import 'providers/customer_provider.dart';
// import 'providers/cylinder_provider.dart';
// import 'providers/advice_provider.dart';
// import 'providers/repair_provider.dart';
// import 'providers/filling_provider.dart';
// import 'providers/qc_provider.dart';
// import 'providers/status_provider.dart';
// import 'providers/serial_update_provider.dart';
// import 'providers/sync_provider.dart';
//
// // Screens
// import 'screens/splash/splash_screen.dart';
// import 'screens/auth/login_screen.dart';
// import 'screens/dashboard/dashboard_screen.dart';
// import 'screens/advice/advice_screen.dart';
// import 'screens/requisition/material_requisition_screen.dart';
// import 'screens/repair/repair_approval_screen.dart';
// import 'screens/repair/repair_completion_screen.dart';
// import 'screens/filling/filling_completion_screen.dart';
// import 'screens/qc/qc_approval_screen.dart';
// import 'screens/serial_update/serial_update_screen.dart';
// import 'screens/complain/complain_screen.dart';
// import 'screens/status/current_status_screen.dart';
// import 'screens/sync/sync_center_screen.dart';
//
// class IglApp extends StatelessWidget {
//   const IglApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => AuthProvider()),
//         ChangeNotifierProvider(create: (_) => CompanyProvider()..seedCompanies()),
//         ChangeNotifierProvider(create: (_) => CustomerProvider()),
//         ChangeNotifierProvider(create: (_) => CylinderProvider()),
//         ChangeNotifierProvider(create: (_) => AdviceProvider()),
//         ChangeNotifierProvider(create: (_) => RepairProvider()),
//         ChangeNotifierProvider(create: (_) => FillingProvider()),
//         ChangeNotifierProvider(create: (_) => QCProvider()),
//         ChangeNotifierProvider(create: (_) => StatusProvider()),
//         ChangeNotifierProvider(create: (_) => SerialUpdateProvider()),
//         ChangeNotifierProvider(create: (_) => SyncProvider()),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'IGL App',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//           scaffoldBackgroundColor: Colors.grey.shade100,
//           appBarTheme: const AppBarTheme(
//             backgroundColor: Colors.blue,
//             foregroundColor: Colors.white,
//           ),
//         ),
//         initialRoute: '/splash',
//         routes: {
//           '/splash': (_) => const SplashScreen(),
//           '/login': (_) => const LoginScreen(),
//           '/dashboard': (_) => const DashboardScreen(),
//           '/advice': (_) => const AdviceScreen(),
//           '/materialReq': (_) => const MaterialRequisitionScreen(),
//           '/repairApproval': (_) => const RepairApprovalScreen(),
//           '/repairCompletion': (_) => const RepairCompletionScreen(),
//           '/filling': (_) => const FillingCompletionScreen(),
//           '/qcApproval': (_) => const QCApprovalScreen(),
//           '/serialUpdate': (_) => const SerialUpdateScreen(),
//           '/complain': (_) => const ComplainScreen(),
//           '/currentStatus': (_) => const CurrentStatusScreen(),
//           '/sync': (_) => const SyncCenterScreen(),
//         },
//       ),
//     );
//   }
// }
