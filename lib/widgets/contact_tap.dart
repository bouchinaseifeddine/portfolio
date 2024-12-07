import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/functions/send_email.dart';
import 'package:portfolio/utils/functions/show_snackbar.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/gradient_container.dart';

class ContactTap extends StatefulWidget {
  const ContactTap({super.key});

  @override
  State<ContactTap> createState() => _ContactTapState();
}

class _ContactTapState extends State<ContactTap> {
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  void _submitForm() async {
    if (isLoading) return;

    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });
      try {
        final response = await sendEmail(
          email: _emailController.text,
          message: _messageController.text,
          name: _nameController.text,
        );

        showSnackBar(context, 'Oh Hey!', 'Email sent successfully!', true);
      } catch (e) {
        showSnackBar(
            context, 'Oh No!', 'Failed to send email! try again.', false);
      }
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.defaultSize),
        Text(
          'Feel free to reach out to me for collaboration, inquiries, or any questions you might have. Together, we can create something amazing!',
          style: AppStyles.styleLight15(context),
        ),
        SizedBox(height: SizeConfig.defaultSize! * 2),
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              width < 800
                  ? Column(
                      children: [
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          controller: _nameController,
                          decoration: const InputDecoration(
                            hintText: 'Full name',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: SizeConfig.defaultSize! * 1.5),
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          controller: _emailController,
                          decoration:
                              const InputDecoration(hintText: 'Email address'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                .hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                        )
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            controller: _nameController,
                            decoration: const InputDecoration(
                              hintText: 'Full name',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(width: SizeConfig.defaultSize! * 1.5),
                        Expanded(
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            controller: _emailController,
                            decoration: const InputDecoration(
                                hintText: 'Email address'),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                  .hasMatch(value)) {
                                return 'Please enter a valid email address';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
              SizedBox(height: SizeConfig.defaultSize! * 1.5),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                controller: _messageController,
                decoration: const InputDecoration(hintText: 'Your message'),
                maxLines: 5,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your message';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: _submitForm,
                child: GradientContainer(
                    padding: 16,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.solidPaperPlane,
                          color: Color(0xFF884EFD),
                          size: 18,
                        ),
                        SizedBox(width: SizeConfig.defaultSize!),
                        Text(
                          isLoading ? "Please wait.." : 'Send Message',
                          style: AppStyles.styleNormal15(context).copyWith(
                              color: const Color.fromARGB(255, 136, 78, 253),
                              fontSize: 16),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
