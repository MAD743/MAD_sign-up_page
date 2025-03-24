import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
<<<<<<< HEAD
import 'package:form_builder_validators/form_builder_validators.dart';
=======
import 'package:form_builder_validators/form_builder_validators.dart' as fv;
>>>>>>> 4644d42 (modified expected output in order to make display more fuctional)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup Form',
      debugShowCheckedModeBanner: false,
      home: const SignupPage(),
    );
  }
}

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Signup Page")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _formKey,
<<<<<<< HEAD
          child: Column(
            children: [
              FormBuilderTextField(
                name: 'name',
                decoration: const InputDecoration(labelText: 'Full Name'),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(2),
                ]),
              ),
              FormBuilderTextField(
                name: 'email',
                decoration: const InputDecoration(labelText: 'Email'),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ]),
              ),
              FormBuilderDateTimePicker(
                name: 'dob',
                inputType: InputType.date,
                decoration: const InputDecoration(labelText: 'Date of Birth'),
                lastDate: DateTime.now(),
                validator: FormBuilderValidators.required(),
              ),
              FormBuilderTextField(
                name: 'password',
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(8),
                  FormBuilderValidators.match(
                    RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]+$'),
                    errorText: 'Password must contain letters and numbers.',
                  ),
                ]),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.saveAndValidate() ?? false) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SuccessPage()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Fix the errors above')),
                    );
                  }
                },
                child: const Text("Submit"),
              ),
            ],
=======
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormBuilderTextField(
                  name: 'first_name',
                  decoration: const InputDecoration(labelText: 'First Name'),
                  validator: fv.FormBuilderValidators.compose([
                    fv.FormBuilderValidators.required(),
                    fv.FormBuilderValidators.minLength(2),
                  ]),
                ),
                const SizedBox(height: 16),

                FormBuilderTextField(
                  name: 'last_name',
                  decoration: const InputDecoration(labelText: 'Last Name'),
                  validator: fv.FormBuilderValidators.compose([
                    fv.FormBuilderValidators.required(),
                    fv.FormBuilderValidators.minLength(2),
                  ]),
                ),
                const SizedBox(height: 16),

                FormBuilderTextField(
                  name: 'email',
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: fv.FormBuilderValidators.compose([
                    fv.FormBuilderValidators.required(),
                    fv.FormBuilderValidators.email(),
                  ]),
                ),
                const SizedBox(height: 16),

                FormBuilderDateTimePicker(
                  name: 'dob',
                  inputType: InputType.date,
                  decoration: const InputDecoration(labelText: 'Date of Birth'),
                  lastDate: DateTime.now(),
                  validator: fv.FormBuilderValidators.required(),
                ),
                const SizedBox(height: 16),

                FormBuilderTextField(
                  name: 'contact',
                  decoration: const InputDecoration(labelText: 'Contact Number'),
                  keyboardType: TextInputType.phone,
                  validator: fv.FormBuilderValidators.compose([
                    fv.FormBuilderValidators.required(),
                    fv.FormBuilderValidators.match(
                      RegExp(r'^\d{10,15}$'),
                      errorText: 'Enter a valid phone number (10-15 digits)',
                    ),
                  ]),
                ),
                const SizedBox(height: 16),

                FormBuilderTextField(
                  name: 'password',
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'Password'),
                  validator: fv.FormBuilderValidators.compose([
                    fv.FormBuilderValidators.required(),
                    fv.FormBuilderValidators.minLength(8),
                    fv.FormBuilderValidators.match(
                      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]+$'),
                      errorText:
                          'Password must contain letters and numbers.',
                    ),
                  ]),
                ),
                const SizedBox(height: 24),

                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.saveAndValidate() ?? false) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SuccessPage()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Fix the errors above')),
                        );
                      }
                    },
                    child: const Text("Submit"),
                  ),
                ),
              ],
            ),
>>>>>>> 4644d42 (modified expected output in order to make display more fuctional)
          ),
        ),
      ),
    );
  }
}

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Success")),
      body: const Center(
        child: Text(
          "Signup Successful!",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
