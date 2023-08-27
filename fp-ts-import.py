#!/usr/bin/env python

expansions = {
    'f': 'import { pipe } from "fp-ts/function"',
    'ra': 'import * as RA from "fp-ts/ReadonlyArray"',
    'ord': 'import * as Ord from "fp-ts/Ord"',
    'e': 'import * as E from "fp-ts/Either"',
    'te': 'import * as TE from "fp-ts/TaskEither"',
    'rte': 'import * as RTE from "fp-ts/ReaderTaskEither"',
    'o': 'import * as O from "fp-ts/Option"',
    'rs': 'import * as RS from "fp-ts/ReadonlySet"',
    'sg': 'import * as SG from "fp-ts/Semigroup"',
    'm': 'import * as M from "fp-ts/Monoid"'
}

print("\n".join([expansions[s.strip().lower()] for s in input().split(" ") if s]))

