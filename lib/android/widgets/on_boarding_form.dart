import 'package:flutter/material.dart';

class OnBoardingForm extends StatelessWidget {
  const OnBoardingForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Username or Email"),
          const _Gap(),
          TextField(
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              fillColor: Colors.grey[200],
              filled: true,
              constraints: const BoxConstraints(
                maxHeight: 54,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const _Gap(),
          const Text("Password"),
          const _Gap(),
          TextField(
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.password),
              suffixIcon: const Icon(Icons.visibility),
              fillColor: Colors.grey[200],
              filled: true,
              constraints: const BoxConstraints(
                maxHeight: 54,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const _Gap(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(size.width - 36, 45),
              backgroundColor: Theme.of(context).primaryColor,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            child: const Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          const _Gap(),
          const _Gap(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width * 0.4,
                child: const Divider(),
              ),
              const Text("OR"),
              SizedBox(
                width: size.width * 0.4,
                child: const Divider(),
              ),
            ],
          ),
          const _Gap(),
          const _Gap(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(size.width - 36, 45),
              backgroundColor: Colors.white,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/google.png",
                  width: 24,
                ),
                const SizedBox(
                  width: 24,
                ),
                Text(
                  "Login with Google",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Gap extends StatelessWidget {
  const _Gap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 12,
    );
  }
}
