#pragma warning(push, 0)
#include <QtTest/QtTest>
#pragma warning(pop)

#include "srscodec.h"

class Base_UTest : public QObject
{
	Q_OBJECT

private slots:

	void toUpper();
};

void Base_UTest::toUpper()
{
	const QString& str = QString::fromLatin1( get_library_name() );
#ifdef __DEBUG__
	QCOMPARE( str.toUpper(), QString( "SRSCODECD" ) );
#else
	QCOMPARE( str.toUpper(), QString( "SRSCODEC" ) );
#endif
}

#pragma warning(push, 0)
QTEST_MAIN( Base_UTest )
#include "Base_UTest.moc"
#pragma warning(pop)