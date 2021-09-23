import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/app.dart';
import 'package:kilo/bloc/authflow/authflow_bloc.dart';
import 'package:kilo/bloc/bio_bloc/bio_bloc.dart';
import 'package:kilo/bloc/bloc/demobloc_bloc.dart';
import 'package:kilo/bloc/category_bloc/catgeorybloc_bloc.dart';
import 'package:kilo/bloc/google_SignUp/google_signup_bloc.dart';
import 'package:kilo/bloc/google_signIn/google_signin_bloc.dart';
import 'package:kilo/bloc/logout_bloc/logout_bloc.dart';
import 'package:kilo/bloc/phoneVerify/phoneverify_bloc.dart';
import 'package:kilo/bloc/request_bloc/request_bloc.dart';
import 'package:kilo/bloc/responseToRqst/responsetorqst_bloc.dart';
import 'package:kilo/bloc/searchbloc/searchbloc_bloc.dart';
import 'package:kilo/bloc/updatePrice/updateprice_bloc.dart';
import 'package:kilo/bloc/updatecategory_bloc/updatecategory_bloc.dart';
import 'package:kilo/bloc/updatefee_bloc/updatefee_bloc.dart';
import 'package:kilo/bloc/uploadwork/uploadwork_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<GoogleSignUpBloc>(
        create: (BuildContext context) => GoogleSignUpBloc(),
      ),
      BlocProvider<AuthflowBloc>(
        create: (BuildContext context) => AuthflowBloc(),
      ),
      BlocProvider<PhoneverifyBloc>(
        create: (BuildContext context) => PhoneverifyBloc(),
      ),
      BlocProvider<GoogleSigninBloc>(
        create: (BuildContext context) => GoogleSigninBloc(),
      ),
      BlocProvider<CategoryBloc>(
        create: (BuildContext context) => CategoryBloc(),
      ),
      BlocProvider<LogoutBloc>(create: (BuildContext context) => LogoutBloc()),
      BlocProvider<SearchBloc>(create: (BuildContext context) => SearchBloc()),
      BlocProvider<BioBloc>(create: (BuildContext context) => BioBloc()),
      BlocProvider<UpdatecategoryBloc>(
          create: (BuildContext context) => UpdatecategoryBloc()),
      BlocProvider<UpdatefeeBloc>(
          create: (BuildContext context) => UpdatefeeBloc()),
      BlocProvider<RequestBloc>(
          create: (BuildContext context) => RequestBloc()),
      BlocProvider<UpdatepriceBloc>(
          create: (BuildContext context) => UpdatepriceBloc()),
      BlocProvider<ResponsetorqstBloc>(
          create: (BuildContext context) => ResponsetorqstBloc()),
      BlocProvider<UploadworkBloc>(
          create: (BuildContext context) => UploadworkBloc()),
      BlocProvider<DemoblocBloc>(
          create: (BuildContext context) => DemoblocBloc()),
    ],
    child: App(),
  ));
}
