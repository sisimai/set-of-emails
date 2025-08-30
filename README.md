About "set-of-emails" repository
===================================================================================================
This repository hold bounce mail collections for developing Sisimai. Email files in this repository
are read from `make test` at go-sisimai, p5-sisimai and rb-sisimai.

| Directory                     | Description                                                     |
|-------------------------------|-----------------------------------------------------------------|
| mailbox/                      | Unix mbox files                                                 |
| maildir/                      | Email files                                                     |
|  - bsd/                       | A newline is LF                                                 |
|  - mac/                       | A newline is CR                                                 |
|  - dos/                       | A newline is CRLF                                               |
|  - err/                       | Divided email files of mailbox/mbox-0                           |
|  - not/                       | Is not a bounce mail                                            |
| to-be-debugged-becase/        | Email files for debugging                                       |
|  - reason-is-onhold/          | Reason is "onhold" in parsed results                            |
|  - reason-is-undefined/       | Reason is "undefined" in parsed results                         |
|  - sisimai-cannot-parse-yet/  | Emails could not be parsed by Sisimai                           |
|  - something-is-wrong/        | Sisimai can parse but something is wrong                        |
| to-be-parsed-for-test/        | Email files to be parsed for test                               |

See Also
===================================================================================================
* __Sisimai Project__ | [github.com/sisimai](https://github.com/sisimai)
* __libsisimai.org__ | [Sisimai: Mail Analyzing Interface](https://libsisimai.org/)
* __Perl Verson__ | [Perl version of Sisimai](https://github.com/sisimai/p5-sisimai)
* __Ruby verson__ | [Ruby version of Sisimai](https://github.com/sisimai/rb-sisimai)
* __Go Verson__ | [Go version of Sisimai](https://github.com/sisimai/go-sisimai)

Author
===================================================================================================
[@libsisimai](https://twitter.com/libsisimai)
[@azumakuniyuki](https://twitter.com/azumakuniyuki)

Copyright
===================================================================================================
Copyright (C) 2018-2025 azumakuniyuki, All Rights Reserved.

License
===================================================================================================
This software is distributed under The BSD 2-Clause License.

