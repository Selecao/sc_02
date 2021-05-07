import 'dart:async';

import 'package:sc_02/models/profile.dart';

class UsersRepository {
  final Profile _user01 = Profile(
    photoUrl:
        'https://s3-alpha-sig.figma.com/img/a06f/7df5/1d9dc26ac664fd73d1bb9eb436b65ba0?Expires=1620604800&Signature=cgXPP89~kgo6EGRS3AbYIgo4Dhpew5-lzBYSv8ztFtHhUsF2A1B-QYGZzHAQhja1zI27ZbiAiQN8eEDNMqA1Zq3tusO-XWI4ywTogZbG0ePiG7dF409cVfFAbYX2V7lK8KenL2w4PrP6I3bQdx7NzXFoqkKDXUduNbQYYGFjlfX5iE-xZRX7k2aClEZkpICRoUhjPw6gi8iu5TZK05nKjwE8MoIQ0GZc8Mkblf8RpAdgEmgJu6nzCeJMqf32WIk9GJ~v82SQcRwLrTSGsbHyLvfn3nXTKagPvlqSm7BwJVDWkLkCT2yBoU5jUNDq10KYbQIsVYEtJr4pj5Dda66v9A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    name: 'Tiana Rosser',
    position: 'Developer',
  );

  final Profile _user02 = Profile(
    photoUrl:
        'https://s3-alpha-sig.figma.com/img/5d35/b601/8fefa11ac9c8c2bc16b3515e3bbe8d0e?Expires=1620604800&Signature=cUPaCDrz5B6Krogwvl-nNuDhMFu0jYk3YhUjDkvVMWHooRTNAHoESHc0VW6mtK6X51dT2c3cvERtSH6TAJipHnjJTTqqppuWbHFkPGDRD9VlSke5ZHUEPcOvQM-c2VcgrxT1rd3R7ezTUYfH9gwUcO4ZyahlrGzKU8iLudO7aNKKzRvzxCZJT7KAqP4Py0wkbt9~NnVbAX8Ee0UzfgUR6JQezfIM6wk5k9wHfKfsYwZ2aHBnyH-Zycl1FIAn4a2Dd6rMr3Nq687uehA73ktWwrFJGxW7DjHM4w9hMpjevEmfq7Z8daG6Fyfxd20r6FTS3M7uCfpqti3al3GOexFmxw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    name: 'Corey George',
    position: 'Developer',
  );
  final Profile _user03 = Profile(
    photoUrl:
        'https://s3-alpha-sig.figma.com/img/1dcf/b665/49d8f77f73ab8e5a3187e5e97a4d5b58?Expires=1620604800&Signature=TvmejK8BvUwfbJrlX4yDl3QCAb8k3eIoqompO86V2Gd7IcpFYtQBBSxcvGCMicft~YQpzzGq5-WgEcolSKaGLFuG05eqBQG3Uajo9Rt8su7ZSY0X1FfHZ9Fu8PtQeTEQlOQagHglZGY1EGZVcZrxG2BIt9-osXgU9SAxQ0nEOouXqHl90tegsfVQCVTVZPfgzsUIXioohs5BYq0TeMv-8HRm9rTZYBA5peOBT6Vp71BtI-CioAzqRCQbLMxNVUBfAwuoqm5uoDXYPJLRxAsf62ulJt~ldWZXI4zj7pkYav060neFxvn2OWBpwBvx14noP8MS6p8l5n4p2prvLQFaJw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    name: 'Ahmad Vetrovs',
    position: 'Developer',
  );
  final Profile _user04 = Profile(
    photoUrl:
        'https://s3-alpha-sig.figma.com/img/6541/8096/4d2677d841c8815e0965b100cbb81ae1?Expires=1620604800&Signature=Da5moW-lq6hijFJSECWbCSqgNN9ehFcGSM3-j65aBAtwOy-qevrvhGd0qqF0bc5CsQ4-VvXVuSy9P2bvwpk8oTnaGphlcpoVNrx3Xebebvb-QzAoFGFHzGLE8Va3PtvzjpDgmwcZqyHL8hLW8LMUhoo0FCyExx8rIe6S-DWUZovtjqszNX6oPr9SA3JXz6YB-FVuFouyKVBtsusvGj2gN~dLzfWcR0kKMDFYOgeoycrxUmDCrU8OXlSiobOn7PWLAQaql3ekbGG~Yrz69MZkkjIxgSTxNRf89DfTLAHvge5dyIzmGj~AHiM2Yzoh-lJEKjMaKfE1fF8SGS0scqR5nQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    name: 'Cristofer Workman',
    position: 'Developer',
  );
  final Profile _user05 = Profile(
    photoUrl:
        'https://s3-alpha-sig.figma.com/img/3439/f222/a2802a5c7f50dfb8284561fe948260ca?Expires=1620604800&Signature=C3AtVrIkasXHoQO2x-6sSHRNB5G4V3T21x3zPxYGKh9uo8cCGoX8g9RwgHSmFh07vdgwmbVJsfL5foNQ739XLU0vqEyo7cyA1S8Hwi5AyF6pC6GQW9w-yLO6LjOyCNE9cLdHU5Y339fy7D-KF6ZAWFcRus18ljX2LnWLEd1Z-hCeicRMFD4zL~oAnVCYbr8kirbZ6geQkVS-G~1z1z6nuHX8p60S1LdivVoHxFuY7a~V7gmY7g7j4yu5KUlkI5DLG87tlkaS-1Z2xNQUZpFJxEDvmZO5jO863EwdjCMM7Q7jmWFbGgiKIb72oJfYuprYjwsO2xA0n7WRcIkRdqX1~g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    name: 'Tiana Korsgaard',
    position: 'Developer',
  );

  List<Profile> getUsers() => [_user02, _user03, _user04, _user05];

  Profile getCurrentUser() => _user01;
}
