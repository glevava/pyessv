# -*- coding: utf-8 -*-

"""
.. module:: utils_cv.py

   :copyright: @2013 Earth System Documentation (https://es-doc.org)
   :license: GPL / CeCILL
   :platform: Unix, Windows
   :synopsis: Exposes other test utility functions.

.. moduleauthor:: Earth System Documentation (ES-DOC) <dev@es-doc.org>

"""
import inspect
import os
import shutil

import pyessv as LIB
from tests.utils_assert import assert_objects



# Test authority.
TEST_AUTHORITY = None
TEST_AUTHORITY_NAME = u"test-authority"
TEST_AUTHORITY_DESCRIPTION = u"test-authority-description"
TEST_AUTHORITY_URL = u"https://github.com/ES-DOC/pyesssv-archive/{}".format(TEST_AUTHORITY_NAME)
TEST_AUTHORITY_ALTERNATIVE_NAME = u"test-authority-alternative-name"
TEST_AUTHORITY_ALTERNATIVE_URL = u"https://github.com/ES-DOC/pyesssv-archive/{}".format(TEST_AUTHORITY_NAME)

# Test scope.
TEST_SCOPE = None
TEST_SCOPE_NAME = u"test-scope"
TEST_SCOPE_DESCRIPTION = u"test-scope-description"
TEST_SCOPE_URL = u"{}/{}".format(TEST_AUTHORITY_URL, TEST_SCOPE_NAME)

# Test collection.
TEST_COLLECTION = None
TEST_COLLECTION_NAME = u"test-collection"
TEST_COLLECTION_DESCRIPTION = u"test-collection-description"
TEST_COLLECTION_URL = u"{}/{}".format(TEST_SCOPE_URL, TEST_COLLECTION_NAME)

# Test term.
TEST_TERM = None
TEST_TERM_NAME = u"test-term"
TEST_TERM_DESCRIPTION = u"test-term-description"
TEST_TERM_URL = u"{}/{}".format(TEST_COLLECTION_URL, TEST_TERM_NAME)
TEST_TERM_SYNONYMS = [u"test-term-synonym-1", u"test-term-synonym-2"]


def create_authority():
    """Creates & returns a test authority.

    """
    global TEST_AUTHORITY

    if TEST_AUTHORITY is None:
        TEST_AUTHORITY = LIB.create_authority(
            TEST_AUTHORITY_NAME,
            TEST_AUTHORITY_DESCRIPTION,
            TEST_AUTHORITY_URL
            )

    return TEST_AUTHORITY


def create_scope():
    """Creates & returns a test scope.

    """
    global TEST_SCOPE

    if TEST_SCOPE is None:
        TEST_SCOPE = LIB.create_scope(
            TEST_AUTHORITY or create_authority(),
            TEST_SCOPE_NAME,
            TEST_SCOPE_DESCRIPTION,
            TEST_SCOPE_URL
            )

    return TEST_SCOPE


def create_collection():
    """Creates & returns a test collection.

    """
    global TEST_COLLECTION

    if TEST_COLLECTION is None:
        TEST_COLLECTION = LIB.create_collection(
            TEST_SCOPE,
            TEST_COLLECTION_NAME,
            TEST_COLLECTION_DESCRIPTION,
            TEST_COLLECTION_URL
            )

    return TEST_COLLECTION


def create_term():
    """Creates & returns a test term.

    """
    global TEST_TERM

    if TEST_TERM is None:
        TEST_TERM = LIB.create_term(
            TEST_COLLECTION,
            TEST_TERM_NAME,
            TEST_TERM_DESCRIPTION,
            TEST_TERM_URL
            )
        TEST_TERM.synonyms = TEST_TERM_SYNONYMS

    return TEST_TERM


def init(func, desc=None):
    """Initializes a test function prior to be executed.

    """
    if desc is None:
        desc = inspect.getdoc(func)
    desc = desc.strip()
    if desc[-1] == ".":
        desc = desc[:-1]
    desc = desc[0].lower() + desc[1:]
    func.description = "pyesdoc-cv-tests: {}".format(desc)


def setup():
    """Performs setup functions and then creates a term prior to running a test.

    """
    teardown()
    create_authority()
    create_scope()
    create_collection()
    create_term()
    LIB.cache(TEST_AUTHORITY)


def teardown():
    """Performs teardown functions after running a test.

    """
    global TEST_AUTHORITY
    global TEST_SCOPE
    global TEST_COLLECTION
    global TEST_TERM

    LIB.uncache(TEST_AUTHORITY)

    TEST_AUTHORITY = None
    TEST_SCOPE = None
    TEST_COLLECTION = None
    TEST_TERM = None

    try:
        shutil.rmtree(os.path.join(LIB.DIR_ARCHIVE, TEST_AUTHORITY_NAME))
    except OSError:
        pass


def assert_terms(term1, term2):
    """Assers equality of 2 terms.

    :param Term term1: A term to be compared against another.
    :param Term term2: A term to be compared against another.

    """
    assert_objects(term1, term2, LIB.Term)
    assert _get_object_attribute_values(term1) == _get_object_attribute_values(term1)


def _get_object_attribute_values(obj):
    """Returns collection of object attribute values.

    """
    return [getattr(obj, k) for k in dir(obj) if k not in dir(obj.__class__)]