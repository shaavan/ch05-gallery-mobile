#include "PictureImageProvider.h"

#include "PictureModel.h"

PictureImageProvider::PictureImageProvider(PictureModel* pictureModel) :
    QQuickImageProvider(QQuickImageProvider::Pixmap),
    mPictureModel(pictureModel)
{
}

QPixmap PictureImageProvider::requestPixmap(const QString &id, QSize *size, const QSize &requestedSize)
{
    QStringList query = id.split('/');
    if(!mPictureModel || query.size() < 2) {
        return QPixmap();
    }

    int row = query[0].toInt();
    QString pictureSize = query[1];
}
