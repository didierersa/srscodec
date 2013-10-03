#include <QtTest/QtTest>
#include "srscodec.h"

 class Base_UTest: public QObject
 {
     Q_OBJECT
 private slots:
     void toUpper();
 };

 void Base_UTest::toUpper()
 {
     const QString& str = QString::fromLatin1( get_library_name() );
     QCOMPARE(str.toUpper(), QString("SRSCODEC"));
 }

 QTEST_MAIN(Base_UTest)
 #include "Base_UTest.moc"

