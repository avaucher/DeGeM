#include "ExpenseSummaryModel.h"
#include <QtGui/QGuiApplication>
#include <QtQuick/QQuickView>
#include <QtCore/QUrl>

int main(int argc, char* argv[]) {
  QGuiApplication app(argc, argv);
  qmlRegisterType<DeGeM::ExpenseSummaryModel>("Local", 1, 0, "ExpenseSummaryModel");

  QQuickView view;
  view.setResizeMode(QQuickView::SizeRootObjectToView);
  view.setSource(QUrl("qrc:/qml/app.qml"));
  view.show();
  return app.exec();
}
